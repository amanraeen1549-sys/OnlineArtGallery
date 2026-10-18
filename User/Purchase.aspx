<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserPage.master" AutoEventWireup="true" CodeFile="Purchase.aspx.cs" Inherits="User_Purchase"EnableEventValidation="false" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Purchasing
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h2><i>Purchasing</i></h2>
    <table style="width:100%;">
        <tr>
            <td>Painting Name</td>
            <td>
                <asp:TextBox ID="txtpainname" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Market Price</td>
            <td>
                <asp:TextBox ID="txtpurmarpr" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Name</td>
            <td>
                <asp:TextBox ID="txtpurname" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Address</td>
            <td>
                <asp:TextBox ID="txtpuraddress" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Phone Number</td>
            <td>
                <asp:TextBox ID="txtpurphno" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:Label ID="lbl" runat="server" ForeColor="Green"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnpurchase" runat="server" Text="Proceed To Check Out" OnClick="btnpurchase_Click" />

</asp:Content>

