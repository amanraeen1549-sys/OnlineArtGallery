<%@ Page Title="" Language="C#" MasterPageFile="~/Home/HomePage.master" AutoEventWireup="true" CodeFile="ArtistLogin.aspx.cs" Inherits="Home_AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Artist Login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
      <h1><i>Artist Login</i></h1>
    <table style="width:100%;">
        <tr>
            <td>Nick Name</td>
            <td>
                <asp:TextBox ID="Txtartlogname" runat="server" ToolTip="Enter The Nick Name"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="TxtartlogPass" runat="server" TextMode="Password" ToolTip="Enter The Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td></td>
            <td></td>
            <td>&nbsp;</td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:Button ID="btnartistlogin" runat="server" Text="Login" OnClick="btnartistlogin_Click" BackColor="#CCFFFF" BorderColor="Black" Width="74px" />
&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="lbl" runat="server" ForeColor="Red" Text="Label"></asp:Label>
      &nbsp; 

</asp:Content>

