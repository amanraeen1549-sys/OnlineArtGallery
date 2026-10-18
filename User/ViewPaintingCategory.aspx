<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserPage.master" AutoEventWireup="true" CodeFile="ViewPaintingCategory.aspx.cs" Inherits="User_ViewPaintingCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <div>

    </div>
    <div>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1" RepeatColumns="3">
            <ItemTemplate>
                <table style="width: 100%">
                    <tr>
                        <td>
                            <asp:ImageButton ID="ImageButton1" runat="server" Height="156px" PostBackUrl='<%# Eval("id","ViewPaintingDetials.aspx?scid={0}") %>' ImageUrl="~/PaintingImages/8.jpg" Width="221px" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("Sub_Cat_Name") %>' PostBackUrl='<%# Eval("id","ViewPaintingDetials.aspx?scid={0}") %>'></asp:LinkButton>
                        </td>
                    </tr>
                </table>
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineArtConnectionString %>" SelectCommand="SELECT [Cat_Id], [Sub_Cat_Name], [id] FROM [Sub_Category_Info] WHERE ([Cat_Id] = @Cat_Id)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Cat_Id" QueryStringField="cid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

