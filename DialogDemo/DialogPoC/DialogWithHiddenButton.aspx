﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DialogWithHiddenButton.aspx.cs" Inherits="DialogDemo.DialogWithHiddenButton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DialogWithHiddenButton</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">/
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton ID="LinkButton1" runat="server" Text="Submit" 
                OnClientClick="showModal(); return false;" />

            <asp:Button ID="HiddenButton" runat="server" OnClick="LinkButton1_Click" style="display:none;" />

            <!-- jQuery UI Dialog -->
            <div id="confirmationDialog" title="Confirmation" style="display:none;">
                <p>Are you sure you want to proceed?</p>
            </div>


        </div>
    </form>
</body>
</html>

<script type="text/javascript">
    function showModal() {
        $("#confirmationDialog").dialog({
            resizable: false,
            height: "auto",
            width: 400,
            modal: true,
            buttons: {
                "OK": function() {
                    $(this).dialog("close");
                    $("#<%= HiddenButton.ClientID %>").click();
                },
                Cancel: function() {
                    $(this).dialog("close");
                }
            }
        });
    }
</script>
