<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="StockUpdate.aspx.cs" Inherits="Admin_OrderUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<table width="100%">
        
        <tr style="padding: 0px; margin: 0px">
            <td bgcolor="#ffc45c" colspan="3" 
                style="padding-left: 250px;">
               <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large"
                   ForeColor="#400040" Text=" Stock Updation  "></asp:Label></td>
            </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 93px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
       <%-- ------------------------------------------%>
       <tr style="text-align: center">
            <td align="right" style="width: 100px; height: 21px; padding-left: 20px;">
                <asp:Label ID="Label2" runat="server" Text="PID"></asp:Label></td>
            <td style="width: 93px; height: 21px;  padding-right: 210px;" 
                colspan="2">
            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>&nbsp <asp:Button ID="btnSearch" runat="server" onclick="btnSearch_Click" 
                        Text="Search" />
           </td>
            
               
        </tr>
        <tr style="text-align: center">
            <td align="right" style="width: 100px; height: 21px; padding-left: 20px;">
                <asp:Label ID="Label6" runat="server" Text="Product Name"></asp:Label></td>
            <td style="width: 93px; height: 21px">
            <asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox>
           </td>
            <td style="width: 100px; height: 21px">
                </td>
        </tr>
        <tr style="text-align: center">
            <td align="right" style="width: 100px; height: 21px; padding-left: 20px;">
                <asp:Label ID="Label7" runat="server" Text="Price"></asp:Label></td>
            <td style="width: 93px; height: 21px">

               <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox></td>
            <td style="width: 100px; height: 21px">
                </td>
        </tr>
        <tr style="text-align: center">
            <td align="right" style="width: 100px; padding-left: 20px;">
                <asp:Label ID="Label8" runat="server" Text="Quantity in Stock"></asp:Label></td>
            <td style="width: 93px">
                <asp:TextBox ID="TextBox4" runat="server" ></asp:TextBox></td>
            <td style="width: 100px">
                </td>
        </tr>
        
        <tr style="text-align: center">
            
            <td colspan="3" style="width: 93px">
                 <asp:Button ID="btnSave" runat="server" onclick="btnSave_Click" Text="New" 
                        Width="77px" />&nbsp <asp:Button ID="btnDelete" runat="server" onclick="btnDelete_Click" 
                        Text="Delete" />
                    &nbsp;
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                        onclick="btnUpdate_Click" />
                   &nbsp;
                    <asp:Button ID="btnCancel" runat="server" onclick="btnCancel_Click" Text="Cancel" /></td>
            
        </tr>
        <tr style="text-align: center">
            <td colspan="3">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="Large"
                    ForeColor="#00C000"></asp:Label>&nbsp;</td>
        </tr>
        <tr style="text-align: center">
            <td colspan="3">
            </td>
        </tr>
      
       <tr><td colspan="3" align="center">
       <asp:GridView ID="GridView1" runat="server" >
        

    </asp:GridView></td></tr> 

       
    </table>
     
</asp:Content>

