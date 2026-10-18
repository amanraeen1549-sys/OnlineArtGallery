<%@ Page Title="" Language="C#" MasterPageFile="~/Artist/ArtistPage.master" AutoEventWireup="true" CodeFile="UploadPainting.aspx.cs" Inherits="Artist_UploadPainting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Uploading
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h2><i>Uploading</i></h2>
<p>
    <table style="width: 100%;">
        <tr>
            <td>Select Category</td>
            <td>
                <asp:DropDownList ID="DropDownSC" runat="server" DataSourceID="SqlDataSource1" DataTextField="Category_Name" DataValueField="Cat_Id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineArtConnectionString %>" SelectCommand="SELECT * FROM [Category_Infoo]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Select Sub CAtegory</td>
            <td>
                <asp:DropDownList ID="DropDownLSSc" runat="server" DataSourceID="SqlDataSource2" DataTextField="Sub_Cat_Name" DataValueField="id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineArtConnectionString %>" SelectCommand="SELECT * FROM [Sub_Category_Info]"></asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Painting Name</td>
            <td>
                <asp:TextBox ID="txtuppainname" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Market Price</td>
            <td>
                <asp:TextBox ID="txtupMp" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Description</td>
            <td>
                <asp:TextBox ID="txtupdesc" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Date</td>
            <td>
                <asp:TextBox ID="txtupdate" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Author&nbsp; Name</td>
            <td>
                <asp:TextBox ID="txtupauthor" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Image</td>
            <td>
                <asp:FileUpload ID="FileUploadAuthor" runat="server" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</p>
    <p>
        <asp:Label ID="lbl" runat="server" ForeColor="Green"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnup" runat="server" Text="ENTER" OnClick="btnup_Click" />
</p>

</asp:Content>

