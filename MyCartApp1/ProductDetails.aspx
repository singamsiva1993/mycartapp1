<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="MyCartApp1.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Image ID="Image1" runat="server" Height="347px" Width="310px" />
                </td>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:Label ID="labelforname" runat="server" Text="Name"></asp:Label>
                            &nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Labelforcost" runat="server" Text="Cost"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Labelfordiscription" runat="server" Text="Discrption"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LabelQuanity" runat="server" Text="Quanitity"></asp:Label>
                                <asp:TextBox ID="TextBoxforquanity" runat="server" TextMode="Number"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="ButtonforAddtocart" runat="server" Text="AddToCart" OnClick="ButtonforAddtocart_Click" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
</asp:Content>
