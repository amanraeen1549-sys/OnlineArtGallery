<%@ Page Title="" Language="C#" MasterPageFile="~/Artist/ArtistPage.master" AutoEventWireup="true" CodeFile="ArtistProfile.aspx.cs" Inherits="Artist_ArtistProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
   Artist Profile
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h2><i>Artist Manage Profile</i></h2>
    <table style="width:100%;">
    <tr>
        <td>Art Nickname</td>
        <td>
            <asp:TextBox ID="txtARartnick" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Full Name</td>
        <td>
            <asp:TextBox ID="txtARfullname" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Phone Number</td>
        <td>
            <asp:TextBox ID="txtARphno" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Email Address</td>
        <td>
            <asp:TextBox ID="txtARemail" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Address</td>
        <td>
            <asp:TextBox ID="txtARadress" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Pin-Code</td>
        <td>
            <asp:TextBox ID="txtARpincode" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Bank Information</td>
        <td>
            <asp:TextBox ID="txtbankinfo" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="btnupdate" runat="server" OnClick="btnUpdate_Click" Text="Edit" />

</asp:Content>

