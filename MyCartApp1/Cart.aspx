<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="MyCartApp1.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width: 527px">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductId" EmptyDataText="Your cart is empty" Width="508px" Height="16px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="ProductId" DataNavigateUrlFormatString="~ProductDetails.aspx?p={0}" DataTextField="ProductName" HeaderText="ProductName" />
                <asp:TemplateField HeaderText="Quantity">
                   
<ItemTemplate>

    <asp:TextBox ID="txtqty" runat="server" Text='<%#Eval("ProductQuntity") %>' TextMode="Number"></asp:TextBox>

</ItemTemplate>
</asp:TemplateField>
                <asp:BoundField DataField="ProductCost" HeaderText="Cost" />
                <asp:BoundField DataField="ProductTotalCost" HeaderText="Total Cost" />
                <asp:TemplateField HeaderText="Actions">
                 <ItemTemplate>
                 <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Update" ImageUrl="~/images/image1.jpg" Height="30" Width="30" />
                     <asp:ImageButton ID="ImageButton2" runat="server" CommandName="Delete" ImageUrl="~/images/image2.jpg" Height="35" Width="35" />

                 </ItemTemplate>


                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
            </td>
            <td><table class="nav-justified">
        <tr>
            <td style="width: 414px; height: 235px;">
                <asp:TextBox ID="coupon" runat="server" Width="412px" ></asp:TextBox>
            &nbsp;</td>
            <td style="height: 235px">
                <asp:Button ID="Button2" runat="server" Text="Apply Coupon" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 414px; height: 57px">
                <asp:Label ID="Labelprice" runat="server" Text="Total Price"></asp:Label>
            </td>
            <td style="height: 57px">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 414px">
                <asp:Label ID="Labeldisc" runat="server" Text="Discounted Price"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 414px">
                <asp:Label ID="Labeltprice" runat="server" Text="Sub Total Price"></asp:Label>
            </td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 414px">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="CheckOut" OnClick="Button1_Click" />
            </td>
        </tr>
    </table></td>
        </tr>
    </table>
    
    <br />
</asp:Content>
