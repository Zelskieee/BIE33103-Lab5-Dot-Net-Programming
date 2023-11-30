<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="PieChart.aspx.cs" Inherits="Lab5.MasterPages.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../style.css/StylePieChart.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Pie Chart Generated from Database</h1>
<p>
    <div class="pie">
    <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSourceStudent" Height="400px" Width="400px">
        <Series>
            <asp:Series Name="Series1" ChartType="Pie" XValueMember="programme" YValueMembers="Id">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSourceStudent" runat="server" ConnectionString="<%$ ConnectionStrings:TestDatabaseConnectionString %>" SelectCommand="SELECT * FROM [student]"></asp:SqlDataSource>
    </div>
    </p>
</asp:Content>
