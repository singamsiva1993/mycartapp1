<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="MyCartApp1.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Labelforproducts" runat="server" Text="Products" Font-Bold="True" ForeColor="Blue"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <table class="nav-justified">
            <tr>
                <td style="width: 565px">
    <table style="width: 96%; height: 111px;">
        <tr>
            <td style="width: 175px"></td>
            <td class="modal-sm" style="width: 294px"></td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblProductCategory" runat="server" Text="Categories"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 294px">&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="ddlProductCategories" runat="server" Width="135px">
                </asp:DropDownList>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td class="modal-sm" style="width: 294px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblProductName" runat="server" Text="Product Name"></asp:Label>
                &nbsp;</td>
            <td class="modal-sm" style="width: 294px">&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtProductName" runat="server" Width="135px"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td class="modal-sm" style="width: 294px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblProductDesc" runat="server" Text="Description"></asp:Label>
            </td>
            <td class="modal-sm" style="width: 294px">&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtProductDesc" runat="server" Height="24px" TextMode="MultiLine" Width="135px"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td class="modal-sm" style="width: 294px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblProductCost" runat="server" Text="Cost"></asp:Label>
                &nbsp;</td>
            <td class="modal-sm" style="width: 294px">&nbsp;&nbsp;
                <asp:TextBox ID="txtProductCost" runat="server" Height="18px" TextMode="Number" Width="135px"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td class="modal-sm" style="width: 294px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblProductMinStock" runat="server" Text="Minimum Stock"></asp:Label>
                &nbsp;</td>
            <td class="modal-sm" style="width: 294px">&nbsp;&nbsp;
                <asp:TextBox ID="txtProductMinStock" runat="server" Height="21px" TextMode="Number" Width="135px"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td class="modal-sm" style="width: 294px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblActualStock" runat="server" Text="ActualStock"></asp:Label>
                &nbsp;</td>
            <td class="modal-sm" style="width: 294px">&nbsp;&nbsp;
                <asp:TextBox ID="txtProductActStock" runat="server" TextMode="Number" Width="135px"></asp:TextBox>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td class="modal-sm" style="width: 294px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td class="modal-sm" style="width: 294px">&nbsp;&nbsp;
                <asp:Button ID="btnProductAdd" runat="server" Font-Bold="True" ForeColor="#FF3300" OnClick="btnProductAdd_Click" Text="Add Product" />
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td class="modal-sm" style="width: 294px">&nbsp;</td>
        </tr>
    </table>
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="gridProduct" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" Width="401px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ProductId" ForeColor="Black" GridLines="Vertical" Height="264px" OnSelectedIndexChanged="gridProduct_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="ProductId" HeaderText="ProductId" />
            <asp:BoundField DataField="Name" HeaderText="ProductName" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
                </td>
            </tr>
        </table>
    </p>
    </asp:Content>
