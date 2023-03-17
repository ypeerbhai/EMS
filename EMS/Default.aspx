<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EMS._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Welcome to the Employee Management System</h1>

    </div>

<div style="text-align: center; margin-left: 40px;">

            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Button ID="BtnCreate" runat="server" Height="80px" Text="Create Employee" Width="165px" BackColor="#3399FF" OnClick="BtnCreate_Click"  />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnUpdate" runat="server" Height="80px" Text="Update Employee" Width="165px" BackColor="Lime" OnClick="BtnUpdate_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnDelete" runat="server" Height="80px" Text="Delete Employee " Width="165px" BackColor="Yellow" OnClick="BtnDelete_Click"  />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="BtnView" runat="server" Height="80px" Text="View Employees" Width="165px" BackColor="Red" OnClick="BtnView_Click" />
            <br />
            <br />
        </div>

</asp:Content>
