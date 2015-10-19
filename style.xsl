<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/Data/Venues/Venue[1]">
<html>
<head>
<meta charset="UTF-8"/>
<title>POD Menu</title>
<style>
html, body { display: flex; flex-flow: column wrap; margin: 0; padding: 0; font-size: 1.1em; font-family: sans-serif; min-height: 100%; max-width: 960px; } @media screen { body { padding: 32px; } } .vegetarian { color: #ac2b37; } .vegan { color: #ac2b37; font-style: italic; } .header { background-image: url('/static/img/Dining-Services_Subranded_Print_black.png'); background-origin: content-box; background-position: top right; background-repeat: no-repeat; background-size: 30%; border: 1px #000 solid; margin-bottom: 16px; padding: 8px 8px 8px 8px; text-align: center; -webkit-print-color-adjust: exact; } .header:before { content: ''; position: absolute; background-size: 100%; background-image: url('/static/img/WPIEATS_SocialMediaBanner_WhiteBG_Blacktext.png'); margin-left: -150px; width: 300px; height: 48px; -webkit-print-color-adjust: exact; } .header h1 { margin-top: 48px; } .meal-periods { flex: 1; display: flex; align-items: stretch; align-content: stretch; } .meal-period { flex: 1; border: 1px #000 solid; margin-right: 16px; margin-bottom: 16px; padding: 8px; float: left; } .meal-period:last-child { margin-right: 0; } .footer { clear: both; line-height: .5em; } h2 { text-align: center; } h3 { text-decoration: underline; } .menu-item::after { content: ', '; } .menu-item:last-child::after { content: ''; } @media print { .easter-egg { display: block; font-size: 8px; color: #f8f8f8; position: absolute; right: 0; bottom: 0; -webkit-print-color-adjust: exact; } }
</style>
</head>
<body>
<div class="header">
<h1>POD Menu</h1>
<h2>Tuesday, October 06, 2015</h2>
</div>
<div class="meal-periods">
<xsl:for-each select="MealPeriods/MealPeriod[@name='Lunch' or @name='Dinner']">
<div class="meal-period">
<h2>
<xsl:value-of select="@name"/>
</h2>
<xsl:for-each select="MealStation">
<div class="meal-station">
<h3>
<xsl:value-of select="@name"/>
</h3>
<xsl:for-each select="MenuItem">
<xsl:choose>
<xsl:when test="Categories/Category[text()[contains(.,'Vegetarian')]]">
<span class="menu-item vegetarian">
<xsl:value-of select="@name"/>
*
</span>
</xsl:when>
<xsl:when test="Categories/Category[text()[contains(.,'Vegan')]]">
<span class="menu-item vegan">
<xsl:value-of select="@name"/>
**
</span>
</xsl:when>
<xsl:otherwise>
<span class="menu-item">
<xsl:value-of select="@name"/>
</span>
</xsl:otherwise>
</xsl:choose>
</xsl:for-each>
</div>
</xsl:for-each>
</div>
</xsl:for-each>
</div>
<div class="footer">
<p class="vegetarian">* Vegetarian</p>
<p class="vegan">** Vegan</p>
</div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>