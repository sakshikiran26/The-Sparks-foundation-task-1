<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recents.aspx.cs" Inherits="DBMS.TSF_BANK.recents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
     <title></title>
    <style type="text/css">
        #form1 {
            width: 1239px;
            height: 526px;
            margin-left: 0px;
        }
    </style>
     <!-- BOOTSTRAP CORE STYLE  -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONT AWESOME STYLE  -->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLE  -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />

</head>
<body style="background-color:lightgrey">
    <form id="form1" runat="server">
        <div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h4 class="header-line"> RECENT TRANSACTIONS </h4>
                
                            </div>

        </div>
       
        
            <asp:GridView ID="GridView1" runat="server" EmptyDataText="No Records Found"  ShowHeaderWhenEmpty="True"  HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White" RowStyle-BackColor="#F8F4E3" AlternatingRowStyle-BackColor="White" RowStyle-ForeColor="#3A3A3A" AutoGenerateColumns="False" Height="296px"  style="margin-bottom: 290px" Width="1446px" >
<AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
                
                 <Columns>
                    <asp:BoundField DataField="T_id" HeaderText="Transaction_id" HeaderStyle-width="5%" HeaderStyle-height="7%" HeaderStyle-HorizontalAlign="Center">
<HeaderStyle Height="7%" Width="20%" HorizontalAlign="Center"></HeaderStyle>
                     </asp:BoundField>
                    <asp:BoundField DataField="sender_id" HeaderText="Sender_id" HeaderStyle-width="10%" HeaderStyle-height="5%" HeaderStyle-HorizontalAlign="Center">
<HeaderStyle Height="5%" Width="20%" HorizontalAlign="Center"></HeaderStyle>
                     </asp:BoundField>
                    <asp:BoundField DataField="receiver_id" HeaderText="Receiver_id" HeaderStyle-width="10%" HeaderStyle-height="5%" HeaderStyle-HorizontalAlign="Center">
<HeaderStyle Height="5%" Width="20%" HorizontalAlign="Center"></HeaderStyle>
                     </asp:BoundField>
                    <asp:BoundField DataField="amount" HeaderText="Amount" HeaderStyle-width="10%" HeaderStyle-height="5%" HeaderStyle-HorizontalAlign="Center"> 
<HeaderStyle Height="5%" Width="22%" HorizontalAlign="Center"></HeaderStyle>
                          </asp:BoundField>
                         <asp:BoundField DataField="t_status" HeaderText="Transaction Status" HeaderStyle-width="10%" HeaderStyle-height="5%" HeaderStyle-HorizontalAlign="Center"> 
<HeaderStyle Height="5%" Width="22%"></HeaderStyle>
                     </asp:BoundField>
                     
                </Columns>
                    

<HeaderStyle BackColor="#3AC0F2" ForeColor="White" HorizontalAlign="Center"></HeaderStyle>

<RowStyle BackColor="#F8F4E3" ForeColor="#3A3A3A" HorizontalAlign="Center"></RowStyle>
            </asp:GridView>
        <div>
        </div>
    </form>
</body>
</html>
