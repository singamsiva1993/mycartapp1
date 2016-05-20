<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ShippingDetail.aspx.cs" Inherits="MyCartApp1.ShippingDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <div>
    
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LabelforbillingAddress" runat="server" Font-Bold="True" ForeColor="Red" Text="Shipping Address"></asp:Label>
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LabelforAddress" runat="server" Font-Bold="True" ForeColor="#FF3300" Text="Address"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxForAddress" runat="server" Width="164px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxForAddress" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxForAddress0" runat="server" Width="164px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LabelforCounty" runat="server" Font-Bold="True" ForeColor="#FF3300" Text="Country"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxForAddress1" runat="server" Width="164px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LabelforState" runat="server" Font-Bold="True" ForeColor="#FF3300" Text="State"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxForAddress2" runat="server" Width="164px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Labelforcity" runat="server" Font-Bold="True" ForeColor="#FF3300" Text="City"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxForAddress3" runat="server" Width="164px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Labelforpincode" runat="server" Font-Bold="True" ForeColor="#FF3300" Text="Pincode"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="TextBoxForPincode" runat="server" Width="164px"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBoxForPincode" ErrorMessage="Enter Correct Pincode" ValidationExpression="^[0-9]{6}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5">
                    <asp:Button ID="Buttonfrosubmitbilling" runat="server" ForeColor="Red" Text="Submit" OnClick="Buttonfrosubmitbilling_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="ButtonfroCancelbilling" runat="server" ForeColor="Red" Text="Cancel" />
                </td>
                <td class="auto-style6"></td>
            </tr>
        </table>
    
    </div>
</asp:Content>
