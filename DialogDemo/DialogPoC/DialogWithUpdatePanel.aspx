<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DialogWithUpdatePanel.aspx.cs" Inherits="DialogDemo.Dialog.DialogWithUpdatePanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DialogWithUpdatePanel</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
</head>
<body>
    

    <form id="form1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
               
              <ContentTemplate>
                <asp:LinkButton ID="lnkButton" runat="server" Text="Open Dialog" OnClientClick="openDialog(); return false;" OnClick="lnkButton_Click"></asp:LinkButton>
                <div id="dialog-confirm" title="Confirm Action">
                  <p>Are you sure you want to proceed?</p>
                </div>
              </ContentTemplate>
            </asp:UpdatePanel>

        </div>
    </form>
</body>
</html>

<script type="text/javascript">
    $(function() {
      $("#dialog-confirm").dialog({
        autoOpen: false,
        resizable: false,
        height: "auto",
        width: 400,
        modal: true,
        buttons: {
          "OK": function() {
            $(this).dialog("close");
            // Trigger the server-side OnClick event
            __doPostBack('<%= lnkButton.UniqueID %>', '');
          },
          Cancel: function() {
            $(this).dialog("close");
          }
        }
      });
});

function openDialog() {
  $("#dialog-confirm").dialog("open");
}

</script>
