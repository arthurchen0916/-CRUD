<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="MonsterName" DataSourceID="SqlDataSource1" ShowFooter="True">
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
                    <asp:TemplateField HeaderText="MonsterName" SortExpression="MonsterName">
                        <EditItemTemplate>
                            <asp:Label ID="TextBox1" runat="server" Text='<%# Eval("MonsterName") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("MonsterName") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextName" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvInsertName" runat="server" ErrorMessage="Name 欄位不得為空白" 
                                ControlToValidate="TextName" Text="*" ForeColor="Red" ValidationGroup="ins"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="MonsterHP" SortExpression="MonsterHP">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("MonsterHP") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditHP" runat="server" ErrorMessage="HP 欄位不得為空白" 
                                ControlToValidate="TextBox2" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("MonsterHP") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextHP" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvInsertHP" runat="server" ErrorMessage="HP 欄位不得為空白" 
                                ControlToValidate="TextHP" Text="*" ForeColor="Red" ValidationGroup="ins"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="MonsterATK" SortExpression="MonsterATK">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("MonsterATK") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditATK" runat="server" ErrorMessage="ATK 欄位不得為空白" 
                                ControlToValidate="TextBox3" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("MonsterATK") %>'></asp:Label>
                        </ItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="TextATK" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvInsertATK" runat="server" ErrorMessage="ATK 欄位不得為空白" 
                                ControlToValidate="TextATK" Text="*" ForeColor="Red" ValidationGroup="ins"></asp:RequiredFieldValidator>
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="MonsterExp" SortExpression="MonsterExp">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("MonsterExp") %>'></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvEditExp" runat="server" ErrorMessage="Exp 欄位不得為空白" 
                                ControlToValidate="TextBox4" Text="*" ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("MonsterExp") %>'></asp:Label>
                        </ItemTemplate>
                         <FooterTemplate>
                            <asp:TextBox ID="TextExp" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rfvInsertExp" runat="server" ErrorMessage="Exp 欄位不得為空白" 
                                ControlToValidate="TextExp" Text="*" ForeColor="Red" ValidationGroup="ins"></asp:RequiredFieldValidator>
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
            <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" ValidationGroup="ins"/>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:MonsterConnectionString %>" 
                DeleteCommand="DELETE FROM [MonsterData] WHERE [MonsterName] = @MonsterName" 
                InsertCommand="INSERT INTO [MonsterData] ([MonsterName], [MonsterHP], [MonsterATK], [MonsterExp]) VALUES (@MonsterName, @MonsterHP, @MonsterATK, @MonsterExp)" SelectCommand="SELECT * FROM [MonsterData]" 
                UpdateCommand="UPDATE [MonsterData] SET [MonsterHP] = @MonsterHP, [MonsterATK] = @MonsterATK, [MonsterExp] = @MonsterExp WHERE [MonsterName] = @MonsterName" ProviderName="<%$ ConnectionStrings:MonsterConnectionString.ProviderName %>">
                <DeleteParameters>
                    <asp:Parameter Name="MonsterName" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MonsterName" Type="String" />
                    <asp:Parameter Name="MonsterHP" Type="String" />
                    <asp:Parameter Name="MonsterATK" Type="String" />
                    <asp:Parameter Name="MonsterExp" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MonsterHP" Type="String" />
                    <asp:Parameter Name="MonsterATK" Type="String" />
                    <asp:Parameter Name="MonsterExp" Type="String" />
                    <asp:Parameter Name="MonsterName" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
    </form>
</body>
</html>
