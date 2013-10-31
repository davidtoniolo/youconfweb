<!doctype html>
<html>
	<head>
		[@cms.init /]
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<title>${content.title!}</title>
		
		<link type="text/css" rel="stylesheet" href="/.resources/ycweb-visualization/css/all.css" media="all">
	</head>
	<body>
		<h1>${content.title!}</h1>

		Time: ${model.getCurrentTime()}
		
		START area main
		[@cms.area name="main" /]
		END area main
		
	</body>
</html>