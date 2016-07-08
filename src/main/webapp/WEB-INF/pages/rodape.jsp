
<!-- FOOTER -->
<footer>
	<p class="pull-right">
		<a href="#">Back to top</a>
	</p>
	<p>&copy; 2016 CasaDeShow, Inc</p>
</footer>

</div>
<!-- /.container -->


<!-- Bootstrap core JavaScript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
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
