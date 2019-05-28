<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Item.aspx.cs" Inherits="WebApplication5.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="ItemName" DataSourceID="SqlDataSource1" ShowFooter="True">
                <Columns>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="更新" OnClick="LinkButton1_Click1"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消"></asp:LinkButton>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯"></asp:LinkButton>
                            &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除"></asp:LinkButton>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:LinkButton OnClick="lbInsert_Click" ID="lbInsert" runat="server" CausesValidation="True" ValidationGroup="ins">新增</asp:LinkButton>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ItemName" SortExpression="ItemName">
                        <EditItemTemplate>
                            <asp:Label ID="TextBox1" runat="server" Text='<%# Eval("ItemName") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ItemName") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvInsertName" runat="server" ErrorMessage="Name 欄位不得為空白" 
                                ControlToValidate="TextName" Text="*" ForeColor="Red" ValidationGroup="ins"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ItemWeight" SortExpression="ItemWeight">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("ItemWeight") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditHP" runat="server" ErrorMessage="Weight 欄位不得為空白" 
                                ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("ItemWeight") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextWeight" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvInsertHP" runat="server" ErrorMessage="HP 欄位不得為空白" 
                                ControlToValidate="TextWeight" Text="*" ForeColor="Red" ValidationGroup="ins"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
            <asp:LinkButton ID="lkbtnDashboard3" runat="server" OnClick="lkbtnDashboard3_Click">返回至會員功能頁面</asp:LinkButton>
            <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" ValidationGroup="ins"/>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MemberConnectionString %>" DeleteCommand="DELETE FROM [Item] WHERE [ItemName] = @ItemName" InsertCommand="INSERT INTO [Item] ([ItemName], [ItemWeight]) VALUES (@ItemName, @ItemWeight)" SelectCommand="SELECT * FROM [Item]" UpdateCommand="UPDATE [Item] SET [ItemWeight] = @ItemWeight WHERE [ItemName] = @ItemName">
                <DeleteParameters>
                    <asp:Parameter Name="ItemName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ItemName" Type="String" />
                    <asp:Parameter Name="ItemWeight" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ItemWeight" Type="Int32" />
                    <asp:Parameter Name="ItemName" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
