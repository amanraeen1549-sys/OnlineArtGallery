<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserPage.master" AutoEventWireup="true" CodeFile="UserProfile.aspx.cs" Inherits="User_UserProfile" EnableEventValidation="false" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Your Profile
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h2><i>Update your Profile</i></h2>
    <%=lblMessage.Text%>
    <p>
        <table style="width:100%;">
            <tr>
                <td>Nick Name</td>
                <td id="txtUPname">
                    <asp:TextBox ID="txtUPname" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Full Name</td>
                <td>
                    <asp:TextBox ID="txtUPfullname" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Phone Number</td>
                <td>
                    <asp:TextBox ID="txtUPphno" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Email Address</td>
                <td>
                    <asp:TextBox ID="txtUPemail" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Address</td>
                <td>
                    <asp:TextBox ID="txtUPaddr" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>Pincode</td>
                <td>
                    <asp:TextBox ID="txtUPpincode" runat="server" Enabled="False"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblMessage" runat="server" ForeColor="Green" Text="" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnupdate" runat="server" OnClick="btnupdate_Click" Text="Edit" Width="68px" />
    </p>

</asp:Content>

