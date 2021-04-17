<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebApplication1.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="login0" class="text-right">
        <h3 class="text-center text-white pt-5">Login form</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <h3 class="text-center text-info"><strong>
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="إنشاء حساب جديد" Style="color: #000000 !important; font-weight: bold; font-size: x-large"></asp:Label>
                        </strong></h3>
                        <div class="form-group">
                            <label for="username" class="auto-style1">
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="إسم المستخدم"></asp:Label>
                            </label>
                            <br>
                            <asp:TextBox ID="UserName" runat="server" CssClass="form-control" ></asp:TextBox>
                            <asp:RegularExpressionValidator
                                ID="RegularExpressionValidator1"
                                runat="server"
                                ErrorMessage="ادخل حروف إنجليزيه ققط"
                                ControlToValidate="UserName"
                                ValidationExpression="^[A-Za-z]*$" Font-Bold="True" Font-Overline="False" Font-Underline="True" ForeColor="Red"></asp:RegularExpressionValidator>

                        </div>
                        <div class="form-group">
                            <label for="password" class="auto-style1">
                                <asp:Label ID="Label3" runat="server" CssClass="auto-style2" Text="كلمة المرور"></asp:Label>
                            </label>
                            <br>
                            <asp:TextBox ID="Password" runat="server" CssClass="form-control" BorderStyle="Ridge" TextMode="Password"></asp:TextBox>
                            <br />
                            <label for="password" class="auto-style1">
                                <asp:Label ID="Label4" runat="server" CssClass="auto-style2" Text="تأكيد كلمة المرور"></asp:Label>
                            </label>
                            <br>
                            <asp:TextBox ID="PasswordConfirm" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                            <asp:Label ID="lblError" runat="server" CssClass="text-danger" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
                            &nbsp;
                        </div>

                        <div class="form-group">
                            <asp:Label ID="lblError0" runat="server" CssClass="text-danger" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
                            <br />
                            <strong>
                                <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary btn-block button " Style="font-size: large" Text="تسجيل الدخول" OnClick="Button1_Click" />
                            </strong>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
