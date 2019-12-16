<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="ZESPOLY">
<html>
<head></head><body>
	<h1>ZESPOŁY:</h1>
<ol>
<xsl:apply-templates select="//NAZWA"/>
</ol>
<br/>
<br/>
<h3>
<ul>
<xsl:apply-templates select="//ZESPOLY/ROW"/>
</ul>
</h3>
</body>
</html>
</xsl:template>
<xsl:template match="//NAZWA">
<li>
<xsl:value-of select="."/>
</li>
</xsl:template>
<xsl:template match="//ZESPOLY/ROW">
<br/>
NAZWA:<xsl:value-of select="NAZWA/."/><br/>
ADRES:<xsl:value-of select="ADRES/."/><br/>
</xsl:template>

</xsl:stylesheet>
