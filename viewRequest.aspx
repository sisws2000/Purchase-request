<%@ Page Title="" Language="C#" MasterPageFile="~/ProjectWithMasterPageCS/purchaseOrder.master" AutoEventWireup="true" CodeFile="viewRequest.aspx.cs" Inherits="ProjectWithMasterPageCS_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">

    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="FirstName" DataValueField="RequesterID" Height="25px" Width="135px">
    </asp:DropDownList>
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PurchaseRequestConnectionString %>" SelectCommand="SELECT [RequesterID], [FirstName] FROM [Requesters]"></asp:SqlDataSource>
    <br />

    <div class="catalogGridView">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="RequestID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="1214px">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="RequestID" HeaderText="RequestID" InsertVisible="False" ReadOnly="True" SortExpression="RequestID" />
            <asp:BoundField DataField="ShortDescription" HeaderText="ShortDescription" SortExpression="ShortDescription" />
            <asp:BoundField DataField="Justification" HeaderText="Justification" SortExpression="Justification" />
            <asp:BoundField DataField="DateNeeded" HeaderText="DateNeeded" SortExpression="DateNeeded" />
            <asp:BoundField DataField="RequesterID" HeaderText="RequesterID" SortExpression="RequesterID" />
            <asp:BoundField DataField="DeliveryMode" HeaderText="DeliveryMode" SortExpression="DeliveryMode" />
            <asp:BoundField DataField="DocumentsAttached" HeaderText="DocumentsAttached" SortExpression="DocumentsAttached" />
            <asp:BoundField DataField="VendorID" HeaderText="VendorID" SortExpression="VendorID" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />
    </asp:GridView>
        </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PurchaseRequestConnectionString %>" SelectCommand="SELECT * FROM [Requests] WHERE ([RequesterID] = @RequesterID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="RequesterID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

</asp:Content>

