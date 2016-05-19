<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="MyCartApp1.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder" runat="server">
            <asp:Repeater ID="Repeater1" runat="server" >
                <ItemTemplate>
                    <div class="grid1_of_4">
				<div class="content_box"><a href="details.html">
			   	   	 <asp:Image ID="Image1" runat="server" Height="200px" Width="200px" 
                    ></asp:Image>
				   	  </a>
				    <h4><a href="ProductDetails.aspx?p=<%#Eval("ProductId")%>"><asp:Label ID="Label2"  runat="server" Text='<%#Eval("Name") %>'>'></asp:Label></a></h4>
				     <p>It is a long established fact that</p>
					 <div class="grid_1 simpleCart_shelfItem">
				    
					 <div class="item_add"><span class="item_price"><h6>Rs. <asp:Label ID="Label1"  runat="server" Text='<%#Eval("Cost") %>'>'></asp:Label></h6></span></div>
					<div class="item_add"><span class="item_price"><a href="ProductDetails.aspx?p=<%#Eval("ProductId")%>">add to cart</a></span></div>
					 </div>
			   	</div>
			</div>
                    
                </ItemTemplate>
            </asp:Repeater>
            
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
          
</asp:Content>
