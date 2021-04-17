<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #B2C95D;
        }

        .auto-style2 {
            font-size: large;
        }
        .auto-style3 {
            color: #B2C95D;
            font-weight: bold;
            font-size: x-large;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div id="login" class="text-right">
        <h3 class="text-center text-white pt-5">Login form</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">

                        <h3 class="text-center text-info"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style3" Text="تسجيل الدخول"></asp:Label>
                        </strong></h3>
                        <div class="form-group">
                            <label for="username" class="auto-style1">
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="إسم المستخدم"></asp:Label>
                            </label>

                            <asp:TextBox ID="UserName" runat="server" CssClass="form-control"></asp:TextBox>
                      <%--      <asp:RegularExpressionValidator
                                ID="RegularExpressionValidator1"
                                runat="server"
                                ErrorMessage="only characters allowed"
                                ControlToValidate="UserName"
                                ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>--%>

                        </div>
                        <div class="form-group">
                            <label for="password" class="auto-style1">
                                <asp:Label ID="Label3" runat="server" CssClass="auto-style2" Text="كلمة المرور"></asp:Label>
                            </label>

                            <asp:TextBox ID="Password" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            <br />
                        </div>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="SignUp.aspx">إنشاء حساب جديد</asp:HyperLink>
                        <div class="form-group">

                            <asp:Label ID="lblError" runat="server" CssClass="text-danger" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
                            <br />
                            <asp:CheckBox ID="CheckBox1" runat="server" Text="  تذكرني  " CssClass="auto-style2" />
                            <br>
                            <br />

                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-block button " OnClick="Button1_Click" Style="font-size: large" Text="تسجيل الدخول" />

                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>




</asp:Content>
