<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer_view.aspx.cs" Inherits="DBMS.customer_view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 681px ; background-color:lightgrey">
    <form id="form1" runat="server">
        <div>
            
            <asp:GridView ID="GridView1" runat="server" EmptyDataText="No Records Found"  ShowHeaderWhenEmpty="True"  HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" RowStyle-BackColor="#F8F4E3" AlternatingRowStyle-BackColor="White" RowStyle-ForeColor="#3A3A3A" AutoGenerateColumns="False" Height="692px"  style="margin-bottom: 290px" Width="1510px" OnRowCommand ="On_row_command">
<AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                 <Columns>
                    <asp:BoundField DataField="Customer_id" HeaderText="Customer_id" HeaderStyle-width="5%" HeaderStyle-height="7%" >
<HeaderStyle Height="7%" Width="20%"></HeaderStyle>
                     </asp:BoundField>
                    <asp:BoundField DataField="Name" HeaderText="Customer_Name" HeaderStyle-width="10%" HeaderStyle-height="5%">
<HeaderStyle Height="5%" Width="20%"></HeaderStyle>
                     </asp:BoundField>
                    <asp:BoundField DataField="E-Mail" HeaderText="E-Mail" HeaderStyle-width="10%" HeaderStyle-height="5%">
<HeaderStyle Height="5%" Width="20%"></HeaderStyle>
                     </asp:BoundField>
                    <asp:BoundField DataField="Balance" HeaderText="Balance" HeaderStyle-width="10%" HeaderStyle-height="5%">
<HeaderStyle Height="5%" Width="22%"></HeaderStyle>
                     </asp:BoundField>
                     <asp:TemplateField ShowHeader="True" HeaderText="Operation">
            <ItemTemplate>
                <asp:LinkButton ID="Button1" runat="server" CausesValidation="false" Width="150px" height="30px"    style="TEXT-ALIGN:center; color:deepskyblue; top:5px;" CommandName="Operation" Text="" CommandArgument='<%# Container.DataItemIndex %>'  >View <span class="fa fa-edit "></span></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
                </Columns>

<HeaderStyle BackColor="#3AC0F2" ForeColor="White"></HeaderStyle>

<RowStyle BackColor="#F8F4E3" ForeColor="#3A3A3A" HorizontalAlign="Center"></RowStyle>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
