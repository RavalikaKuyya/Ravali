<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task1.aspx.cs" Inherits="Design.task1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <style>
        .danger {
            border-color: #f44336;
            color: red
        }

            .danger:hover {
                background: #f44336;
                color: white;
            }
    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <h1> Time Off Request</h1>

        </div>
        <div class="container">
            <asp:Button ID="btn1" class="btn danger" runat="server" Text="Add" OnClick="btn1_Click"/>
        </div>
        <br />
        <br />
        <div class="row">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="FullName" HeaderText="FullName" SortExpression="FullName" />
                    <asp:BoundField DataField="ReasonForLeave" HeaderText="ReasonForLeave" SortExpression="ReasonForLeave" />
                    <asp:BoundField DataField="StartDate" HeaderText="StartDate" SortExpression="StartDate"  />
                    <asp:BoundField DataField="EndDate" HeaderText="EndDate" SortExpression="EndDate"  />
                    <asp:BoundField DataField="LeaveAproove" HeaderText="LeaveAproove" SortExpression="LeaveAproove" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:RavalikaRajConnectionString %>" DeleteCommand="DELETE FROM [empdetail] WHERE [id] = @original_id AND (([FullName] = @original_FullName) OR ([FullName] IS NULL AND @original_FullName IS NULL)) AND (([ReasonForLeave] = @original_ReasonForLeave) OR ([ReasonForLeave] IS NULL AND @original_ReasonForLeave IS NULL)) AND (([StartDate] = @original_StartDate) OR ([StartDate] IS NULL AND @original_StartDate IS NULL)) AND (([EndDate] = @original_EndDate) OR ([EndDate] IS NULL AND @original_EndDate IS NULL)) AND (([LeaveAproove] = @original_LeaveAproove) OR ([LeaveAproove] IS NULL AND @original_LeaveAproove IS NULL))" InsertCommand="INSERT INTO [empdetail] ([FullName], [ReasonForLeave], [StartDate], [EndDate], [LeaveAproove]) VALUES (@FullName, @ReasonForLeave, @StartDate, @EndDate, @LeaveAproove)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [empdetail]" UpdateCommand="UPDATE [empdetail] SET [FullName] = @FullName, [ReasonForLeave] = @ReasonForLeave, [StartDate] = @StartDate, [EndDate] = @EndDate, [LeaveAproove] = @LeaveAproove WHERE [id] = @original_id AND (([FullName] = @original_FullName) OR ([FullName] IS NULL AND @original_FullName IS NULL)) AND (([ReasonForLeave] = @original_ReasonForLeave) OR ([ReasonForLeave] IS NULL AND @original_ReasonForLeave IS NULL)) AND (([StartDate] = @original_StartDate) OR ([StartDate] IS NULL AND @original_StartDate IS NULL)) AND (([EndDate] = @original_EndDate) OR ([EndDate] IS NULL AND @original_EndDate IS NULL)) AND (([LeaveAproove] = @original_LeaveAproove) OR ([LeaveAproove] IS NULL AND @original_LeaveAproove IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_FullName" Type="String" />
                    <asp:Parameter Name="original_ReasonForLeave" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_StartDate" />
                    <asp:Parameter DbType="Date" Name="original_EndDate" />
                    <asp:Parameter Name="original_LeaveAproove" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FullName" Type="String" />
                    <asp:Parameter Name="ReasonForLeave" Type="String" />
                    <asp:Parameter DbType="Date" Name="StartDate" />
                    <asp:Parameter DbType="Date" Name="EndDate" />
                    <asp:Parameter Name="LeaveAproove" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FullName" Type="String" />
                    <asp:Parameter Name="ReasonForLeave" Type="String" />
                    <asp:Parameter DbType="Date" Name="StartDate" />
                    <asp:Parameter DbType="Date" Name="EndDate" />
                    <asp:Parameter Name="LeaveAproove" Type="String" />
                    <asp:Parameter Name="original_id" Type="Int32" />
                    <asp:Parameter Name="original_FullName" Type="String" />
                    <asp:Parameter Name="original_ReasonForLeave" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_StartDate" />
                    <asp:Parameter DbType="Date" Name="original_EndDate" />
                    <asp:Parameter Name="original_LeaveAproove" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
