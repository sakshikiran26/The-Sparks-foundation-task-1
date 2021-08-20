<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="transact.aspx.cs" Inherits="DBMS.TSF_BANK.transact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            width: 614px;
            height: 704px;
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
    
<body style="height: 285px; width: 303px; margin-left: 217px ; background-color:lightgrey" ; >
   
    <form id="form1" runat="server" >
        <div class="content-wrapper">
         <div class="container">
        <div class="row pad-botm">
            <div class="col-md-12">
                <h3 class="header-line">  TRANSACTION </h3>
                
                            </div>

        </div>
       
        <div>
            
           <center> Enter sender&#39;s customer Id</center>
        </div>
        <div><center>
        <asp:TextBox ID="TextBox1" runat="server" Width="241px"></asp:TextBox>
            </center></div>
        <p>
            <center>Enter reciever&#39;s customer Id</p></center>
        <div><center>
        <asp:TextBox ID="TextBox2" runat="server" Width="241px"></asp:TextBox>
             </center></div>
        <p>
            <center>Enter amount to be transferred</center></p>
        <div><center>
        <asp:TextBox ID="TextBox3" runat="server" Width="239px"></asp:TextBox>
            </center>
            </div>
        
        <div><center>
            
        <asp:Button ID="Button1" runat="server" Text="Confirm Transfer"  OnClick="SHOW"  />
                
             </center>   
   
        

             </div>

        
            
                

    </form>
       
    
        
</body>
</html>
