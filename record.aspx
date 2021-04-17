<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="record.aspx.cs" Inherits="WebApplication1.record" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div class="container-fluid" dir="rtl">
        <div class="row">
            <div class="col-md-5">
                <div class="card" dir="rtl">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>بيانات الطالب</h4>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img src="img/student.png" width="100px" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row" dir="rtl">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="إسم الطالب"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="form-group">
                                    <div class="input-group">
                                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control mr-1" placeholder="درجة الطالب"></asp:TextBox>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                        </div>
                        <div class="row">
                            <div class="col-6 mx-auto">
                                <asp:Button ID="Button1" runat="server" class="btn btn-lg btn-block btn-danger" OnClick="Button1_Click" Text="اضف بيانات الطالب" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-6 mx-auto">
                                <asp:Button ID="Button2" runat="server" class="btn btn-lg btn-block btn-primary" OnClick="Button2_Click" Text="تعديل بيانات الطالب" />
                            </div>
                        </div>
                    </div>
                </div>
                <br />
            </div>
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <asp:Button ID="Button3" runat="server" CssClass="btn btn-success" OnClick="Button3_Click" Text="عوده الى لوحة التحكم" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>قائمة الطلاب</h4>
                                    <h4>&nbsp;<asp:TextBox ID="TextBox8" runat="server" AutoPostBack="true" placeholder="إبحث بالإسم" OnTextChanged="TextBox8_TextChanged"></asp:TextBox>
                                        بحث بالاسم</h4>

                                </center>
                      <%--   <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                             <ContentTemplate>--%>
                                
                                 <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" class="table table-striped table-bordered" DataSourceID="SqlDataSource1" Font-Bold="True" Font-Size="Large" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="ID">
                                     <Columns>
                                         <asp:CommandField SelectText="تعديل" ShowSelectButton="True" />
                                         <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                         <asp:BoundField DataField="Student_Name" HeaderText="الاسم" SortExpression="Student_Name" />
                                         <asp:BoundField DataField="Student_Grade" HeaderText="الدرجه" SortExpression="Student_Grade" />
                                         <asp:BoundField DataField="res" HeaderText="النتيجه" SortExpression="res" />
                                     </Columns>
                                </asp:GridView>
                        <%--     </ContentTemplate>
                         </asp:UpdatePanel>--%>
                         
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinalDataConnectionString %>" SelectCommand="SELECT [ID], [Student_Name], [Student_Grade], [res] FROM [info]"></asp:SqlDataSource>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
