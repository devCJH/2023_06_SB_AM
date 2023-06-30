<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script>
	let msg = '${msg}'.trim();
	
	//falsy, truthy
	if (msg) {
		alert(msg);
	}
	
	history.back();
</script>