<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DialogWithoutScriptManager.aspx.cs" Inherits="DialogDemo.DialogPoC.DialogWithoutScriptManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <telerik:RadGrid ID="RadGrid1" runat="server" AutoGenerateColumns="False" OnNeedDataSource="RadGrid1_NeedDataSource">
  <MasterTableView>
    <Columns>
      <telerik:GridTemplateColumn UniqueName="TemplateColumn">
        <ItemTemplate>
          <asp:LinkButton ID="lnkButton" runat="server" Text="Open Dialog" OnClientClick="openDialog(this); return false;" OnClick="lnkButton_Click"></asp:LinkButton>
        </ItemTemplate>
      </telerik:GridTemplateColumn>
    </Columns>
  </MasterTableView>
</telerik:RadGrid>

<div id="dialog-confirm" title="Confirm Action">
  <p>Are you sure you want to proceed?</p>
</div>

</body>
</html>

<script type="text/javascript">
    $(function () {
        $("#dialog-confirm").dialog({
            autoOpen: false,
            resizable: false,
            height: "auto",
            width: 400,
            modal: true,
            buttons: {
                "OK": function () {
                    $(this).dialog("close");
                    // Trigger the server-side OnClick event
                    var button = $(this).data('button');
                    __doPostBack(button.name, '');
                },
                Cancel: function () {
                    $(this).dialog("close");
                }
            }
        });
    });

    function openDialog(button) {
        $("#dialog-confirm").data('button', button).dialog("open");
    }

</script>