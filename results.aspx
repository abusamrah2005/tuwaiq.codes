<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="results.aspx.cs" Inherits="WebApplication1.results" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
       .card-body{
           padding: 0 !important;
        }
            .auto-style1 {
                color: #FF0000;
                font-size: x-large;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
             <ContentTemplate>
    <div class="container" style="text-align: right">
        <div class="form-group" style="text-align: right">
            <asp:Label ID="Label1" runat="server" Text="أدخل رقم الطالب او الاسم" Style="text-align: right; font-weight: 700;"></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Height="40px"></asp:TextBox>
            <strong>
        <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" Text="عرض النتيجه" OnClick="Button1_Click" style="font-weight: bold" />
            </strong>&nbsp;
              <div style="background-color:aliceblue; height:40px">
        <asp:Label ID="Label2" runat="server" Text="Label" CssClass="auto-style1" Visible="False"></asp:Label>
        </div>
        </div>
        
    </div>
    <br />
  
      
        <div class=" card-body ">
          
             
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="container card-body text-center" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                            <asp:BoundField DataField="Student_Name" HeaderText="الاسم" SortExpression="Student_Name" />
                            <asp:BoundField DataField="Student_Grade" HeaderText="الدرجه" SortExpression="Student_Grade" />
                        </Columns>
                        <EditRowStyle BackColor="#7C6F57" />
                        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#E3EAEB" />
                        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F8FAFA" />
                        <SortedAscendingHeaderStyle BackColor="#246B61" />
                        <SortedDescendingCellStyle BackColor="#D4DFE1" />
                        <SortedDescendingHeaderStyle BackColor="#15524A" />
                    </asp:GridView>
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinalDataConnectionString %>" SelectCommand="SELECT [ID], [Student_Name], [Student_Grade] FROM [info]
WHERE  Student_Name LIKE '%' + @Student_Name  + '%'

">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" Name="Student_Name" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
   


</asp:Content>
