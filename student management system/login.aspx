<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="student_management_system.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /> <br />

<table class="nav-justified">
    <tr>
        <td colspan="2">
            <asp:Label ID="Label1" runat="server" Font-Size="Larger" Text="Login"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 141px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 141px">
            <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Username"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="Uname" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 141px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 141px">
            <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Password"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="Upass" runat="server" TextMode="Password"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 141px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="modal-sm" style="width: 141px">
            <asp:Button ID="onlogin" runat="server" CssClass="btn btn-primary" Font-Size="Medium" OnClick="onlogin_Click" Text="Login" />
        </td>
        <td>
            <asp:Label ID="lblmsg" runat="server" ForeColor="#FF3300"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>

</asp:Content>
