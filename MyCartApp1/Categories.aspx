<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Categories.aspx.cs" Inherits="MyCartApp1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
    <script language="javascript" type="text/javascript">
        function isvalidName() {
            var uid;
            var regexp = /^[a-zA-Z]+$/;
            var temp = document.getElementById("<%=txtCategory.ClientID %>");
            uid = temp.value;
            if (uid == "") {
                alert("Please enter category" + "\n");
                return false;
            }
            return true;
        }
    </script>
    <span class="tag">
    <asp:LinkButton ID="lnkbtnAddCategory" runat="server" OnClick="lnkbtnAddCategory_Click" Font-Size="Medium">Add Category</asp:LinkButton>

    <asp:GridView ID="CategoriesGridView" runat="server" Height="16px" Width="409px" AutoGenerateColumns="False" DataKeyNames="id" OnRowCancelingEdit="CategoriesGridView_RowCancelingEdit" OnRowDeleting="CategoriesGridView_RowDeleting" OnRowEditing="CategoriesGridView_RowEditing" OnRowUpdating="CategoriesGridView_RowUpdating" EmptyDataText="No data present" Font-Size="Large" HorizontalAlign="Center">
        <Columns>
    <asp:TemplateField HeaderText="ID">
                <ItemTemplate>
                    <asp:Label Text='<%#Eval("id")%>' ID="lblID" runat="server"></asp:Label>
                </ItemTemplate>
</asp:TemplateField>

 <asp:TemplateField HeaderText="Name">
          <ItemTemplate>
                    <asp:Label ID="lblName" runat="server" Text='<%#Eval("category_name")%>'></asp:Label>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtName" runat="server" Text='<%#Eval("category_name")%>'></asp:TextBox> 
                </EditItemTemplate>
</asp:TemplateField>

            <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <asp:ImageButton ID="imbEdit" runat="server" CommandName="Edit" ImageUrl="~/images/edit.png" Height="25" Width="25" />
                    <asp:ImageButton ID="imbDelete" runat="server" CommandName="Delete" ImageUrl="~/images/delete.jpg" Height="25" Width="25" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:ImageButton ID="imbUpdate" runat="server" CommandName="Update" ImageUrl="~/images/update.png" Height="25" Width="25" />
                    <asp:ImageButton ID="imbCancel" runat="server" CommandName="Cancel" ImageUrl="~/images/cancel.png" Height="25" Width="25" />
                </EditItemTemplate>

            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    Name<br />
    </span>
    <br />
     <asp:Panel ID="Panel1" runat="server" Height="16px" Visible="False" Width="506px" >
         <table class="nav-justified">
        <tr>
            <td> <asp:Label ID="lblCategory" runat="server" Text="Name"></asp:Label></td>
            <td><asp:TextBox ID="txtCategory" runat="server" ></asp:TextBox></td>
            <td><asp:Button ID="btnAdd" runat="server" Text="Add" OnClientClick="return isvalidName();" OnClick="btnAdd_Click" /></td>
        </tr>
    </table>

     </asp:Panel>
    
    <br />
</asp:Content>
