﻿<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="DSOFOS.User.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <%@ Import Namespace="DSOFOS" %>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%
        string imageUrl = Session["Image"].ToString();
    %>

    <section class="book_section layout_padding">
        <div class="container">
            <div class="heading_container">
                <h2>Customer Information</h2>
            </div>
            <div class="row">                 
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="card-title mb-4">
                                <div class="d-flex justify-content-start">
                                    <div class="image-container">
                                        <img src="<%= Utils.GetImageUrl(imageUrl) %>" id="imgProfile" style="width:150px; height:150px;" class="img-thumbnail" />
                                        <div class="middle pt-2">
                                            <a href="Registration.aspx?id=<% Response.Write(Session["UserId"]); %>" class="btn btn-warning">
                                                <i class="fa fa-pencil"></i>Edit Details
                                            </a>
                                        </div>
                                    </div>

                                    <div class="userData ml-3">
                                        <h2 class="d-block" style="font-size: 1.5rem;font-weight: bold">
                                            <a href="javascript:void(0);"><% Response.Write(Session["FirstName"]); %></a>
                                        </h2>

                                        <h6 class="d-block">
                                            <a href="javascript:void(0);">
                                                <asp:Label ID="lblUsername" runat="server" ToolTip="Unique Username">
                                                    <% Response.Write(Session["UserName"]); %>
                                                </asp:Label>
                                            </a>
                                        </h6>

                                        <h6 class="d-block">
                                            <a href="javascript:void(0);">
                                                <asp:Label ID="lblEmail" runat="server" ToolTip="Customer Email">
                                                    <% Response.Write(Session["EmailId"]); %>
                                                </asp:Label>
                                            </a>
                                        </h6>

                                         <h6 class="d-block">
                                            <a href="javascript:void(0);">
                                                <asp:Label ID="lblCreateDate" runat="server" ToolTip="Account Created On">
                                                    <% Response.Write(Session["CreatedAt"]); %>
                                                </asp:Label>
                                            </a>
                                        </h6>

                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12">
                                    <ul class="nav nav-tabs mb-4" id="myTab" role="tablist"> 
                                        <li class="nav-item">
                                            <a class="nav-link active text-info" id="basicInfo-tab" data-toggle="tab" href="#basicInfo" role="tab"
                                                aria-controls="basicInfo" aria-selected="true"><i class="fa fa-id-badge mr-2"></i>Basic Info</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link text-info" id="connectedServices-tab" data-toggle="tab" href="#connectedServices" role="tab"
                                                aria-controls="connectedServices" aria-selected="false"><i class="fa fa-clock-o mr-2"></i>Purchased History</a>
                                        </li>
                                    </ul>

                                    <div class="tab-content ml-1" id="myTabContent">
                                        <%-- Basic Customer Info Starts--%>
                                        <div class="tab-pane fade show active" id="basicInfo" role="tabpanel" aria-labelledby="basicInfo-tab">
                                            <asp:Repeater ID="rUserProfile" runat="server">
                                                <ItemTemplate>

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Username</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("UserName") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">FirstName</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("FirstName") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">LastName</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("LastName") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Email</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("EmailId") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Mobile No.</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("ContactNo") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Address</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Address") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </div>

                                        <%-- Basic Customer Info Ends--%>

                                        <%--Order History Starts--%>

                                        <div class="tab-pane fade" id="connectedServices" role="tabpanel" aria-labelledby="connectedServices-tab">

                                            <h2>Order History</h2>

                                            <asp:Repeater ID="rPurchaseProfile" runat="server">
                                                <ItemTemplate>

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">MenuItemId</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("MenuItemId") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Invoice Id</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("in_id") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Order Date</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("o_date") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Order Quantity</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("o_qty") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Order Bill</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("o_bill") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Total Bill</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("o_unitprice") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                    <div class="row">
                                                        <div class="col-sm-3 col-md-2 col-5">
                                                            <label style="font-weight: bold;">Status</label>
                                                        </div>
                                                        <div class="col-md-8 col-6">
                                                            <%# Eval("Status") %>
                                                        </div>
                                                    </div>
                                                    <hr />

                                                </ItemTemplate>
                                            </asp:Repeater>

                                        </div>
                                           
                                        <%--Order History Ends--%>

                                    </div>

                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
