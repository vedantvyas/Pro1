<%@ Page Title="" Language="C#" MasterPageFile="~/main.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script>
    function myFunction() {
        var x;
        if (confirm("Buy this product!") == true) {
            x = "You pressed OK!";
        } else {
            x = "You pressed Cancel!";
        }
        document.getElementById("demo").innerHTML = x;
    }
</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div >
<p style="margin: 5px 800px 5px 200px; border-style: dashed; border-width: thin; font-family: Calibri; font-size: x-large; color: #333399; text-decoration: blink; text-align: center; background-color: #FFFF99; font-weight: bold; width: 200px;" 
         align="center">Products</p>
<table >
  <tr >
    <td onclick="myFunction()" style="border: thin dashed #CC0000;"  height="150px" width="120px"> <img src="web/m17.jpg" alt="" height="100px"  width="100px" /></td>
    <td></td>
    <td onclick="myFunction()" style="border: thin dashed #CC0000; " height="150px" width="120px"> <img src="web/m16.jpg" alt="" height="100px" align="middle" width="100px"/></td>
    <td></td>
    <td onclick="myFunction()" style="border: thin dashed #CC0000; " height="150px" width="120px"> <img src="web/m18.jpeg" alt="" height="100px" align="middle" width="100px"/></td>
    <td></td>
    <td onclick="myFunction()" style="border: thin dashed #CC0000; " height="150px" width="120px"> <img src="web/m15.jpg" alt="" height="100px" align="middle" width="100px"/></td> 
  </tr>
    <tr>
    <td colspan="7"></td>
  </tr>

    <tr>
    <td onclick="myFunction()" style="border: thin dashed #CC0000;"  height="150px" width="120px"> <img src="web/m1.jpg" alt=""  height="100px" align="middle" width="100px" /></td>
    <td></td>
    <td onclick="myFunction()" style="border: thin dashed #CC0000;"  height="150px" width="120px"> <img src="web/m2.JPG" alt="" height="100px" align="middle" width="100px"/></td>
    <td></td>
    <td onclick="myFunction()" style="border: thin dashed #CC0000;"  height="150px" width="120px"> <img src="web/m3.png" alt="" height="100px" align="middle" width="100px"/></td>
    <td></td>
    <td style="border: thin dashed #CC0000;" height="150px" width="120px"> <img src="web/m4.jpg" alt="" height="100px" align="middle" width="100px"/></td>
  </tr>
    <tr>
    <td colspan="7"></td>
  </tr>
  <tr>
    <td onclick="myFunction()"  style="border: thin dashed #CC0000;"  height="150px" width="120px"> <img src="web/m5.gif" alt="" height="100px" align="middle" width="100px"/></td>
    <td></td>
    <td onclick="myFunction()" style="border: thin dashed #CC0000;" height="150px" width="120px"> <img src="web/m5.jpg" alt="" height="100px" align="middle" width="100px"/></td>
    <td></td>
    <td onclick="myFunction()" style="border: thin dashed #CC0000;"  height="150px" width="120px"> <img src="web/m6.jpg" alt="" height="100px" align="middle" width="100px"/></td>
    <td></td>
    <td onclick="myFunction()" style="border: thin dashed #CC0000;"  height="150px" width="120px"> <img src="web/m8.jpg" alt="" height="100px" align="middle" width="100px"/></td>
  </tr>
    <tr>
    <td colspan="7"></td>
  </tr>
</table>
<p align="right" ><a href="order2.aspx"><img src="web/next.jpg" alt=""  height="40" width="100" /></a></p>
</div>
</asp:Content>

