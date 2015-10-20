<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/Data/Venues/Venue[1]">
<html>
<head>
<meta charset="UTF-8"/>
<title>POD Menu Item Cards</title>
<style>
	.mainDiv {
		width:378px;
		max-width:378px;
		height: 189px;
		max-height:189px;
		display: inline-block;
		padding: 5px;
		margin: 3px;
		border:2px solid black;
		vertical-align:top; }
</style>
</head>
<body>
	
<xsl:for-each select="MealPeriods/MealPeriod/MealStation/MenuItem">
	<div class="mainDiv">
		<h1><xsl:value-of select="@name"/></h1>
		<h4><xsl:value-of select="../../@name"/></h4>
		<h4><xsl:value-of select="../@name"/></h4>
	</div>
</xsl:for-each>
	
</body>
</html>
</xsl:template>
</xsl:stylesheet>