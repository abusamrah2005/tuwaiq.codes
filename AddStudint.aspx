<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" UICulture="ar" Culture="ar-SA" CodeBehind="AddStudint.aspx.cs" Inherits="WebApplication1.AddStudint" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="ajaxToolkit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #495057;
            background-clip: padding-box;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            margin: 1em 0;
            background-color: #fff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">






    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <header>
                <h1 style="text-align: center">بيانات الطالب</h1>
            </header>
            <div class="container" style="border: 1px solid; border-radius: 25px; padding: 20px; background-color: lightgray; direction: rtl; width: 80%;">

                <div class="row" style="direction: rtl; ">
                    <div class="col-lg-6" style="padding: 5px; text-align: right;" dir="rtl">
                        <strong>
                            <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="True">
                            </asp:ScriptManager>
                            <asp:Label ID="Label1" runat="server" Style="font-size: medium;" Text=" إسم الطالب" Width="120px" Height="30px"></asp:Label>
                            <asp:TextBox ID="Student_Name" runat="server" Height="30px" Style="border-radius: 50px; font-size: medium;" Width="231px" CssClass="form-control"></asp:TextBox>
                        </strong>
                    </div>
                    <div id="nash" runat="server" class="col-lg-6" style="padding: 5px; text-align: right;" dir="rtl">
                        <strong>
                            <asp:Label ID="Label3" runat="server" Style="font-size: medium;" Text="جنسية الطالب" Width="120px" Height="30px"></asp:Label>
                            <asp:DropDownList ID="Student_Nationality" runat="server" Height="30px" Style="font-size: medium" Width="230px" CssClass="form-control">
                                <asp:ListItem Value="1">سعودي</asp:ListItem>
                                <asp:ListItem Value="2">مصري</asp:ListItem>
                                <asp:ListItem Value="3">سوري</asp:ListItem>
                                <asp:ListItem Value="4">باكستاني</asp:ListItem>
                            </asp:DropDownList>
                        </strong>
                    </div>

                    <div class="col-lg-6" style="padding: 5px; text-align: right;" dir="rtl">
                        <strong>
                            <asp:Label ID="Label2" runat="server" Style="font-size: medium;" Text="المستوى" Width="120px" Height="30px"></asp:Label>
                            <asp:DropDownList ID="Student_Gender" runat="server" Style="font-size: medium" Width="230px" CssClass="auto-style1">
                                <asp:ListItem Value="1">المستوى الاول</asp:ListItem>
                                <asp:ListItem Value="2">المستوى الثاني</asp:ListItem>
                                <asp:ListItem>المستوى الثالث</asp:ListItem>
                                <asp:ListItem>المستوى الرابع</asp:ListItem>
                                <asp:ListItem>المستوى الخامس</asp:ListItem>
                                <asp:ListItem>المستوى السادس</asp:ListItem>
                                <asp:ListItem>المستوى  السابع</asp:ListItem>
                                <asp:ListItem>المستوى الثامن</asp:ListItem>
                            </asp:DropDownList>
                        </strong>
                    </div>
                    <div class="col-lg-6" style="padding: 5px; text-align: right;" dir="rtl">

                        <strong>
                            <asp:Label ID="Label29" runat="server" Height="30px" Style="font-size: medium;" Text="تاريخ إدخال الدرجه"></asp:Label>
                            <i id="ChoseDate1" runat="server" aria-hidden="true" class="fa fa-calendar btn " style="font-size: 28px; padding: 0"></i>
                            <br />
                        </strong>
                        <%--<asp:ImageButton ID="ChoseDate" runat="server" ImageUrl="~/img/logo.jpg" Height="46px" Width="60px" ImageAlign="AbsMiddle"/>--%>
                        <%--<ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" PopupButtonID="ChoseDate" TargetControlID="BirthDate1" ClearTime="True" FirstDayOfWeek="Sunday" TodaysDateFormat="dd-MM-yyyy" PopupPosition="TopLeft"  EndDate="1435-01-01" StartDate="1400-01-01" Format="yyyy/MM/dd" />--%>
                        <strong>
                            <asp:TextBox ID="BirthDate1" runat="server" CssClass="form-control" Height="35px" Style="font-size: medium" Width="230px"></asp:TextBox>
                            <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" ClearTime="True" FirstDayOfWeek="Sunday" Format="yyyy/MM/dd" PopupButtonID="ChoseDate1" PopupPosition="TopLeft" TargetControlID="BirthDate1" TodaysDateFormat="dd-MM-yyyy" SelectedDate="1441-01-01" />
                        </strong>
                    </div>

                    <div class="col-lg-6" style="padding: 5px; text-align: right;" dir="rtl">
                        <strong>
                            <asp:Label ID="Label5" runat="server" Style="font-size: medium;" Text="درجة الطالب" Width="120px" Height="30px"></asp:Label>
                            <asp:TextBox ID="Student_Identity_Num" runat="server" Height="30px" Style="font-size: medium" Width="230px" CssClass="form-control" MaxLength="10" TextMode="Number"></asp:TextBox>
                        </strong>
                    </div>
               
                     <div class="col-lg-6" style="padding: 5px; text-align: right;" dir="rtl">
                      
                              <strong>
                            <asp:Button ID="Button1" runat="server" Style="font-size: medium" Text="حفظ البيانات" Width="98px" OnClick="Button1_Click" CssClass="btn btn-primary" />
                        </strong>
                       
                              <asp:Button ID="Button2" runat="server" CssClass="btn btn-success" OnClick="Button2_Click" Text="عوده الى لوحة التحكم" />
                       
                    </div>
              
                 


                </div>
            </div>


        </asp:View>
    </asp:MultiView>









</asp:Content>
