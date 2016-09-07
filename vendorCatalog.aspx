<%@ Page Title="" Language="C#" MasterPageFile="~/ProjectWithMasterPageCS/purchaseOrder.master" AutoEventWireup="true" CodeFile="vendorCatalog.aspx.cs" Inherits="ProjectWithMasterPageCS_Default" %>

<script runat="server">

    protected void vendorCatalogGridView_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" runat="Server">

    <asp:DropDownList ID="vendorListForCatalog" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="VendorID" AppendDataBoundItems="True" AutoPostBack="True">
        <asp:ListItem Value="-1">ShowAll</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PurchaseRequestConnectionString %>" SelectCommand="SELECT [VendorID], [Name] FROM [Vendors]"></asp:SqlDataSource>
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <div class="catalogGridView">
        <asp:GridView ID="vendorCatalogGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="VendorID,CatalogID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="1562px" Height="193px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="VendorID" HeaderText="VendorID" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="8%" InsertVisible="False" ReadOnly="True" SortExpression="VendorID" ItemStyle-HorizontalAlign="center" >
                </asp:BoundField>
                <asp:BoundField DataField="Vendor Name" HeaderText="Vendor Name" ItemStyle-Width="20%" SortExpression="Vendor Name" >
                </asp:BoundField>
                <asp:BoundField DataField="Vendor Phone" HeaderText="Vendor Phone" ItemStyle-Width="15%" SortExpression="Vendor Phone" >
                </asp:BoundField>
                <asp:BoundField DataField="CatalogID" HeaderText="CatalogID" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="8%" SortExpression="CatalogID" InsertVisible="False" ReadOnly="True" >
                </asp:BoundField>
                <asp:BoundField DataField="ItemName" HeaderText="ItemName" ItemStyle-Width="20%" SortExpression="ItemName" >
                </asp:BoundField>
                <asp:BoundField DataField="PartNumber" HeaderText="PartNumber" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="10%" SortExpression="PartNumber" ItemStyle-HorizontalAlign="center">
                </asp:BoundField>
                <asp:BoundField DataField="Unit" HeaderText="Unit" ItemStyle-Width="8%" SortExpression="Unit" ItemStyle-HorizontalAlign="center">
                </asp:BoundField>
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="8%" SortExpression="UnitPrice" ItemStyle-HorizontalAlign="center">
                </asp:BoundField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" Height="50px" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PurchaseRequestConnectionString %>" SelectCommand="GetCatalogListByVendor" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="vendorListForCatalog" Name="VendorID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <br />

</asp:Content>

