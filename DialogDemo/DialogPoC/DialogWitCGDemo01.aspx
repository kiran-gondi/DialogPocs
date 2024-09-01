<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DialogWitCGDemo01.aspx.cs" Inherits="DialogDemo.DialogPoC.DialogWitCGDemo01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>DialogWitCGDemo01</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
</head>

<body>
    <form id="form1" runat="server">
            <asp:LinkButton 
            ID="myLinkButton" 
            runat="server" 
            Text="Submit" 
            OnClientClick="return showConfirmationDialog();" 
            OnClick="myLinkButton_Click" />

            <div id="confirmationDialog" title="Confirm Action" style="display:none;">
            <p>Are you sure you want to proceed?</p>
            </div>
        </form>
</body>
</html>

<script type="text/javascript">
    <%--function showConfirmationDialog() {
        // Prevent the default postback
        //event.preventDefault();

        // Open the jQuery UI dialog
        $("#confirmationDialog").dialog({
            resizable: false,
            height: "auto",
            width: 400,
            modal: true,
            buttons: {
                "OK": function () {
                    // User confirmed, close dialog and proceed
                    $(this).dialog("close");
                    // Programmatically click the LinkButton to trigger postback
                    $('#<%= myLinkButton.ClientID %>').trigger('click', [true]);
                },
                "Cancel": function () {
                    // User canceled, close dialog and do nothing
                    $(this).dialog("close");
                }
            }
        });

        // Return false to prevent the default postback behavior until user confirms
        return false;
    }

    // Listen for the trigger click event to handle postback manually
    $(document).on('click', '#<%= myLinkButton.ClientID %>', function (event, isConfirmed) {
        // If confirmed is true, allow postback to occur
        if (isConfirmed) {
            // Allow postback
            return true;
        }

        // Prevent default action (postback) if not confirmed
        return false;
    });--%>

    function showConfirmationDialog() {
        // Open the jQuery UI dialog
        $("#confirmationDialog").dialog({
            resizable: false,
            height: "auto",
            width: 400,
            modal: true,
            buttons: {
                "OK": function () {
                    // User confirmed, close dialog
                    $(this).dialog("close");
                    debugger;
                    // Manually trigger the postback using a hidden form submission
                    document.getElementById("<%= myLinkButton.ClientID %>").onclick = function() {};
                    document.getElementById("<%= myLinkButton.ClientID %>").click();
                },
                "Cancel": function () {
                    // User canceled, close dialog
                    $(this).dialog("close");
                }
            }
        });

        // Prevent the default postback until confirmation
        return false;
    }
    
    
</script>