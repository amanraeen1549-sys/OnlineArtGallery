<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.master" AutoEventWireup="true" CodeFile="Quarry.aspx.cs" Inherits="Admin_Quarry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Query
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h2><i>Query</i></h2>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="Query_Id" DataSourceID="SqlDataSource1" ForeColor="Black">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="Query_Id" HeaderText="Query_Id" InsertVisible="False" ReadOnly="True" SortExpression="Query_Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineArtConnectionString %>" DeleteCommand="DELETE FROM [Query] WHERE [Query_Id] = @Query_Id" InsertCommand="INSERT INTO [Query] ([Name], [Email], [Message]) VALUES (@Name, @Email, @Message)" SelectCommand="SELECT * FROM [Query]" UpdateCommand="UPDATE [Query] SET [Name] = @Name, [Email] = @Email, [Message] = @Message WHERE [Query_Id] = @Query_Id">
            <DeleteParameters>
                <asp:Parameter Name="Query_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Message" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Message" Type="String" />
                <asp:Parameter Name="Query_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>

</asp:Content>

