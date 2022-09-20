<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StudentInfo.aspx.cs" Inherits="student_management_system.StudentInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript" language="javascript">
     function DisableBackButton() {
       window.history.forward()
      }
     DisableBackButton();
     window.onload = DisableBackButton;
     window.onpageshow = function(evt) { if (evt.persisted) DisableBackButton() }
     window.onunload = function() { void (0) }
    </script>
    <br /> <br />

    <table class="nav-justified">
        <tr>
            <td colspan="2">
                <asp:Label ID="lblTitle" runat="server" Text="Student Information"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="sesslbl" runat="server"></asp:Label>
                <asp:Button ID="btnLogout" runat="server" CssClass="btn btn-danger" Text="Logout" OnClick="btnLogout_Click" />
            </td>
        </tr>
        <tr>
            <td style="height: 20px; width: 341px">
                <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
            </td>
            <td style="height: 20px; width: 414px;">
                <asp:TextBox ID="txtname" runat="server" Width="201px"></asp:TextBox>
            </td>
            <td colspan="2" rowspan="9">
                <asp:GridView ID="dgViewStudents" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="SqlDataSource1" Height="188px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="483px">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                        <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate" DataFormatString ="{0:MM/dd/yyyy}" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbCon %>" SelectCommand="SELECT * FROM [Students]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 341px">
                <asp:Label ID="lblemail" runat="server" Text="Email"></asp:Label>
            </td>
            <td style="width: 414px">
                <asp:TextBox ID="txtemail" runat="server" Width="201px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 341px">
                <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
            </td>
            <td style="width: 414px">
                <asp:DropDownList ID="txtgender" runat="server">
                    <asp:ListItem>Choose any</asp:ListItem>
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                    <asp:ListItem>Others</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 341px">
                <asp:Label ID="lbldob" runat="server" Text="Date Of Birth"></asp:Label>
            </td>
            <td style="width: 414px">
                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 341px">&nbsp;</td>
            <td style="width: 414px">
                <asp:CheckBox ID="txtchk" CssClass="form-check-input" runat="server" Text="Yes, I Agree" />
            &nbsp;
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 341px">&nbsp;</td>
            <td style="width: 414px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 341px">
                <asp:Label ID="lblsid" runat="server" Visible="False"></asp:Label>
            </td>
            <td style="width: 414px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 341px">&nbsp;</td>
            <td style="width: 414px">
                <asp:Button ID="btnAdd" CssClass="btn btn-primary" runat="server" Text="Add" OnClick="btnAdd_Click" />
                <asp:Button ID="btnUpdate" CssClass="btn btn-success" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                <asp:Button ID="btnDelete" CssClass="btn btn-danger" runat="server" Text="Delete" OnClick="btnDelete_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 341px">&nbsp;</td>

            <td style="width: 414px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 341px">&nbsp;</td>
            <td style="width: 414px">
                <asp:Button ID="btnCancel" CssClass="btn btn-warning" runat="server" Text="Cancel operations" Width="235px" OnClick="btnCancel_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 341px">&nbsp;</td>
            <td style="width: 414px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>
