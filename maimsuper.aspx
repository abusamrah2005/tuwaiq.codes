<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="maimsuper.aspx.cs" Inherits="WebApplication1.maimsuper" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
   
    
<table class="table" id="NewStud" runat="server">
    <tr>
      <td>&nbsp;</td>
      <td>
        <asp:Button
          ID="Button1"
          runat="server"
          Text="إدخال بيانات طالب جديد"
          CssClass="btn btn-block btn-primary"
          Font-Bold="True"
          Font-Size="Medium" OnClick="Button1_Click1"
          
        />
      </td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>
        <asp:Button
          ID="Button2"
          runat="server"
          Text="عرض تقرير الطلاب"
          CssClass="btn btn-block btn-primary"
          Font-Bold="True"
          Font-Size="Medium" OnClick="Button2_Click1"
         
        />
      </td>
      <td>&nbsp;</td>
    </tr>
    </table>

</asp:Content>
