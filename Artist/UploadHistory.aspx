<%@ Page Title="" Language="C#" MasterPageFile="~/Artist/ArtistPage.master" AutoEventWireup="true" CodeFile="UploadHistory.aspx.cs" Inherits="Artist_UploadHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Your History
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h2><i>Upload History</i></h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="544px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="Painting_Name" HeaderText="Painting_Name" SortExpression="Painting_Name" />
                <asp:BoundField DataField="Market_Price" HeaderText="Market_Price" SortExpression="Market_Price" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Author_Name" HeaderText="Author_Name" SortExpression="Author_Name" />
                <asp:ImageField DataAlternateTextField="Imagepath" DataImageUrlField="Imagepath" HeaderText="Images">
                    <ControlStyle Height="50px" Width="50px" />
                    <ItemStyle Height="50px" Width="50px" />
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineArtConnectionString %>" SelectCommand="SELECT [Painting_Name], [Market_Price], [Description], [Date], [Author_Name], [Imagepath] FROM [Uploading_Info]"></asp:SqlDataSource>
    </p>

</asp:Content>

