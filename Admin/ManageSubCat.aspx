<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.master" AutoEventWireup="true" CodeFile="ManageSubCat.aspx.cs" Inherits="Admin_ManageSubCat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Manage Sub Category
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h2><i>&nbsp;Manage Sub-Category</i></h2>
    <p>
        <table style="width:100%;">
            <tr>
                <td>Select Category</td>
                <td>
                    <asp:DropDownList ID="DropDownListCatg" runat="server" DataSourceID="SqlDataSource1" DataTextField="Category_Name" DataValueField="Cat_Id" Width="132px">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineArtConnectionString %>" SelectCommand="SELECT * FROM [Category_Infoo]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Name of the Sub Category</td>
                <td>
                    <asp:TextBox ID="txtSCname" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Category Description</td>
                <td>
                    <asp:TextBox ID="txtSCdesc" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbl1" runat="server" ForeColor="Green" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnMSC" runat="server" Height="36px" OnClick="btnMSC_Click" Text="Submit" Width="85px" />
    &nbsp;&nbsp;&nbsp;
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="626px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Cat_Id" HeaderText="Cat_Id" SortExpression="Cat_Id" />
                <asp:BoundField DataField="Sub_Cat_Name" HeaderText="Sub_Cat_Name" SortExpression="Sub_Cat_Name" />
                <asp:BoundField DataField="Cat_Desc" HeaderText="Cat_Desc" SortExpression="Cat_Desc" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineArtConnectionString %>" DeleteCommand="DELETE FROM [Sub_Category_Info] WHERE [id] = @id" InsertCommand="INSERT INTO [Sub_Category_Info] ([Cat_Id], [Sub_Cat_Name], [Cat_Desc]) VALUES (@Cat_Id, @Sub_Cat_Name, @Cat_Desc)" SelectCommand="SELECT * FROM [Sub_Category_Info]" UpdateCommand="UPDATE [Sub_Category_Info] SET [Cat_Id] = @Cat_Id, [Sub_Cat_Name] = @Sub_Cat_Name, [Cat_Desc] = @Cat_Desc WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Cat_Id" Type="Int32" />
                <asp:Parameter Name="Sub_Cat_Name" Type="String" />
                <asp:Parameter Name="Cat_Desc" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Cat_Id" Type="Int32" />
                <asp:Parameter Name="Sub_Cat_Name" Type="String" />
                <asp:Parameter Name="Cat_Desc" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>

</asp:Content>

