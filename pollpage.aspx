<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" EnableEventValidation="true" CodeBehind="pollpage.aspx.cs" Inherits="WebApplication1.pollpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .ButtonStyle {
            background-color: #9EBEDE;
            color: Black;
            font-family: verdana;
            font-size: 8pt;
        }

        .BarStyle {
            background-color: #996633;
        }

        .TablePollResultFoot {
            background-color: #B0C4DE;
            font-weight: bold;
            height: 30px;
            font-size: 13px;
        }

        .gridview {
            border: solid 1px #CCCCCC;
            width: 100%;
        }

        .auto-style1 {
            background-color: #9EBEDE;
            color: Black;
            font-family: verdana;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





    <div class="text-center">
        <table style="border: 1px solid #9EBEDE; width:100%; margin:5px;padding:10px "   >
            <tr>
                <td align="right">
                    <b><span style="color: #FF6600">تصويت عن سرعة الموقع </span></b>
                </td>
            </tr>
            <tr>
                <td height="10px"></td>
            </tr>
            <tr>
                <td>
                    <b>كيف ترى سرعة الموقع?</b>
                </td>
            </tr>
            <tr>
                <td height="5px"></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:RadioButtonList ID="radVote" runat="server">
                        <asp:ListItem>Fast</asp:ListItem>
                        <asp:ListItem>Slow</asp:ListItem>
                        <asp:ListItem>Normal</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td></td>
            </tr>
            <tr>
                <td>
                    <strong>
                    <asp:Button ID="btnVote" runat="server" Text="تصويت"
                        OnClick="btnVote_Click" CssClass="auto-style1" />
                    <asp:Button ID="btnResult" runat="server" Text="عرض النتائج" CssClass="auto-style1"
                        OnClick="btnResult_Click" />
                    </strong>
                    <br />
                    <asp:Label ID="lblStatus" runat="server" />
                </td>
            </tr>
            <tr>
                <td align="center">
                    <asp:GridView runat="server" ID="gvResult" BackColor="White" CellPadding="3" AutoGenerateColumns="False"
                        OnRowDataBound="gvResult_RowDataBound" EmptyDataText="No one submit votes" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1" GridLines="None">
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />

                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />

                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderText="السرعه" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="20%">
                                <ItemTemplate>
                                    <asp:Label ID="lblOptions" runat="server" Text='<%#Bind("OPTION_NAME") %>'></asp:Label>
                                </ItemTemplate>

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>

<ItemStyle Width="20%"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="عدد المصوتين" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="10%">
                                <ItemTemplate>
                                    <asp:Label ID="lblVotes" runat="server" Text='<%#Bind("VOTES") %>'></asp:Label>
                                </ItemTemplate>

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>

<ItemStyle Width="10%"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="النسبه" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="15%">
                                <ItemTemplate>
                                    <asp:Label ID="lblpercentage" runat="server" Text='<%#Bind("PERCENTAGE","{0:f2}") %>'></asp:Label>
                                </ItemTemplate>

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>

<ItemStyle Width="15%"></ItemStyle>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="رسم بياني" HeaderStyle-HorizontalAlign="Left" ItemStyle-Width="55%">
                                <ItemTemplate>
                                    <table runat="server" id="tblBar">
                                        <tr class="BarStyle">
                                            <td height="8px"></td>
                                        </tr>
                                    </table>
                                </ItemTemplate>

<HeaderStyle HorizontalAlign="Left"></HeaderStyle>

<ItemStyle Width="55%"></ItemStyle>
                            </asp:TemplateField>
                        </Columns>
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>


</asp:Content>
