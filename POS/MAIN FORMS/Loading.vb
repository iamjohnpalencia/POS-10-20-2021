﻿Imports System.Net
Imports System.Threading
Imports MySql.Data.MySqlClient
Public Class Loading
    Inherits Form
    Dim strHostName As String
    Dim strIPAddress As String
    Dim RowsReturned As Integer
    Dim thread As Thread
    Dim IfItsIstDayOfTheMonth As Boolean
    Dim IfInternetIsAvailable As Boolean
    Dim IfNeedsToReset As Boolean = False
    Declare Auto Function SendMessage Lib "user32.dll" (ByVal hWnd As IntPtr, ByVal msg As Integer, ByVal wParam As Integer, ByVal lParam As Integer) As Integer
    Enum ProgressBarColor
        Green = &H1
        Red = &H2
        Yellow = &H3
    End Enum
    Private Shared Sub ChangeProgBarColor(ByVal ProgressBar_Name As System.Windows.Forms.ProgressBar, ByVal ProgressBar_Color As ProgressBarColor)
        SendMessage(ProgressBar_Name.Handle, &H410, ProgressBar_Color, 0)
    End Sub
    Dim if1stdayofthemonth
    Private Sub Loadme()
        Try
            LabelVersion.Text = My.Settings.Version
            LabelFOOTER.Text = My.Settings.Footer
            CheckForIllegalCrossThreadCalls = False
            Label1.Text = "Initializing component..."
            strHostName = Dns.GetHostName()
            BackgroundWorker1.WorkerSupportsCancellation = True
            BackgroundWorker1.WorkerReportsProgress = True
            BackgroundWorker1.RunWorkerAsync()
        Catch ex As Exception
            MsgBox(ex.ToString)
            SendErrorReport(ex.ToString)
        End Try
    End Sub
    Private Sub Load2_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Try
            ChangeProgBarColor(ProgressBar1, ProgressBarColor.Yellow)
            Loadme()
        Catch ex As Exception
            MsgBox(ex.ToString)
            SendErrorReport(ex.ToString)
        End Try
    End Sub
    Dim threadList As List(Of Thread) = New List(Of Thread)

    Private Sub BackgroundWorker1_DoWork(sender As Object, e As System.ComponentModel.DoWorkEventArgs) Handles BackgroundWorker1.DoWork
        Try
            For i = 0 To 10
                BackgroundWorker1.ReportProgress(i)
                Thread.Sleep(50)
                If i = 0 Then
                    Label1.Text = "Checking local connection..."
                    thread = New Thread(AddressOf LoadLocalConnection)
                    thread.Start()
                    threadList.Add(thread)
                End If
            Next
            For Each t In threadList
                t.Join()
            Next
            For i = 10 To 100
                BackgroundWorker1.ReportProgress(i)
                Thread.Sleep(50)
                If i = 10 Then
                    If ValidLocalConnection Then
                        Label1.Text = "Getting information..."
                        IfConnectionIsConfigured = True
                        ValidDatabaseLocalConnection = True
                        thread = New Thread(AddressOf LoadMasterList)
                        thread.Start()
                        threadList.Add(thread)

                        thread = New Thread(AddressOf FillScript)
                        thread.Start()
                        threadList.Add(thread)
                        For Each t In threadList
                            t.Join()
                        Next
                    Else
                        IfConnectionIsConfigured = False
                        Label1.Text = "Please Setup Connection in Configuration Manager..."
                    End If
                End If
                If i = 25 Then
                    If ValidDatabaseLocalConnection Then
                        Label1.Text = "Checking for updates..."
                    End If
                End If
                If i = 50 Then
                    If CheckForInternetConnection() Then
                        IfInternetIsAvailable = True
                        Label1.Text = "Connecting to cloud server..."
                        If ValidDatabaseLocalConnection Then
                            thread = New Thread(AddressOf ServerCloudCon)
                            thread.Start()
                            threadList.Add(thread)
                            For Each t In threadList
                                t.Join()
                            Next
                        End If
                        If ValidCloudConnection Then
                            thread = New Thread(AddressOf RunScript)
                            thread.Start()
                            threadList.Add(thread)

                            For Each t In threadList
                                t.Join()
                            Next
                        End If
                    Else
                        IfInternetIsAvailable = False
                        Label1.Text = "No Internet Connection..."
                    End If
                End If
                If i = 65 Then
                    If ValidDatabaseLocalConnection Then
                        thread = New Thread(AddressOf LoadSettings)
                        thread.Start()
                        threadList.Add(thread)
                    End If
                End If
                If i = 80 Then
                    If IfConnectionIsConfigured Then
                        If AutoInventoryReset Then
                            If CheckIfNeedToReset() Then
                                IfNeedsToReset = True
                            Else
                                IfNeedsToReset = False
                            End If
                        End If
                    End If
                End If
                If i = 95 Then
                    Label1.Text = "Loading..."
                End If
            Next
            For Each t In threadList
                t.Join()
            Next
            If BackgroundWorker1.CancellationPending = True Then
                e.Cancel = True
            End If
        Catch ex As Exception
            MsgBox(ex.ToString)
            SendErrorReport(ex.ToString)
        End Try
    End Sub
    Private Sub LoadSettings()
        Try
            If LocalConnectionIsOnOrValid = True Then
                Dim sql = "SELECT A_Export_Path, A_Tax, A_SIFormat, A_SIBeg, A_Terminal_No, A_ZeroRated, S_Zreading, S_Batter, S_Brownie_Mix , S_Upgrade_Price_Add , S_BackupInterval, S_BackupDate , S_Update_Version , P_Footer_Info , S_logo , S_Layout , printreceipt , reprintreceipt , printxzread , printreturns, autoresetinv, S_Waffle_Bag, S_Packets, printcount, Dev_Company_Name FROM loc_settings WHERE settings_id = 1"
                Dim cmd As MySqlCommand = New MySqlCommand(sql, LocalhostConn())
                Dim da As MySqlDataAdapter = New MySqlDataAdapter(cmd)
                Dim dt As DataTable = New DataTable
                da.Fill(dt)
                For Each row As DataRow In dt.Rows
                    If row("A_Export_Path") <> "" Then
                        If row("A_Tax") <> "" Then
                            If row("A_SIFormat") <> "" Then
                                If row("A_Terminal_No") <> "" Then
                                    If row("A_ZeroRated") <> "" Then
                                        If row("S_Zreading") <> "" Then
                                            S_ExportPath = ConvertB64ToString(row("A_Export_Path"))
                                            S_Tax = row("A_Tax")
                                            S_SIFormat = row("A_SIFormat")
                                            S_SIBeg = row("A_SIBeg")
                                            S_Terminal_No = row("A_Terminal_No")
                                            S_ZeroRated = row("A_ZeroRated")
                                            S_Zreading = row("S_Zreading")
                                            S_Batter = row("S_Batter")
                                            S_Brownie_Mix = row("S_Brownie_Mix")
                                            S_Upgrade_Price = row("S_Upgrade_Price_Add")
                                            S_Backup_Interval = row("S_BackupInterval")
                                            S_Backup_Date = row("S_BackupDate")
                                            S_Logo = row("S_logo")
                                            S_Layout = row("S_Layout")
                                            S_Print = row("printreceipt")
                                            S_Reprint = row("reprintreceipt")
                                            S_Print_XZRead = row("printxzread")
                                            S_Print_Returns = row("printreturns")
                                            S_Dev_Comp_Name = row("Dev_Company_Name")
                                            My.Settings.Footer = row("P_Footer_Info")
                                            My.Settings.Version = row("S_Update_Version")
                                            My.Settings.Save()
                                            LabelVersion.Text = row("S_Update_Version")
                                            LabelFOOTER.Text = row("P_Footer_Info")
                                            If row("autoresetinv") = "" Then
                                                AutoInventoryReset = False
                                            ElseIf row("autoresetinv") = "0" Then
                                                AutoInventoryReset = False
                                            ElseIf row("autoresetinv") = "1" Then
                                                AutoInventoryReset = False
                                            End If
                                            S_Waffle_Bag = row("S_Waffle_Bag")
                                            S_Packets = row("S_Packets")
                                            S_PrintCount = row("printcount")
                                        End If
                                    End If
                                End If
                            End If
                        End If
                    End If
                Next
            End If
        Catch ex As Exception
            MsgBox(ex.ToString)
            SendErrorReport(ex.ToString)
        End Try
    End Sub
    Private Sub LoadMasterList()
        Try
            If LocalConnectionIsOnOrValid = True Then
                sql = "SELECT * FROM admin_masterlist WHERE masterlist_id = 1"
                Dim cmd As MySqlCommand = New MySqlCommand(sql, LocalhostConn)
                Dim da As MySqlDataAdapter = New MySqlDataAdapter(cmd)
                Dim dt As DataTable = New DataTable
                da.Fill(dt)
                If dt.Rows.Count > 0 Then
                    RowsReturned = 1
                    ClientGuid = dt(0)(4).ToString
                    ClientProductKey = dt(0)(5).ToString
                    ClientStoreID = dt(0)(9).ToString
                Else
                    RowsReturned = 0
                End If
            Else
                Label1.Text = "Cannot connect to local server..."
            End If
        Catch ex As Exception
            MsgBox(ex.ToString)
            SendErrorReport(ex.ToString)
        End Try
    End Sub
    Private Sub BackgroundWorker1_ProgressChanged(sender As Object, e As System.ComponentModel.ProgressChangedEventArgs) Handles BackgroundWorker1.ProgressChanged
        ProgressBar1.Value = e.ProgressPercentage
        Label2.Text = e.ProgressPercentage
    End Sub
    Private Sub BackgroundWorker1_RunWorkerCompleted(sender As Object, e As System.ComponentModel.RunWorkerCompletedEventArgs) Handles BackgroundWorker1.RunWorkerCompleted
        Try
            If IfConnectionIsConfigured = True Then
                If RowsReturned = 1 Then
                    If IfInternetIsAvailable = True Then
                        If IfNeedsToReset = True Then
                            BackgroundWorker2.WorkerSupportsCancellation = True
                            BackgroundWorker2.WorkerReportsProgress = True
                            BackgroundWorker2.RunWorkerAsync()
                        Else
                            If S_Layout = "" Then
                                ChooseLayout.Show()
                                Close()
                            Else
                                GetLocalPosData()
                            End If
                        End If
                    Else
                        If IfNeedsToReset = True Then
                            BackgroundWorker2.WorkerSupportsCancellation = True
                            BackgroundWorker2.WorkerReportsProgress = True
                            BackgroundWorker2.RunWorkerAsync()
                        Else
                            NoInternetConnection()
                        End If
                    End If
                Else
                    NotYetActivated()
                End If
            Else
                ConnectionIsClose()
            End If
        Catch ex As Exception
            MsgBox(ex.ToString)
            SendErrorReport(ex.ToString)
        End Try
    End Sub
    Private Sub BackgroundWorker2_DoWork(sender As Object, e As System.ComponentModel.DoWorkEventArgs) Handles BackgroundWorker2.DoWork
        Try
            ProgressBar1.Value = 0
            thread = New Thread(AddressOf Temptinventory)
            thread.Start()
            threadList.Add(thread)
            thread = New Thread(AddressOf ResetStocks)
            thread.Start()
            threadList.Add(thread)
            For i = 0 To 100
                BackgroundWorker2.ReportProgress(i)
                Thread.Sleep(50)
                If i = 0 Then
                    Label1.Text = "Performing inventory reset."
                ElseIf i = 20 Then
                    Label1.Text = "Performing inventory reset.."
                ElseIf i = 40 Then
                    Label1.Text = "Performing inventory reset..."
                ElseIf i = 60 Then
                    Label1.Text = "Performing inventory reset."
                ElseIf i = 80 Then
                    Label1.Text = "Performing inventory reset.."
                ElseIf i = 100 Then
                    Label1.Text = "Performing inventory reset..."
                End If
            Next

            For Each t In threadList
                t.Join()
            Next
            If BackgroundWorker1.CancellationPending = True Then
                e.Cancel = True
            End If
        Catch ex As Exception
            MsgBox(ex.ToString)
            SendErrorReport(ex.ToString)
        End Try
    End Sub
    '===========================================================================================
    Private Sub NotYetActivated()
        Try
            ChangeProgBarColor(ProgressBar1, ProgressBarColor.Yellow)
            Dim result As Integer = MessageBox.Show("Your POS system is not yet activated. Would you like to activate the software now ?", "Activation", MessageBoxButtons.YesNo, MessageBoxIcon.Question)
            If result = DialogResult.Yes Then
                Dispose()
                ConfigManager.Show()
            Else
                Application.Exit()
            End If
        Catch ex As Exception
            MsgBox(ex.ToString)
            SendErrorReport(ex.ToString)
        End Try
    End Sub
    Private Sub ConnectionIsClose()
        Try
            Dim msg2 As Integer = MessageBox.Show("Would you like to setup server configuration?", "Setup", MessageBoxButtons.YesNo, MessageBoxIcon.Information)
            If msg2 = DialogResult.Yes Then
                ConfigManager.Show()
                Close()
            ElseIf msg2 = DialogResult.No Then
                Application.Exit()
            End If
        Catch ex As Exception
            MsgBox(ex.ToString)
            SendErrorReport(ex.ToString)
        End Try
    End Sub
    Private Sub NoInternetConnection()
        Try
            Dim msg As Integer = MessageBox.Show("No internet connection found, Would you like to continue ?", "No internet connection", MessageBoxButtons.YesNo, MessageBoxIcon.Information)
            If msg = DialogResult.Yes Then
                If S_Layout = "" Then
                    ChooseLayout.Show()
                    Close()
                Else
                    GetLocalPosData()
                End If
            ElseIf msg = DialogResult.No Then
                Application.Exit()
            End If
        Catch ex As Exception
            MsgBox(ex.ToString)
            SendErrorReport(ex.ToString)
        End Try
    End Sub
    Private Sub GetLocalPosData()
        Try
            Dim sql = "SELECT * FROM admin_outlets WHERE user_guid = '" & ClientGuid & "' AND store_id = " & ClientStoreID & ";"
            Dim cmd As MySqlCommand = New MySqlCommand(sql, LocalhostConn)
            Dim dr As MySqlDataReader = cmd.ExecuteReader()
            While dr.Read()
                ClientBrand = dr("brand_name")
                ClientLocation = dr("location_name")
                ClientPostalCode = dr("postal_code")
                ClientAddress = dr("address")
                ClientBrgy = dr("Barangay")
                ClientMunicipality = dr("municipality")
                ClientProvince = dr("province")
                ClientTin = dr("tin_no")
                ClientTel = dr("tel_no")
                ClientStorename = dr("store_name")
                ClientMIN = dr("MIN")
                ClientMSN = dr("MSN")
                ClientPTUN = dr("PTUN")
                getmunicipality = dr("municipality_name")
                getprovince = dr("province_name")
            End While
            cmd.Dispose()
            Dispose()
            Login.Show()
            Login.Focus()
            Login.txtusername.Focus()
        Catch ex As Exception
            MsgBox(ex.ToString)
            SendErrorReport(ex.ToString)
        End Try
    End Sub
    Private Sub Temptinventory()
        Try
            sql = "INSERT INTO loc_inv_temp_data (`store_id`, `formula_id`, `product_ingredients`, `sku`, `stock_primary`, `stock_secondary`, `stock_no_of_servings`, `stock_status`, `critical_limit`, `guid`, `created_at`)  SELECT `store_id`, `formula_id`, `product_ingredients`, `sku`, `stock_primary`, `stock_secondary`, `stock_no_of_servings`, `stock_status`, `critical_limit`, `guid` ,(SELECT date_add(date_add(LAST_DAY(NOW()),interval 1 DAY),interval -1 MONTH) AS first_day) FROM loc_pos_inventory"
            cmd = New MySqlCommand
            With cmd
                .CommandText = sql
                .Connection = LocalhostConn()
                .ExecuteNonQuery()
            End With
        Catch ex As Exception
            MsgBox(ex.ToString)
            SendErrorReport(ex.ToString)
        End Try
    End Sub
    Private Sub ResetStocks()
        Try
            sql = "UPDATE `loc_pos_inventory` SET `stock_primary`= 0,`stock_secondary`= 0"
            cmd = New MySqlCommand
            With cmd
                .CommandText = sql
                .Connection = LocalhostConn()
                .ExecuteNonQuery()
            End With
        Catch ex As Exception
            MsgBox(ex.ToString)
            SendErrorReport(ex.ToString)
        End Try
    End Sub
    Private Sub BackgroundWorker2_ProgressChanged(sender As Object, e As System.ComponentModel.ProgressChangedEventArgs) Handles BackgroundWorker2.ProgressChanged
        ProgressBar1.Value = e.ProgressPercentage
        Label2.Text = e.ProgressPercentage
    End Sub
    Private Sub BackgroundWorker2_RunWorkerCompleted(sender As Object, e As System.ComponentModel.RunWorkerCompletedEventArgs) Handles BackgroundWorker2.RunWorkerCompleted
        If S_Layout = "" Then
            ChooseLayout.Show()
            Close()
        Else
            GetLocalPosData()
        End If
        Dispose()
        Login.Show()
        Login.Focus()
        Login.txtusername.Focus()
    End Sub
