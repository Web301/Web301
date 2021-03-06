﻿<%@ Page Title="Your Shopping Cart" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Web301.Cart" %>
<%@ MasterType VirtualPath="~/Site.Master" %>
<asp:Content ID="mainContent" ContentPlaceHolderID="MainContent" runat="server">
<div class="container">
    <div class="row"><%-- row 1 --%>
        <div class="col-sm-6"><%-- cart display column --%>
            <div class="form-group">
                <div class="col-sm-12"><asp:ListBox ID="lstCart" runat="server" CssClass="form-control" Width="30em"></asp:ListBox></div>                
            </div>
            <div class="form-group">
                <div class="col-sm-6">
                    <asp:Label ID="lblSubTotal" runat="server" EnableViewState="False"
                        CssClass="badge col-sm-12" Font-Size="X-Large" ></asp:Label>               
                </div>
            </div>
            <div class="form-group">
                <div class="col-sm-12">
            <asp:Label ID="lblFreeShip" runat="server" EnableViewState="False" 
                        CssClass="col-sm-12" ForeColor="Red" 
                Font-Size="X-Large" Text=""></asp:Label>
                </div>
            </div>
        </div>
        <br />
    </div><%-- end of row 1 --%>
    <div class="row"><%-- row 2 --%>        
        <div class="col-sm-12">
            <div class="form-group"><%-- cart edit buttons column --%>
            <div class="col-sm-12"><asp:Button ID="Button1" runat="server"
                Text="Remove Item" onclick="btnRemove_Click" CssClass="btn btn-warning" Width="162px" />
            <asp:Button ID="Button2" runat="server" 
                Text="Empty Cart" onclick="btnEmpty_Click" CssClass="btn btn-danger" style="margin-left:2em" Width="162px" />
            </div>
        </div>
            <div class="form-group"><%-- message label --%>
                <asp:Label ID="lblMessage" runat="server" EnableViewState="False"
                    CssClass="text-info col-sm-12"></asp:Label>
            </div>
            
            <div class="form-group"><%-- buttons --%>
                <div class="col-sm-12">
                    <asp:Button ID="btnContinue" runat="server"
                        PostBackUrl="~/Order.aspx" Text="Continue Shopping" CssClass="btn" OnClick="btnContinue_Click" Width="162px" />
                    <asp:Button ID="btnCheckOut" runat="server"
                        PostBackUrl="~/CheckOut1.aspx" Text="Check Out" CssClass="btn btn-success" Width="162px" style="margin-left:2em" OnClick="btnCheckOut_Click" />

                </div>
            </div>
        </div>
    </div><%-- end of row 2 --%>

    <%--<div class="col-sm-6">
            <div class="form-group"><%-- cart edit buttons column 
                <div class="col-sm-12"><asp:Button ID="btnRemove" runat="server" 
                    Text="Remove Item" onclick="btnRemove_Click" CssClass="btn" /></div>
        <br />
                <div class="col-sm-12"><asp:Button ID="btnEmpty" runat="server" 
                    Text="Empty Cart" onclick="btnEmpty_Click" CssClass="btn" /></div>
            </div>
        </div>--%>
</div>
</asp:Content>