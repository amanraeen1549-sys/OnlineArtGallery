<%@ Page Title="" Language="C#" MasterPageFile="~/Home/HomePage.master" AutoEventWireup="true" CodeFile="ArtistRegistration.aspx.cs" Inherits="Home_AdminLogin"  EnableEventValidation="false" ValidateRequest="false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">
    Artist Registration
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    

    <div class="main-content">

        <!-- You only need this form and the form-register.css -->

        <form class="form-register" method="post" action="#">

            <div class="form-register-with-email">

                <div class="form-white-background">

                    <div class="form-title-row">
                        <h1><i>Artist Registration</i></h1>
                    </div>

                    <div class="form-row">
                        <label>
                            <span>&nbsp;</span><table style="width:100%;">
                            <tr>
                                <td>Artist Nick Name</td>
                                <td>
                                    <asp:TextBox ID="txtARname" runat="server"></asp:TextBox>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Full Name</td>
                                <td>
                        <label>
                                    <asp:TextBox ID="txtARfullname" runat="server"></asp:TextBox>
                        </label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Password</td>
                                <td>
                        <label>
                                    <asp:TextBox ID="txtARpass" runat="server" TextMode="Password"></asp:TextBox>
                        </label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Confirm Password</td>
                                <td>
                        <label>
                                    <asp:TextBox ID="txtARCpass" runat="server" TextMode="Password"></asp:TextBox>
                        </label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Phone Number</td>
                                <td>
                        <label>
                                    <asp:TextBox ID="txtARphone" runat="server"></asp:TextBox>
                        </label>
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>Email Address</td>
                                <td>
                        <label>
                                    <asp:TextBox ID="txtARemail" runat="server"></asp:TextBox>
                        </label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Address</td>
                                <td>
                        <label>
                                    <asp:TextBox ID="txtARaddress" runat="server"></asp:TextBox>
                        </label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Pincode</td>
                                <td>
                        <label>
                                    <asp:TextBox ID="txtARpincode" runat="server"></asp:TextBox>
                        </label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>Bank Information</td>
                                <td>
                        <label>
                                    <asp:TextBox ID="txtARBI" runat="server"></asp:TextBox>
                        </label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                        <label class="form-checkbox">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:OnlineArtConnectionString %>" SelectCommand="SELECT * FROM [Artist_Info]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        </label>
                        <asp:Button ID="btnadminlogin" runat="server" Text="Register" OnClick="btnadminlogin_Click" BackColor="#0099FF" BorderColor="Black" style="margin-top: 0px" Width="100px" />
                    </div>

                   
                </div>

            </div>

        </form>

    </div>
</asp:Content>

