<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserPage.master" AutoEventWireup="true" CodeFile="ViewPaintingDetials.aspx.cs" Inherits="User_ViewPaintingDetials" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" DataKeyField="Pain_Id" DataSourceID="SqlDataSource1" RepeatColumns="3">
        <ItemTemplate>
            <table style="width: 100%">
                <tr>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="139px" ImageUrl='<%# Eval("ImagesPath") %>' Width="221px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("Painting_Name") %>'></asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="Button1" runat="server" Height="31px" PostBackUrl='<%# Eval("Pain_Id","BuyPainting.aspx?pid={0}")%>' Text="View Details" Width="76px" />
                    </td>
                </tr>
            </table>
            <br />
            <br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineArtConnectionString %>" SelectCommand="SELECT * FROM [Painting_Detail] WHERE ([Sub_Cat_Id] = @Sub_Cat_Id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Sub_Cat_Id" QueryStringField="scid" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

