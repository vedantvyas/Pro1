<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="Admin_changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <style type="text/css">
    .style1
    {
        width: 400px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <table class="style1" style="padding: 30px; text-align: center; margin: 30px">
    <tr>
        <td>
            Current Password</td>
        <td>
            <asp:TextBox ID="txtCurrentPassword" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr><td><br /></td><td></td></tr>
    <tr>
        <td>
            New Password</td>
        <td>
            <asp:TextBox ID="txtNewPassword" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr><td><br /></td><td></td></tr>
    <tr>
        <td>
            Confirm New Password</td>
        <td>
            <asp:TextBox ID="ConfirmNewPassword" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr><td><br /></td><td></td></tr>
    
    <tr>
        <td>
            <asp:Button ID="ButtonChangePass" runat="server" Text="Change Password" 
                onclick="ButtonChangePass_Click" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

