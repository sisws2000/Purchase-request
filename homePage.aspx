<%@ Page Title="" Language="C#" MasterPageFile="~/ProjectWithMasterPageCS/purchaseOrder.master" 
    AutoEventWireup="true" CodeFile="homePage.aspx.cs" Inherits="ProjectWithMasterPageCS_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="mainContentPlaceHolder" Runat="Server">
    <%--<div class="container" id="homeDescription">
        <p align="center">
            You are in purchase processing page <br />
            Select one of the options above or click one of the easy access buttons below
        </p>
    </div>--%>
    <%-- <div class="container" id="bgButtons">
        <button type="button" class="btn btn-warning" id="bgNewRequest" data-toggle="modal" data-target="#stageOne">New Request</button>
        <button type="button" class="btn btn-primary" id="bgViewRequest">View Request</button>
        <button type="button" class="btn btn-success" id="bgApproval">Request Approval</button>
        <button type="button" class="btn btn-danger" id="bgStatus">Request Status</button>
    </div>--%>

    <div id="bgButtons" >
        <%--<button type="button" class="btn btn-warning" id="bgNewRequest" onclick='window.open("newRequestStage.aspx","_self")'>New Request</button>--%>
        <button type="button" class="btn btn-warning" id="bgNewRequest" data-toggle="modal" data-dismiss="modal" data-target="#stageOne">New Request</button>
        <button type="button" class="btn btn-primary" id="bgViewRequest" onclick='window.open("viewRequest.aspx","_self")'>View Request</button>
        <button type="button" class="btn btn-success" id="bgApproval">Request Approval</button>
        <button type="button" class="btn btn-danger" id="bgStatus">Request Status</button>
    </div>

    <!--Request input stage-1-->    
        <div class="modal fade" id="stageOne" style="height: 780px">  

                    <div class="closeStage">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <table align="center" border="0" cellpadding="0" cellspacing="0">
                        <tbody>
                            <tr>
                                <td>
                                    <div id="mainBody">
                                        <ul class="anchor">
                                            <li>
                                                <a href="#step-1" class="selected" isdone="1" rel="1">
                                                    <label class="stepNumber">1</label>
                                                    <span class="stepDesc">Request Data<br>
                                                        <small>purchase request data</small>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#step-2" class="disabled" isdone="0" rel="2">
                                                    <label class="stepNumber">2</label>
                                                    <span class="stepDesc">Vendor<br>
                                                        <small>choose a vendor</small>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#step-3" class="disabled" isdone="0" rel="3">
                                                    <label class="stepNumber">3</label>
                                                    <span class="stepDesc">Item Details<br>
                                                        <small>items requested</small>
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>

                                        <div class="stepContainer">
                                            <div id="step-1" class="content">
                                                <h2 class="StepTitle" style="color: #198cd3">Request input</h2>
                                                <div class="inputSection">
                                                    <div id="left">
                                                        <div id="requestorInfo">
                                                            <label style="margin-right: 20px">Requestor</label>
                                                            <label style="margin-left: 3px">First Name:</label>
                                                            <input type="text" size="30" style="margin-right: 20px" autofocus required />
                                                            <label style="margin-left: 28px">Last Name:</label>
                                                            <input type="text" size="30" /><br />
                                                            <br />
                                                            <label style="margin-left: 135px">Email:</label>
                                                            <input type="text" size="30" style="margin-right: 20px" />
                                                            <label style="margin-left: 60px">Phone:</label>
                                                            <input type="text" size="30" />
                                                        </div>
                                                        <div id="requestDetail">
                                                            <label>Work request #:</label>
                                                            <input id="workRequest" type="text" size="15" placeholder="numbers only" autofocus />
                                                            <label id="supervisor" style="margin-right: 60px">
                                                                Supervisor:
                                                                <input type="text" size="25" style="margin-right: 10px" />
                                                            </label>
                                                            <label id="lblClickHere">Click to get justification & location</label>
                                                            <label id="clickForJustify" style="color: white">Click here</label><br />
                                                            <br />
                                                            <br />
                                                            <div style="display: inline-block; float: left; margin-right: 100px">
                                                                <label>
                                                                    One line description:<br />
                                                                    <input type="text" size="50" />
                                                                </label>
                                                            </div>
                                                            <div style="display: inline-block">
                                                                <label>
                                                                    Justification:<br />
                                                                    <textarea rows="8" cols="50"></textarea>
                                                                </label>
                                                            </div>
                                                        </div>
                                                        <div id="shippingAtt" style="height: 35px; margin-bottom: 9px">
                                                            <div style="display: inline-block; float: left">
                                                                <label style="clear: both; margin-right: 27px">
                                                                    Shipping attention:<br />
                                                                    <input type="text" size="45" />
                                                                </label>
                                                            </div>
                                                            <div style="display: inline-block; float:left">
                                                                <label>
                                                                    Date item needed:<br />
                                                                    <input type="date" id="delieryDate" size="20" style="margin-right: 63px" />
                                                                </label>
                                                            </div>
                                                            <div style="display: inline-block">
                                                                <form style="padding: 5px">
                                                                    <label id="deliveryMode" style="margin-right: 30px">delivery mode:</label>
                                                                    <label>
                                                                        Pick up
                                                                        <input type="radio" name="deliveryMode" style="margin-right: 30px; width: 15px; height: 15px" id="pickUp" />
                                                                    </label>
                                                                    <label style="padding: 5px">
                                                                        Via mail
                                                                        <input type="radio" name="deliveryMode" id="viaMail" style="width: 15px; height: 15px" />
                                                                    </label>
                                                                </form>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="actionBar">
                                            <div class="loader">Loading</div>
                                            <a href="#" class="buttonPrevious buttonDisabled">Previous</a>
                                            <a href="#" class="buttonNext" data-toggle="modal" data-dismiss="modal" data-target="#stageTwo">Next</a>
                                            <a href="#" class="buttonFinish buttonDisabled">Finish</a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>                   
        </div>    

    <!--Request input stage-2-->
    <div class="modal fade" id="stageTwo" style="height: 780px">

        <div class="closeStage">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        <table align="center" border="0" cellpadding="0" cellspacing="0">
            <tbody>
                <tr>
                    <td>
                        <div id="mainBody">
                            <ul class="anchor">
                                <li>
                                    <a href="#" data-toggle="modal" data-dismiss="modal" data-target="#stageOne" class="done">
                                        <label class="stepNumber">1</label>
                                        <span class="stepDesc">Request Data<br>
                                            <small>purchase request data</small>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#step-2" class="selected" isdone="0" rel="2">
                                        <label class="stepNumber">2</label>
                                        <span class="stepDesc">Vendor<br>
                                            <small>choose a vendor</small>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#step-3" class="disabled" isdone="0" rel="3">
                                        <label class="stepNumber">3</label>
                                        <span class="stepDesc">Item Details<br>
                                            <small>items requested</small>
                                        </span>
                                    </a>
                                </li>
                            </ul>

                            <div class="stepContainer">
                                <div id="step-2" class="content">
                                    <h2 class="StepTitle" style="color: #198cd3">Vendor - Suggested source</h2>
                                    <div class="inputSection">
                                        <div id="left" class="inlineBlock" style="height: 129px">
                                            <br />
                                            <br />
                                            <small>
                                                <label>* All vendors must be registerd</label><br />
                                                <label>* Pre-approved vendors are preffered</label>
                                            </small>
                                            <br />
                                            <br />
                                            <br />
                                            <label><b>Select a vendor:</b></label><br />
                                            <%-- <select id="vendorList" style="width: 300px">
                                                <option value="none" selected>(none)</option>
                                                <option value="Vendor-1">Vendor-1</option>
                                                <option value="Vendor-2">Vendor-2</option>
                                                <option value="Vendor-3">Vendor-3</option>
                                                <option value="Vendor-4">Vendor-4</option>
                                                <option value="Vendor-1">Vendor-5</option>
                                                <option value="Vendor-2">Vendor-6</option>
                                                <option value="Vendor-3">Vendor-7</option>
                                                <option value="Vendor-4">Vendor-8</option>
                                            </select><br />--%>
                                            <asp:DropDownList ID="vendorListForItems" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="VendorID" Height="26px" Width="198px">
                                                <asp:ListItem Text="Select" Value="-1" Selected="True"></asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PurchaseRequestConnectionString %>" SelectCommand="SELECT [VendorID], [Name] FROM [Vendors]"></asp:SqlDataSource>
                                            <br />
                                            <br />
                                            <div id="itemListFromCatalog" style="margin-left:20px">
                                                <asp:GridView ID="catalogByVendorGridView" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="VendorID,CatalogID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="192px" Width="1084px">
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:BoundField DataField="VendorID" HeaderText="VendorID" InsertVisible="False" ReadOnly="True" SortExpression="VendorID" />
                                                        <asp:BoundField DataField="Vendor Name" HeaderText="Vendor Name" SortExpression="Vendor Name" />
                                                        <asp:BoundField DataField="Vendor Phone" HeaderText="Vendor Phone" SortExpression="Vendor Phone" />
                                                        <asp:BoundField DataField="CatalogID" HeaderText="CatalogID" InsertVisible="False" ReadOnly="True" SortExpression="CatalogID" />
                                                        <asp:BoundField DataField="ItemName" HeaderText="ItemName" SortExpression="ItemName" />
                                                        <asp:BoundField DataField="PartNumber" HeaderText="PartNumber" SortExpression="PartNumber" />
                                                        <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                                                        <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
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
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PurchaseRequestConnectionString %>" SelectCommand="GetCatalogListByVendor" SelectCommandType="StoredProcedure">
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="vendorListForItems" Name="VendorID" PropertyName="SelectedValue" Type="Int32" />
                                                    </SelectParameters>
                                                </asp:SqlDataSource>
                                            </div>
                                            <br />
                                            <br />
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="actionBar">
                                <div class="loader">Loading</div>
                                <a href="#" class="buttonPrevious" data-toggle="modal" data-dismiss="modal" data-target="#stageOne">Previous</a>
                                <a href="#" class="buttonNext" data-toggle="modal" data-dismiss="modal" data-target="#stageThree">Next</a>
                                <a href="#" class="buttonFinish buttonDisabled">Finish</a>
                            </div>
                        </div>

                    </td>
                </tr>
            </tbody>
        </table>
    </div>

    <!--Request input stage-3-->
    <div class="modal fade" id="stageThree" style="height: 780px">
                    <div class="closeStage">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <table align="center" border="0" cellpadding="0" cellspacing="0">
                        <tbody>
                            <tr>
                                <td>
                                    <div id="mainBody">
                                        <ul class="anchor">
                                            <li>
                                                <a href="#" data-toggle="modal" data-dismiss="modal" data-target="#stageOne" class="done">
                                                    <label class="stepNumber">1</label>
                                                    <span class="stepDesc">
                                                        equest Data<br>
                                                        <small>purchase request data</small>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#" data-toggle="modal" data-dismiss="modal" data-target="#stageTwo" class="done">
                                                    <label class="stepNumber">2</label>
                                                    <span class="stepDesc">
                                                        Vendor<br>
                                                        <small>choose a vendor</small>
                                                    </span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#step-3" class="selected" isdone="0" rel="3">
                                                    <label class="stepNumber">3</label>
                                                    <span class="stepDesc">
                                                        Item Details<br>
                                                        <small>items requested</small>
                                                    </span>
                                                </a>
                                            </li>
                                        </ul>

                                        <div class="stepContainer">
                                            <div id="step-1" class="content" style="display: block;">
                                                <h2 class="StepTitle" style="color: #198cd3">Item Details</h2>

                                                <div class="inputSection" id="inputTable">
                                                    <div id="left" class="inlineBlock">
                                                        <label>To add items from a catalog</label>
                                                        <label id="clickForItemList" data-toggle="modal" data-target="#itemsListSelection" style="color:white">Click here</label>
                                                    </div><br /><br />

                                                    <!--Item insertion table-->
                                                    <div>

                                                        <table id="itemInsertTable" cellspacing="0">
                                                            <tr>
                                                                <th><input type="checkbox" id="checkAll" /></th>
                                                                <th><label>Part number</label></th>
                                                                <th><label>Name</label></th>
                                                                <th><label>Quantity</label></th>
                                                                <th><label>Unit</label></th>
                                                                <th><label>Unit price</label></th>
                                                            </tr>
                                                            <tr>
                                                                <td><input type="checkbox" class="check" name="Check" /></td>
                                                                <td><input type="text" id="Cell1" autofocus /></td>
                                                                <td><input type="text" id="Cell2" required /></td>
                                                                <td><input type="text" id="Cell3" required /></td>
                                                                <td><input type="text" id="Cell4" /></td>
                                                                <td><input type="text" id="Cell5" required /></td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                    <div style="margin-top:5px">
                                                        <button id="addRow" onclick="insertNewRow()">Add</button>
                                                        <button id="editRow">Edit</button>
                                                        <button id="deleteRow">Delete</button>
                                                    </div>

                                                    <script>
                                                        function insertNewRow() {
                                                            var table = document.getElementById("itemInsertTable");
                                                            var row = table.insertRow(1);
                                                            var cell1 = row.insertCell(0);
                                                            var cell2 = row.insertCell(1);
                                                            var cell3 = row.insertCell(2);
                                                            var cell4 = row.insertCell(3);
                                                            var cell5 = row.insertCell(4);
                                                            var cell6 = row.insertCell(5);
                                                            cell1.innerHTML = '<td><input type="checkbox" class="check" name="Check" /></td>';
                                                            cell2.innerHTML = '<td><input type="text" id="Cell1" height="10" autofocus /></td>';
                                                            cell3.innerHTML = '<td><input type="text" id="Cell2" required /></td>';
                                                            cell4.innerHTML = '<td><input type="text" id="Cell3" required /></td>';
                                                            cell5.innerHTML = '<td><input type="text" id="Cell4" /></td>';
                                                            cell6.innerHTML = '<td><input type="text" id="Cell5" required /></td>';
                                                        }

                                                    </script>

                                                </div>                                               
                                            </div>

                                        </div>
                                        <div class="actionBar">
                                            <%--<a href="newRequestStage2.aspx" class="buttonPrevious">Previous</a>--%>
                                            <a href="#" class="buttonPrevious" data-toggle="modal" data-dismiss="modal" data-target="#stageTwo">Previous</a>
                                            <a href="#" class="buttonNext buttonDisabled">Next</a>
                                            <a href="#" class="buttonFinish" data-toggle="modal" data-target="#confirmSubmission">Finish</a>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
    </div>

     <!--Confirm Submission-->
    <div class="modal fade" id="confirmSubmission" role="dialog">
        <p>Do you want to submit your request?</p>
        <div id="submitOrCancel">
            <a href="#" class="submitCancel" id="okRequestSubmission" data-toggle="modal" data-dismiss="modal" data-target="#confirmation">Submi</a>
            <a href="#" class="submitCancel" id="cancelRequestSubmission" data-dismiss="modal" data-target="#confirmSubmission">Cancel</a>
             <br />

            <%--<asp:Button csClass="submitCancel" ID="btnSubmitRequest" runat="server" Text="Submit" BackColor="#666666" ForeColor="White" Height="36px" Width="81px" OnClick="btnSubmitRequest_Click" />--%>            <%--<asp:Button ID="btnCancelRequest" runat="server" Text="Cancel" BackColor="#666666" ForeColor="White" Height="37px" Width="74px" />--%>
            
        </div>
    </div>

    <div class="modal fade" id="confirmation" role="dialog">
        <!--<div class="closeStage confirmation">
            <button type="button" class="close" data-dismiss="modal" data-target="#stageThree">&times;</button>
        </div>-->
        <p>Confermation:- Your request has been submitted</p><br /><br />
        <a href="homePage.aspx" id="dismissConfirmation">OK</a>
    </div>

    <%--<div class="footer">
        <br />
        <a href="#">@Copyright</a><br />
        <a href="#">Address</a><br />
        <a href="#">Contact us</a>
    </div>--%>

   <div class="footer" id="footer">
                <br /><a href="#">@Copyright</a><br />
                <a href="#">Address</a><br />
                <a href="#">Contact us</a>
            </div>
</asp:Content>

