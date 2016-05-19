<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Discounts.aspx.cs" Inherits="MyCartApp.Discounts" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 323px;
        }
        .auto-style3 {
            width: 323px;
            height: 30px;
        }
        .auto-style4 {
            height: 30px;
        }
    </style>
</head>
<body style="height: 186px">
    <script type="text/javascript">
        function Validate() {
            var x = document.getElementById('<%=txtcpncode.ClientID%>').value;
            var y = document.getElementById('<%=txtcpndiscount.ClientID%>').value;
            var z = document.getElementById('<%=txtcpnvaliditydate.ClientID%>').value;
            var a = document.getElementById('<%=txtcpnquantity.ClientID%>').value;

            if (x == "" || y == "" || z == "") {
                if (x == "" && y == "" && z == "") {
                    alert("Enter a CoupnCode,Enter a CoupnDiscount,Enter a CoupnValidDate");
                }
                else if (x == "" && y == "") {

                    alert("Enter a CoupnCode,Enter a CoupnDiscount");
                }
                else if (x == "" && z == "") {


                    if (a < 1 && y < 1) {
                        alert("Enter a CoupnCode,Enter a CoupnValidDate,quantity must be geaterthan 0,discount must be geaterthan 0 ");
                    }
                    else if (a < 1) {
                        alert("Enter a CoupnCode,Enter a CoupnValidDate,quantity must be geaterthan 0");
                    }
                    else if (y < 1) {
                        alert("Enter a CoupnCode,Enter a CoupnValidDate,discount must be geaterthan 0");
                    }
                    else {
                        alert("Enter a CoupnCode,Enter a CoupnValidDate");
                    }



                }
                else if (y == "" && z == "") {
                    alert("Enter a CoupnDiscount,Enter a CoupnValidDate");
                }
                else if (x == "") {
                    if (a < 1 && y < 1) {
                        alert("Enter a CoupnCode,quantity must be geaterthan 0,discount must be geaterthan 0 ");
                    }
                    else if (a < 1) {
                        alert("Enter a CoupnCode,quantity must be geaterthan 0");
                    }
                    else if (y < 1) {
                        alert("Enter a CoupnCode,discount must be geaterthan 0");
                    }
                    else {
                        alert("Enter a CoupnCode");
                    }
                }
                else if (y == "") {
                    alert("Enter a CoupnDiscount");
                }
                else if (z == "") {

                    if (a < 1 && y < 1) {
                        alert("Enter a CoupnValidDate,quantity must be geaterthan 0,discount must be geaterthan 0 ");
                    }
                    else if (a < 1) {
                        alert("Enter a CoupnValidDate,quantity must be geaterthan 0");
                    }
                    else if (y < 1) {
                        alert("Enter a CoupnValidDate,discount must be geaterthan 0");
                    }
                    else {
                        alert("Enter a CoupnValidDate");
                    }


                }

                return false;
            }
            else {

                if (a < 1 && y < 1) {
                    alert("quantity must be geaterthan 0,discount must be geaterthan 0 ");
                    return false;
                }
                else if (a < 1) {
                    alert("quantity must be geaterthan 0");
                    return false;
                }
                else if (y < 1) {
                    alert("discount must be geaterthan 0");
                    return false;

                }
               
            }
            return true;
        }
        </script>
        <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblcpncode" runat="server" Text="CouponCode"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcpncode" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblcpnqty" runat="server" Text="CouponQuantity"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcpnquantity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblcpndiscount" runat="server" Text="CoponDiscount"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcpndiscount" runat="server" TextMode="Number"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="lblvalidity" runat="server" Text="CouponValidityDate"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtcpnvaliditydate" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">
                    <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="Submit" OnClientClick="return Validate();"/>
                    <asp:Button ID="btncancel" runat="server" OnClick="btncancel_Click" Text="Cancel" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" DataKeyNames="Id">
                <Columns>
                    <asp:TemplateField HeaderText="Couponid">
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("Id")%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CouponCode">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("Coupon")%>'></asp:Label> 
                        </ItemTemplate>
                        
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CouponQuantity">
                          <ItemTemplate>
                              <asp:Label ID="Label2" runat="server" Text='<%#Eval("Count")%>'></asp:Label>
                          </ItemTemplate>
                        <EditItemTemplate>
                              <asp:TextBox ID="TextBox1"  runat="server" Text='<%#Eval("Count")%>'></asp:TextBox>

                        </EditItemTemplate>
                        
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CouponDiscount">
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("Discount")%>'></asp:Label>
                        </ItemTemplate>
                         <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%#Eval("Discount")%>'></asp:TextBox>

                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CouponValidityDate">
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("Validity")%>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                       <asp:TextBox ID="TextBox3" runat="server" Text='<%#Eval("Validity")%>'></asp:TextBox>

                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" CommandName="Edit" ImageUrl="~/images/edit1.png" Height="50" Width="50" />
                            <asp:ImageButton ID="ImageButton2" runat="server" CommandName="Delete" ImageUrl="~/images/Delete_Icon.png" Width="50" Height="50" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ID="ImageButton3" runat="server" CommandName="Update" ImageUrl="~/images/updateicon.png" Width="50" Height="50" />
                            <asp:ImageButton ID="ImageButton4" runat="server" CommandName="Cancel" ImageUrl="~/images/cancel.png" Width="50" Height="50" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
    </form>
</body>
</html>
