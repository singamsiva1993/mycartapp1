<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MyCartApp1.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div style="height: 299px">
    <table class="auto-style1">
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Font-Size="Larger" ForeColor="Blue" Text="Registration For New User"></asp:Label>
                    <br />
                    <br />
                </td>
                <td class="auto-style4" style="width: 239px"></td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Labelforname" runat="server" Font-Bold="True" ForeColor="#003300" Text="User Name" style="text-align: left"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBoxforUseName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9" style="width: 239px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LabelforPassword" runat="server" Font-Bold="True" ForeColor="#006600" Text="Password" style="text-align: left"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxforpassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
                <td style="width: 239px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Labelformobilenumber" runat="server" Font-Bold="True" ForeColor="#00CC66" Text="Mobile Number" style="text-align: left"></asp:Label>
                </td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxforMobilenumber" runat="server"></asp:TextBox>
                </td>
                <td style="width: 239px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Labelforemail" runat="server" Font-Bold="True" ForeColor="#00FFCC" Text="Email" style="text-align: left"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextBoxforEmail" runat="server"></asp:TextBox>
                </td>
                <td style="width: 239px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;</td>
                <td class="auto-style11">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ButtonforSubmit" runat="server" ForeColor="#006600" OnClick="ButtonforSubmit_Click" Text="Register" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Buttonforregistrationcancel" runat="server" ForeColor="#009933" Height="28px" Text="Cancel" />
                    &nbsp;</td>
                <td class="auto-style12" style="width: 239px"></td>
            </tr>
        </table>
    </div>
</asp:Content>
