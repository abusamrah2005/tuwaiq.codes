<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homapage.aspx.cs" Inherits="WebApplication1.homapage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <br />
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
 
    <div class="carousel-item">
      <img class="d-block w-100" src="img/logo.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="img/img_avatar1.png" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


    <br />

    <div class="container">

        <div id="accordion" style="text-align: right">
            <div class="card">
                <div class="card-header card bg-primary ">
                    <a class="card-link text-white" data-toggle="collapse" href="#collapseOne">بوابة المعلمين
                    </a>
                </div>
                <div id="collapseOne" class="collapse" data-parent="#accordion">
                    <div class="card-body ">
                        <p style="text-align: right;">من خلالها يقوم المعلم بإدخال بيانات الطلاب ودرجاتهم</p>
                        <a href="AddStudint.aspx">لوحة تحكم المعلم</a>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header bg-info">
                    <a class="collapsed card-link text-white" data-toggle="collapse" href="#collapseTwo">بوابة الطلاب
                    </a>
                </div>
                <div id="collapseTwo" class="collapse" data-parent="#accordion">
                    <div class="card-body">
                        <p style="text-align: right;">من خلالها يستطيع الطلاب عرض درجاتهم </p>
                        <a href="results.aspx">انتقل للنتائج</a>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-header bg-success">
                    <a class="collapsed card-link text-white" data-toggle="collapse" href="#collapseThree">سرعة الموقع 
                    </a>
                </div>
                <div id="collapseThree" class="collapse" data-parent="#accordion">
                    <div class="card-body">
                        <p style="text-align: right;">ارجو من الجميع الدخول على التصويت  ومشاركة تجربتهم عن شرعة الموقع وتجاوبه </p>
                        <a href="pollpage.aspx">انتقل للتصويت</a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <br />
    <br />
    <br />
    <br />



    <%--<div class="container">

        <div class="card-columns">
            <div class="card bg-primary">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the first card</p>
                </div>
            </div>
            <div class="card bg-warning">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the second card</p>
                </div>
            </div>
            <div class="card bg-success">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the third card</p>
                </div>
            </div>
            <div class="card bg-danger">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the fourth card</p>
                </div>
            </div>
            <div class="card bg-light">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the fifth card</p>
                </div>
            </div>
            <div class="card bg-info">
                <div class="card-body text-center">
                    <p class="card-text">Some text inside the sixth card</p>
                </div>
            </div>
        </div>
    </div>--%>




</asp:Content>
