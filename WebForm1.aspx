<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Student_Management.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


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
                           <img width="100px" src="student.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row" dir="rtl">

                     <div class="col-md-4">
                    
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="إسم الطالب" ></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-5">
                     
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control mr-1" ID="TextBox7" runat="server" placeholder="درجة الطالب" TextMode="Number" ></asp:TextBox>
                         
                           </div>
                        </div>
                     </div>
                  </div>

                  <div class="row">
                  </div>
                  <div class="row">
                     <div class="col-6 mx-auto">
                        <asp:Button ID="Button1" class="btn btn-lg btn-block btn-danger" runat="server" Text="اضف بيانات الطالب" OnClick="Button1_Click" />
                        
                     </div>
                  </div>
                    <div class="row">
                     <div class="col-6 mx-auto">
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-primary" runat="server" Text="تعديل بيانات الطالب" OnClick="Button2_Click" />
                     </div>
                  </div>
               </div>
            </div>
            
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>قائمة الطلاب</h4>
                            <h4>&nbsp;<asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                                بحث بالاسم</h4>
                        </center>

                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" Font-Bold="True" Font-Size="Large">
                            <Columns>
                                <asp:CommandField SelectText="تعديل" ShowSelectButton="True" />
                                <asp:BoundField DataField="ID" HeaderText="رقم الطالب" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                                <asp:BoundField DataField="name" HeaderText="إسم الطالب" SortExpression="name" />
                                <asp:BoundField DataField="grade" HeaderText="الدرجه" SortExpression="grade" />
                                <asp:BoundField DataField="res" HeaderText="النتيجه" SortExpression="res" />
                            </Columns>
                         </asp:GridView>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinalDataConnectionString %>" SelectCommand="SELECT [ID], [name], [grade], [res] FROM [ss]"></asp:SqlDataSource>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>

</asp:Content>
