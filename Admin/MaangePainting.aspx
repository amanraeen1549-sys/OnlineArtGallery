<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminPage.master" AutoEventWireup="true" CodeFile="MaangePainting.aspx.cs" Inherits="Admin_MaangePainting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Manage Painting
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h2><i>Mangage Painting</i></h2>
    <p>
        <table style="width:100%;">
            <tr>
                <td>Select Category</td>
                <td>
                    <asp:DropDownList ID="DropDownSC" runat="server" DataSourceID="SqlDataSource1" DataTextField="Category_Name" DataValueField="Cat_Id" Width="102px" AutoPostBack="True">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineArtConnectionString %>" SelectCommand="SELECT * FROM [Category_Infoo]"></asp:SqlDataSource>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Select Sub Category</td>
                <td>
                    <asp:DropDownList ID="DropDownSSC" runat="server" DataSourceID="SqlDataSource2" DataTextField="Sub_Cat_Name" DataValueField="id" Width="102px">
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineArtConnectionString %>" SelectCommand="SELECT * FROM [Sub_Category_Info] WHERE ([Cat_Id] = @Cat_Id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownSC" Name="Cat_Id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Painting Name</td>
                <td>
                    <asp:TextBox ID="txtMPPianname" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Market Price</td>
                <td>
                    <asp:TextBox ID="txtMPMprice" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Discount Price</td>
                <td>
                    <asp:TextBox ID="txtMPDprice" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Description</td>
                <td id="txtMPdesc">
                    <asp:TextBox ID="txtMPdesc" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Date</td>
                <td>
                    <asp:TextBox ID="txtMPdate" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Author Name</td>
                <td>
                    <asp:TextBox ID="txtMPAuname" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Image</td>
                <td>
                    <asp:FileUpload ID="FileUploadMPI" runat="server" Width="217px" />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Lbl1" runat="server" ForeColor="Green" Text="label1"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnMP" runat="server" Height="42px" OnClick="btnMP_Click" Text="Submit" Width="75px" />
    </p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Pain_Id" DataSourceID="SqlDataSource3" GridLines="Horizontal">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Pain_Id" HeaderText="Pain_Id" InsertVisible="False" ReadOnly="True" SortExpression="Pain_Id" />
                <asp:BoundField DataField="Sub_Cat_Id" HeaderText="Sub_Cat_Id" SortExpression="Sub_Cat_Id" />
                <asp:BoundField DataField="Painting_Name" HeaderText="Painting_Name" SortExpression="Painting_Name" />
                <asp:BoundField DataField="Market_Price" HeaderText="Market_Price" SortExpression="Market_Price" />
                <asp:BoundField DataField="DIscount_Price" HeaderText="DIscount_Price" SortExpression="DIscount_Price" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="Author_Name" HeaderText="Author_Name" SortExpression="Author_Name" />
                <asp:ImageField DataAlternateTextField="ImagesPath" DataImageUrlField="ImagesPath" HeaderText="Images">
                    <ControlStyle Height="100px" Width="100px" />
                    <ItemStyle Height="100px" Width="100px" />
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineArtConnectionString %>" DeleteCommand="DELETE FROM [Painting_Detail] WHERE [Pain_Id] = @Pain_Id" InsertCommand="INSERT INTO [Painting_Detail] ([Sub_Cat_Id], [Painting_Name], [Market_Price], [DIscount_Price], [Description], [Date], [Author_Name], [ImagesPath]) VALUES (@Sub_Cat_Id, @Painting_Name, @Market_Price, @DIscount_Price, @Description, @Date, @Author_Name, @ImagesPath)" SelectCommand="SELECT * FROM [Painting_Detail]" UpdateCommand="UPDATE [Painting_Detail] SET [Sub_Cat_Id] = @Sub_Cat_Id, [Painting_Name] = @Painting_Name, [Market_Price] = @Market_Price, [DIscount_Price] = @DIscount_Price, [Description] = @Description, [Date] = @Date, [Author_Name] = @Author_Name WHERE [Pain_Id] = @Pain_Id">
            <DeleteParameters>
                <asp:Parameter Name="Pain_Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Sub_Cat_Id" Type="Int32" />
                <asp:Parameter Name="Painting_Name" Type="String" />
                <asp:Parameter Name="Market_Price" Type="Decimal" />
                <asp:Parameter Name="DIscount_Price" Type="Decimal" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Author_Name" Type="String" />
                <%--<asp:Parameter Name="ImagesPath" Type="String" />--%>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Sub_Cat_Id" Type="Int32" />
                <asp:Parameter Name="Painting_Name" Type="String" />
                <asp:Parameter Name="Market_Price" Type="Decimal" />
                <asp:Parameter Name="DIscount_Price" Type="Decimal" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Date" Type="String" />
                <asp:Parameter Name="Author_Name" Type="String" />
                <asp:Parameter Name="ImagesPath" Type="String" />
                <asp:Parameter Name="Pain_Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>

</asp:Content>

