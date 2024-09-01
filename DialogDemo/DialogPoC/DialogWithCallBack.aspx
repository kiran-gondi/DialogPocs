<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DialogWithCallBack.aspx.cs" Inherits="DialogDemo.DialogPoC.DialogWithCallBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DialogWithCallBack</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
</head>
<body>
    <%--<form id="form1" runat="server">--%>
        
        <button id="open-dialog-button">Open Dialog</button>


        <div id="dialog-confirm" title="Confirm Action" >
          <p>Are you sure you want to proceed?</p>
        </div>

    <%--</form>--%>
</body>
</html>

<script type="text/javascript">
    $(function () {
        function openDialog(callback) {
            
            $("#dialog-confirm").dialog({
                autoOpen: false,
                resizable: false,
                height: "auto",
                width: 400,
                modal: true,
                buttons: {
                    "OK": function () {
                        debugger;
                        $(this).dialog("close");
                        callback(true); // Return true for OK
                    },
                    Cancel: function () {
                        debugger;
                        $(this).dialog("close");
                        callback(false); // Return false for Cancel
                    }
                }
            }).dialog("open");
        }

        // Example usage: Open the dialog and handle the result
        $("#open-dialog-button").click(function () {
            debugger;
            openDialog(function (result) {
                debugger;
                if (result) {
                    console.log("User confirmed the action.");
                    // Perform actions based on the result
                } else {
                    console.log("User canceled the action.");
                    // Perform actions based on the result
                }
            });
        });
    });

</script>