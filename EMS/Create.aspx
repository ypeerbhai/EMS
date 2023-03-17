<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="EMS.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Create New Employees</h2>
   <div  style="text-align: center">
            
            <br />
            <br />
            <asp:Label ID="EmpNameLB" runat="server" Text="Enter Employee Name :"></asp:Label>
            &nbsp;&nbsp;<asp:TextBox ID="txtName" runat="server" Width="165px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="EmpSurnameLB" runat="server" Text="Enter Employee Surname :  "></asp:Label>
            &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtSurname" runat="server" Width="165px"></asp:TextBox>
            <br />
            <br />
       <asp:Label ID="EmpAddLB" runat="server" Text="Enter Employee Address :  "></asp:Label>
            &nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtAddress" runat="server" Width="165px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="BtnCreate" runat="server" Text="Create New Employee" OnClick="BtnCreate_Click"  />
            <br />
            <br />
          <asp:Label ID="lblCreated" runat="server" ForeColor="Green" Text="Created" Visible="False"></asp:Label>
            &nbsp;&nbsp; &nbsp;&nbsp;
          <asp:Label ID="lblNotCreated" runat="server" ForeColor="Red" Text="Not Created" Visible="False"></asp:Label>

       </div>
</asp:Content>
