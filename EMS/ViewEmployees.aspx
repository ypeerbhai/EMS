<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewEmployees.aspx.cs" Inherits="EMS.ViewEmployees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Retreive Employee Infomation</h2>
    <div style="text-align: center">
           
            <br />
            <br />
            <asp:Label ID="lbEmpNo" runat="server" Text="Enter Employee ID"></asp:Label>
            &nbsp;&nbsp; <asp:TextBox ID="txtEmpID" runat="server" Width="165px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="BtnRetrieveEmp" runat="server" Text="Retrieve Single Employee Infomation" OnClick="BtnRetrieveEmp_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;  
            <asp:Button ID="BtnRetrieveAll" runat="server" Text="Retrieve All Employee Infomation" OnClick="BtnRetrieveAll_Click" />
            <br />
            <br />
            <asp:ListBox ID="LBInfo" runat="server" Height="470px" Visible="False" Width="574px"></asp:ListBox>
            <br />
            <br />
          
        </div>
</asp:Content>
