</main>
<div id="modal1" class="modal">
    <div class="modal-content">
        <p class="alertModelText"></p>
    </div>
    <div class="modal-footer">
        <a href="#!" class=" modal-action modal-close waves-effect waves-green btn-flat modalOK">OK</a>
        <a href="#!" class=" modal-action modal-close waves-effect waves-red btn-flat modalCancel">Cancel</a>
    </div>
</div>
<script>
    var ModalFunc = {};

    function alert2(text, success, failure) {
        $(".modal .alertModelText").text(text);
        if (success) {
            $(".modal .modalOK").show();
            ModalFunc.ok = success;
        } else {
            $(".modal .modalOK").hide();
        }
        if (failure) {
            $(".modal .modalCancel").show();
            ModalFunc.cancel = failure;
        } else {
            $(".modal .modalCancel").hide();
        }
        $('#modal1').openModal();
    }
    $(".modal .modalOK").click(function () {
        ModalFunc.ok();
    });
    $(".modal .modalCancel").click(function () {
        ModalFunc.cancel();
    });
</script>

	<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.js" type="text/javascript"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js" type="text/javascript"></script>
</body>

</html>