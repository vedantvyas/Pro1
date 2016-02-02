<%@ Page Language="C#" AutoEventWireup="true" CodeFile="VendorDetails.aspx.cs" Inherits="Admin_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head2" runat="server">   
	<link href="../css/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    #fmenu
    {
    	color:Green;
    	margin-left:300px;
    	height:200px;
    	width:600px;
    }
     #fmenu ul
     {
     	height:20px;
     	width:500px;
     }

    </style>
    <title>AMVED Medical Store</title>
    
</head>
<body>
<div class="background">
		<div class="page">
			<a href="#" id="logo"><img src="../images/logo.gif" alt=""/></a>
           			
			
            
				<div class="home">
                <p style="font-size: larger; font-weight: bold; color: #FF0000; text-decoration: blink; font-family: Century; text-align: center; padding-left: 10px;">
								Welcome&nbsp;  <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
							</p>
                            <div style="width: 100%; height: 100%">
                      <div class="sidebar">
				<ul>
					<li>
						<a href="Invoice.aspx">Invoice</a>
					</li>
				    <li>
						<a href="Graph.aspx">Graphs</a>
					</li>
                    <li >
						<a href="StockUpdate.aspx">Stock Update</a>
					</li>
					<li>
						<a href="Records.aspx">View Records</a>
					</li>
				    <li>
						<a href="AddVendor.aspx">Add Vendor</a>
					</li>
				    <li>
						<a href="VendorDetails.aspx">Vendor Detail</a>
					</li>
					
				</ul>
				
			</div>
   <form id="form1" runat="server">
    <div style="padding: 5px; margin-left: 240px; border: medium double #008000; text-align: center; color: #339933; font-weight: 700; font-family: Century;">
        <a href="../Default.aspx">Home</a>&nbsp; 
        <a href="../packages.aspx">&nbsp;Order Request</a>&nbsp;&nbsp;
        <a href="changepassword.aspx">Change Password</a>&nbsp;
       <%-- <asp:LinkButton ID="LinkButtonLogOut" runat="server" 
            onclick="LinkButtonLogOut_Click">Log Out</asp:LinkButton>--%>
        <br />
        
    </div>
   
					
						
						
                            
    <div><div class="body">
				<div style="background-color: #FFFFFF; background-repeat: repeat-y; width: auto; height: 500px">
					<div style="padding-left: 50px; padding-top: 50px;" >
						
						<div>
    <div>
    <table style="width: 400px">
 <tr>
                <td>
                    Page Size</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged1">
                        <asp:ListItem>-Select-</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>50</asp:ListItem>
                        <asp:ListItem>100</asp:ListItem>
                        <asp:ListItem>200</asp:ListItem>
                    </asp:DropDownList>
                    </td>
            </tr>
        </table>
    
   
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        onrowcancelingedit="GridView1_RowCancelingEdit" 
        onrowdeleting="GridView1_RowDeleting" onrowediting="GridView1_RowEditing" 
        onrowupdating="GridView1_RowUpdating" AllowPaging="True" 
        onpageindexchanging="GridView1_PageIndexChanging" PageSize="5">
        <Columns>
            <asp:BoundField DataField="VID" HeaderText="VID" ReadOnly="True" />
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Address" HeaderText="Address" />
            <asp:BoundField DataField="Phone" HeaderText="Phone No" />
            <asp:CommandField ShowEditButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
 
   </div>			
							
						</div>
					
					</div>
				</div>
			</div>
        
    </form>
                    </div>        
						
					</div>
					</div>
                 
                  <table style="margin-left: 300px; padding-left: 50px">  
				<tr><td>
					</td>
                    </tr>
					</table>
					                    					
				<p align="center" 
                        style="padding: 10px; background-color: #000000; color: #FFFFFF;">
							&copy 2015 | Website Designed & Developed by AMVED Web Solutions</p>
        
    </div>

</body>
</html>
