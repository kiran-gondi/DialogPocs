<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DialogDemo2.aspx.cs" 
    Inherits="DialogDemo.DialogPoC.DialogDemo2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DialogDemo2</title>
      <%--<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>--%>
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>

    <script>
        function showDialog() {
            $("#dialog").dialog({
                modal: true,
                buttons: {
                    "OK": function () {
                        debugger;
                        var param1 = "value1"; // Replace with your actual parameter value
                        var param2 = "value2"; // Replace with your actual parameter value
                        //__doPostBack('<%= lnkButton.UniqueID %>', param1 + ',' + param2);
                        __doPostBack('<%= lnkButton.UniqueID %>', '');
                        $(this).dialog("close");
                    },
                    "Cancel": function() {
                        $(this).dialog("close");
                    }
                }
            });
            return false; // Prevent default postback
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div id="dialog" title="Confirmation" style="display:none;">
            <p>Are you sure you want to proceed?</p>
        </div>
        <asp:LinkButton ID="lnkButton" runat="server" OnClick="lnkButton_Click" 
            OnClientClick="return showDialog();" Text="Open Dialog" />
        </div>
    </form>
</body>
</html>
