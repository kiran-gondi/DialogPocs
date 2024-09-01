<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dialog.aspx.cs" Inherits="DialogDemo1.Dialog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>jQuery Dialog with ASP:LinkButton</title>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="myDialog" title="Basic Dialog">
            <p>This is a basic dialog box.</p>
        </div>
        <asp:LinkButton ID="openDialog" runat="server" 
            OnClientClick="openDialog(); return false;"
            OnClick="DownloadPdf_Click">Open Dialog</asp:LinkButton>
    </form>
</body>
</html>

<script>
    $(document).ready(function() {
        $("#myDialog").dialog({
            autoOpen: false,
            modal: true,
            buttons: {
                "OK": function() {
                    $(this).dialog("close");
                }
            }
        });
    });

    function openDialog() {
        $("#myDialog").dialog("open");
    }
</script>

