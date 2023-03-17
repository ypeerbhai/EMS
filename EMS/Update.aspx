<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="EMS.Update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Update Employees</h2>
   <div  style="text-align: center">
            
            <br />
            <br />
            <asp:Label ID="EmpNameLB" runat="server" Text="Enter Employee Name :"></asp:Label>
            &nbsp;&nbsp;<asp:TextBox ID="txtName" runat="server" Width="165px"></asp:TextBox>
             <br />
            <br />
            <asp:Label ID="EmpAddLB" runat="server" Text="Enter Employee Name :"></asp:Label>
            &nbsp;&nbsp;<asp:TextBox ID="txtAddress" runat="server" Width="165px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="BtnUpdate" runat="server" Text="Update Employee" OnClick="BtnUpdate_Click" />
            <br />
            <br />
          <asp:Label ID="lblUpdated" runat="server" ForeColor="Green" Text="Created" Visible="False"></asp:Label>
            &nbsp;&nbsp; &nbsp;&nbsp;
          <asp:Label ID="lblNotUpdated" runat="server" ForeColor="Red" Text="Not Created" Visible="False"></asp:Label>
          <br />
            <br />
            <asp:Button ID="BtnView" runat="server" Text="View Updated Employee" OnClick="BtnView_Click"  />
              <br />
            <br />
            <asp:ListBox ID="lbCreateUpdateView" runat="server" Height="312px" Visible="False" Width="352px"></asp:ListBox>
       </div>
</asp:Content>