#Region "Script Runner"
    Private Sub FillScript()
        Try
            GLOBAL_SELECT_ALL_FUNCTION("loc_script_runner", "script_id", DataGridViewScript)
        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub
    Private Sub RunScript()
        Try
            Dim ConnectionLocal As MySqlConnection = LocalhostConn()
            Dim ConnectionCloud As MySqlConnection = ServerCloudCon()
            Dim Ids = ""
            For i As Integer = 0 To DataGridViewScript.Rows.Count - 1 Step +1
                Ids += DataGridViewScript.Rows(i).Cells(0).Value.ToString & ","
            Next
            Ids = Ids.TrimEnd(CChar(","))
            If DataGridViewScript.Rows.Count > 0 Then
                Dim sql = "SELECT * FROM admin_script_runner WHERE script_id NOT IN (" & Ids & ")"
                Dim cmd As MySqlCommand = New MySqlCommand(sql, ServerCloudCon)
                Dim da As MySqlDataAdapter = New MySqlDataAdapter(cmd)
                Dim dt As DataTable = New DataTable
                da.Fill(dt)
                For Each row As DataRow In dt.Rows
                    Dim query = "" & row("script_command") & ""
                    Console.Write(query)
                    cmd = New MySqlCommand(query, ConnectionLocal)
                    cmd.ExecuteNonQuery()
                    query = "INSERT INTO loc_script_runner (script_command, active) VALUES ('" & row("script_id") & "', " & row("active") & ")"
                    cmd = New MySqlCommand(query, ConnectionLocal)
                    cmd.ExecuteNonQuery()
                    GLOBAL_SYSTEM_LOGS("ALTER", "Store ID: " & ClientStoreID & ", Script ID: " & row("script_id"))
                Next
            Else
                Dim sql = "SELECT * FROM admin_script_runner"
                Dim cmd As MySqlCommand = New MySqlCommand(sql, ServerCloudCon)
                Dim da As MySqlDataAdapter = New MySqlDataAdapter(cmd)
                Dim dt As DataTable = New DataTable
                da.Fill(dt)
                For Each row As DataRow In dt.Rows
                    Dim query = "" & row("script_command") & ""
                    cmd = New MySqlCommand(query, ConnectionLocal)
                    cmd.ExecuteNonQuery()
                    query = "INSERT INTO loc_script_runner (script_command, active) VALUES ('" & row("script_id") & "', " & row("active") & ")"
                    cmd = New MySqlCommand(query, ConnectionLocal)
                    cmd.ExecuteNonQuery()
                    GLOBAL_SYSTEM_LOGS("ALTER", "Store ID: " & ClientStoreID & ", Script ID: " & row("script_id"))
                Next
            End If
        Catch ex As Exception
            MsgBox(ex.ToString)
            SendErrorReport(ex.ToString)
        End Try
    End Sub
#End Region
End Class
