<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserPage.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="User_Payment" EnableEventValidation="false" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Payment
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <h2><i>Payment</i></h2>
<p>
    <table style="width:100%;">
        <tr>
            <td>Amount</td>
            <td style="margin-left: 40px">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Card Number</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txtpaycardno" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Date Of Expiry</td>
            <td>
                <asp:TextBox ID="txtpaydoe" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>CVV Number</td>
            <td>
                <asp:TextBox ID="txtpaycvv" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 21px">Card Holder Name</td>
            <td style="height: 21px">
                <asp:TextBox ID="txtpaycardholder" runat="server"></asp:TextBox>
            </td>
            <td style="height: 21px"></td>
        </tr>
    </table>
    <asp:Label ID="lbl" runat="server" ForeColor="Green"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnpay" runat="server" Text="Pay" OnClick="btnpay_Click" />
</p>

</asp:Content>

