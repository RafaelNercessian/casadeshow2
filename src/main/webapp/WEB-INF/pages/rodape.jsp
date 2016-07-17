
<!-- FOOTER -->
<footer class="">
    <div class="container">
		<p class="text-muted">&copy; 2016 CasaDeShow, Inc</p>
	</div>
</footer>

</div>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="<c:url value="/resources/js/jquery-ui.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap-datepicker.js"/>"></script>
<script src="<c:url value="/resources/js/datepicker-pt.js"/>"></script>
<script>
	$(function() {
		$.datepicker.setDefaults($.datepicker.regional["pt-BR"]);
		$('#data').datepicker({
			format : "dd/mm/yyyy"
		});
	});
</script>
<script>
	$('#mensagem').delay(1000).fadeOut();
</script>

<script>
	function formSubmit() {
		document.getElementById("logoutForm").submit();
	}
</script>

</body>
</html>
