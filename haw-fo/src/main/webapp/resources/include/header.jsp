<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<title>${browserTitle }</title>

<meta name="subject" content="${menuTitle }">
<meta name="title" content="${browserTitle }">

<meta name="reply-to" content="관리자">
<meta name="email" content="support@hep.re.kr">

<meta name="author-date" content="201703">
<meta name="date" content="201703">
<meta name="location" content="Ko">
<meta name="copyright" content="Copyrightⓒ HEP Corp., All Rights Reserved.">

<meta property="og:title" content="${browserTitle }">
<meta property="og:site_name" content="${browserTitle }">
<meta property="og:type" content="${menuTitle }">
<meta property="og:url" content="localhost">
<meta property="og:description" content="${browserTitle }">

<link rel="shortcut icon" href="<c:url value="/resources/images/favicon.ico" />" />

<script type="text/javascript" charset="UTF-8" src="/resources/js/jquery-3.2.0/jquery.js"></script>
<script type="text/javascript" charset="UTF-8" src="/resources/js/common.js"></script>
<script src="https://www.w3schools.com/lib/w3data.js"></script>
<script> document.onload = function(){ w3IncludeHTML(); }; </script>