﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Restaurants/Restaurants.Master" AutoEventWireup="true" CodeBehind="CategoryList.aspx.cs" Inherits="DSOFOS.Restaurants.CategoryList" %>
<%@ Import Namespace="DSOFOS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="pcoded-inner-content pt-0">
        <div class="align-align-self-end">
            <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>

        </div>
        <div class="main-body">
            <div class="page-wrapper">

                <div class="page-body">
                    <div class="row">
                        <div class="col-sm-12 ">
                            <div class="card">
                                <div class="card-header">
                                </div>
                                <div class="card-block">
                                    <div class="row">

                                        <%--<div class ="col-sm-6 col-md-4 col-lg-4">
                                            <h4 class="sub-title">Category</h4>
                                            <div>
                                                <div class="form-group">
                                                    <label>Category Name</label>
                                                    <div>
                                                        <asp:TextBox ID="txtName" runat="server" CssClass="from-control"
                                                            placeholder="Enter the category name" required="">
                                                            </asp:TextBox>
                                                        <asp:HiddenField ID="hdnId" runat="server" Value="0"/>
                                                    </div>
                                                 </div>

                                                <div>
                                                <div class="form-group">
                                                    <label>Category Image</label>
                                                    <div>
                                                        <asp:FileUpload ID="fuCategoryImage" runat="server" CssClass="from-control"
                                                           onchange="ImagePreview(this);"/>
                                                            
                                                        <asp:HiddenField ID="HiddenField1" runat="server" Value="0"/>
                                                    </div>
                                                 </div>

                                                    <div class="form-check pl-4">
                                                        <asp:CheckBox ID="cbIsActive" runat="server" Text="&nbsp; IsActive"  CssClass="from-check-input" />
                                                            
                                                        <asp:HiddenField ID="HiddenField2" runat="server" Value="0"/>
                                                    </div>

                                                     <div class="pb-5">
                                                        <asp:Button ID="btnAddOrUpdate" runat="server" Text="Add"  CssClass="btn btn-primary" 
                                                            OnClick="btnAddOrUpdate_Click"/>
                                                         &nbsp;
                                                         <asp:Button ID="btnClear" runat="server" Text="Clear"  CssClass="btn btn-primary"
                                                             CausesValidation="false" OnClick="btnClear_Click"/>
                                                      
                                                    </div>
                                                    </div>
                                                <div>
                                                    <asp:Image ID="imgCategory" runat="server"  CssClass="image-thumbnail" />
                                                </div>



                                    </div>
                                </div>--%>

                                        <div class ="col-sm-6 col-md-8 col-lg-8 mobile-inputs">
                                            <h4 class="sub-title">Category Lists</h4>
                                            <div class="card-block table-border-style">
                                                <div class="table-responsive">
                                                    <asp:Repeater ID="rCategory" runat="server"  OnItemDataBound="rCategory_ItemDataBound">
                                                        <HeaderTemplate>
                                                            <table class="table data-table-export table-hover nowrap">
                                                                <thead>
                                                                <tr>
                                                                    <th class="table-plus">Category Name</th>
                                                                    <th>Image</th>
                                                                    <th>IsActive</th>
                                                                    <th class="datatable-nosort">CreatedAt</th>
                                                                    
                                                                </tr>
                                                                </thead>
                                                            <tbody>
                                                        </HeaderTemplate>
                                                        <ItemTemplate>
                                                            <tr>
                                                            <td class="table-plus"><%# Eval("CategoryName") %></td>
                                                            <td>
                                                                <img alt="" width="40" src="<%# Utils.GetImageUrl(Eval("Image"))%>" />
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblIsActive" runat="server" Text='<%# Eval("IsActive") %>'></asp:Label>
                                                            </td>
                                                            <td><%# Eval("CreatedAt") %></td>
                                                            <%--<td>

                                                                <asp:LinkButton ID="lnkEdit" runat="server" Text="Edit" CssClass="badge badge-primary" 
                                                                    CommandArgument='<%# Eval("CategoryId") %>' CommandName="edit">
                                                                    <i class="ti-pencil"></i></asp:LinkButton>
                                                                <asp:LinkButton ID="lnkDelete" runat="server" Text="Delete" CommandName="delete" CssClass="badge bg-danger"
                                                                    CommandArgument='<%# Eval("CategoryId") %>' OnClientClick="return confirm('Do you want to delete this category ??');">
                                                                    <i class="ti-trash"></i></asp:LinkButton>

                                                            </td>--%>
                                                            </tr>
                                                        </ItemTemplate>
                                                        <FooterTemplate>
                                                            </tbody>
                                                            </table>
                                                        </FooterTemplate>
                                                    </asp:Repeater>
                                                </div>
                                            </div>
                                        </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
