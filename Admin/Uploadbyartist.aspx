<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.master" AutoEventWireup="true" CodeFile="Uploadbyartist.aspx.cs" Inherits="Admin_Uploadbyartist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Upload By Artist
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h2><i>Uploaded by Artist</i></h2>
<p>
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Upload_Id" DataSourceID="SqlDataSource1" ForeColor="Black">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Painting_Name" HeaderText="Painting_Name" SortExpression="Painting_Name" />
            <asp:BoundField DataField="Market_Price" HeaderText="Market_Price" SortExpression="Market_Price" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
            <asp:BoundField DataField="Author_Name" HeaderText="Author_Name" SortExpression="Author_Name" />
            <asp:BoundField DataField="Upload_Id" HeaderText="Upload_Id" InsertVisible="False" ReadOnly="True" SortExpression="Upload_Id" />
            <asp:BoundField DataField="Imagepath" HeaderText="Imagepath" SortExpression="Imagepath" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineArtConnectionString %>" DeleteCommand="DELETE FROM [Uploading_Info] WHERE [Upload_Id] = @Upload_Id" InsertCommand="INSERT INTO [Uploading_Info] ([Painting_Name], [Market_Price], [Description], [Date], [Author_Name], [Imagepath]) VALUES (@Painting_Name, @Market_Price, @Description, @Date, @Author_Name, @Imagepath)" SelectCommand="SELECT * FROM [Uploading_Info]" UpdateCommand="UPDATE [Uploading_Info] SET [Painting_Name] = @Painting_Name, [Market_Price] = @Market_Price, [Description] = @Description, [Date] = @Date, [Author_Name] = @Author_Name, [Imagepath] = @Imagepath WHERE [Upload_Id] = @Upload_Id">
        <DeleteParameters>
            <asp:Parameter Name="Upload_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Painting_Name" Type="String" />
            <asp:Parameter Name="Market_Price" Type="Int32" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter DbType="Date" Name="Date" />
            <asp:Parameter Name="Author_Name" Type="String" />
            <asp:Parameter Name="Imagepath" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Painting_Name" Type="String" />
            <asp:Parameter Name="Market_Price" Type="Int32" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter DbType="Date" Name="Date" />
            <asp:Parameter Name="Author_Name" Type="String" />
            <asp:Parameter Name="Imagepath" Type="String" />
            <asp:Parameter Name="Upload_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</p>

</asp:Content>

