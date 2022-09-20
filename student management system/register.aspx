<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="student_management_system.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br /> <br />

    <table class="nav-justified">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Register" Font-Size="20"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 263px">&nbsp;</td>
            <td style="width: 296px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 263px">Full Name</td>
            <td style="width: 296px">
                <asp:TextBox ID="Fname" runat="server" OnTextChanged="TextBox1_TextChanged" Width="290px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 263px">&nbsp;</td>
            <td style="width: 296px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 263px">Username</td>
            <td style="width: 296px">
                <asp:TextBox ID="txtname" runat="server" Width="290px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 263px">&nbsp;</td>
            <td style="width: 296px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 263px">Password</td>
            <td style="width: 296px">
                <asp:TextBox ID="txtpass" runat="server" Width="287px" OnTextChanged="TextBox3_TextChanged" TextMode="Password"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 263px; height: 59px;">
                <asp:Label ID="Label2" runat="server" Text="Retype Password"></asp:Label>
            </td>
            <td style="width: 296px; height: 59px;">
                <asp:TextBox ID="txtrepass" runat="server" OnTextChanged="TextBox4_TextChanged" TextMode="Password" Width="284px"></asp:TextBox>
            </td>
            <td style="height: 59px">
                <asp:Label ID="lblmsg" runat="server" ForeColor="#FF3300"></asp:Label>
            </td>
            <td style="height: 59px"></td>
            <td style="height: 59px"></td>
        </tr>
        <tr>
            <td style="width: 263px">&nbsp;</td>
            <td style="width: 296px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="height: 20px">
                <asp:Button ID="onregister" CssClass="btn btn-primary" runat="server" Text="Register" Width="112px" OnClick="Button1_Click" />
                <asp:HyperLink ID="alreg" runat="server" NavigateUrl="~/login.aspx">Already Registered?</asp:HyperLink>
            </td>
            <td style="height: 20px">&nbsp;</td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
    </table>

</asp:Content>
