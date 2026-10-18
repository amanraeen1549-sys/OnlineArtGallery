<%@ Page Title="" Language="C#" MasterPageFile="~/Home/HomePage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Home_Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Contact Us
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h1><i>Feel Free to Contact Us.</i></h1>
    <table style="width:100%;" border="0">
        <tr>
            <td>&nbsp;Name</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txtConcname" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="txtContemail" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Message</td>
            <td>
                <asp:TextBox ID="txtContmessage" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineArtConnectionString %>" SelectCommand="SELECT * FROM [Query]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnContact" runat="server" Text="Send Form" OnClick="btnContact_Click" BackColor="#99FF66" BorderColor="Black" Height="27px" style="margin-left: 22px" Width="129px" />
&nbsp;

</asp:Content>

