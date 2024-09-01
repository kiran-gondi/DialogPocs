<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModalDemo.aspx.cs" Inherits="DialogDemo.ModalDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton ID="LinkButton1" runat="server" Text="Submit" 
    OnClientClick="showModal(); return false;" 
    OnClick="LinkButton1_Click" />

<!-- Modal -->
<div class="modal fade" id="confirmationModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Confirmation</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
        Are you sure you want to proceed?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-primary" onclick="confirmAction()">OK</button>
      </div>
    </div>
  </div>
</div>

        </div>
    </form>
</body>
</html>

<script type="text/javascript">
    function showModal() {
        $('#confirmationModal').modal('show');
    }

    function confirmAction() {
        $('#confirmationModal').modal('hide');
        __doPostBack('<%= LinkButton1.UniqueID %>', '');
    }
</script>

