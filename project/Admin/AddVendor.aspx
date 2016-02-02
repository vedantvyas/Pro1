<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="AddVendor.aspx.cs" Inherits="Admin_AddVendor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style1
        {
            width: 302px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table width="100%">
        
        <tr style="padding: 0px; margin: 0px">
            <td bgcolor="#ffc45c" colspan="3" 
                style="padding-left: 250px;">
               <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="X-Large"
                   ForeColor="#400040" Text=" Add Vendor "></asp:Label></td>
            </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 93px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
      
        <tr style="text-align: center">
            <td align="right" style="width: 100px; height: 21px; padding-left: 20px;">
                <asp:Label ID="Label2" runat="server" Text="Vendor Name"></asp:Label></td>
            <td style="width: 93px; height: 21px">
            <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
           </td>
            <td style="width: 100px; height: 21px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="text-align: center">
            <td align="right" style="width: 100px; height: 21px; padding-left: 20px;">
                <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label></td>
            <td style="width: 93px; height: 21px">

               <asp:TextBox ID="TextBox2" runat="server" Height="85px" TextMode="MultiLine" Width="159px"></asp:TextBox></td>
            <td style="width: 100px; height: 21px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr style="text-align: center">
            <td align="right" style="width: 100px; padding-left: 20px;">
                <asp:Label ID="Label4" runat="server" Text="Phone No."></asp:Label></td>
            <td style="width: 93px">
                <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        
        <tr style="text-align: center">
            <td style="width: 100px">
            </td>
            <td style="width: 93px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" /><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Clear" /></td>
            <td style="width: 100px"> 
            </td>
        </tr>
        <tr style="text-align: center">
            <td colspan="3">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="Large"
                    ForeColor="#00C000"></asp:Label>&nbsp;</td>
        </tr>
        <tr style="text-align: center">
            <td colspan="3">
            </td>
        </tr>
        <tr style="text-align: center">
            <td style="width: 100px">
            </td>
            <td style="width: 93px">
            </td>
            <td style="width: 100px">
            </td>
        </tr>
    </table>
</asp:Content>

