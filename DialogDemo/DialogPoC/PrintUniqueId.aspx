<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PrintUniqueId.aspx.cs" Inherits="DialogDemo.PrintUniqueId" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:UserControl ID="UserControl1" runat="server">
              <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                  <asp:TemplateField>
                    <ItemTemplate>
                      <asp:LinkButton ID="LinkButton1" runat="server" Text="Click Me" OnClick="LinkButton1_Click"></asp:LinkButton>
                    </ItemTemplate>
                  </asp:TemplateField>
                </Columns>
              </asp:GridView>
            </asp:UserControl>

        </div>
    </form>
</body>
</html>
