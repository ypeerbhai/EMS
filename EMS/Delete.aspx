<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="EMS.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Delete Employee</h2>
   <div  style="text-align: center">
   <br />
            <br />
            <asp:Label ID="EmpNumLB" runat="server" Text="Enter Employee ID :"></asp:Label>
            &nbsp;&nbsp;<asp:TextBox ID="txtEmpID" runat="server" Width="165px"></asp:TextBox>
         <br />
            <br />
          <asp:Label ID="lblDeleted" runat="server" ForeColor="Green" Text="Deleted" Visible="False"></asp:Label>
            &nbsp;&nbsp; &nbsp;&nbsp;
          <asp:Label ID="lblNotDeleted" runat="server" ForeColor="Red" Text="Not Deleted" Visible="False"></asp:Label>
        <br />
            <br />
            <asp:Button ID="BtnDelete" runat="server" Text="Delete Employee" OnClick="BtnDelete_Click"  />
       </div>
</asp:Content>
