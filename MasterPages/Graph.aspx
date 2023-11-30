<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="Graph.aspx.cs" Inherits="Lab5.MasterPages.WebForm3" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../style.css/StyleGraph.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Sample of graph generated from database</h1>
<p>

    <div class="chart">
    <asp:Chart ID="Chart1" runat="server" Height="400px" Width="400px" DataSourceID="SqlDataSourceSumm">
        <series>
            <asp:Series Name="Series1" XValueMember="programme" YValueMembers="class">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea Name="ChartArea1">
            </asp:ChartArea>
        </chartareas>
    </asp:Chart>
        <asp:SqlDataSource ID="SqlDataSourceSumm" runat="server" ConnectionString="<%$ ConnectionStrings:TestDatabaseConnectionString %>" SelectCommand="SELECT * FROM [classSumm]"></asp:SqlDataSource>
    </div>
</p>


</asp:Content>
