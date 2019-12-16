<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xhtml="http://www.w3.org/1999/xhtml">
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
<xsl:apply-templates select="//ZESPOLY/ROW"/>
</h3>
</body>
</html>	
</xsl:template>
<xsl:template match="//NAZWA">
<li>
<a href="#NAZWA"><xsl:value-of select="."/></a>
</li>
</xsl:template>
<xsl:template match="//ZESPOLY/ROW">
<br/>
<h2 id="NAZWA"> NAZWA:<xsl:value-of select="NAZWA/."/><br/>
ADRES:<xsl:value-of select="ADRES/."/><br/>
</h2>
<table border="1">
<tr> 
<td>Nazwisko</td>
<td>Etat</td>
<td>Zatrudniony</td> 
<td>Placa pod.</td>
<td>Id szefa</td>
</tr>
<xsl:for-each select="PRACOWNICY/ROW">
<xsl:sort select="NAZWISKO"/>
<tr>
<td><xsl:value-of select="NAZWISKO/."/></td>
<td><xsl:value-of select="ETAT/."/></td>
<td><xsl:value-of select="ZATRUDNIONY/."/></td>
<td><xsl:value-of select="PLACA_POD/."/></td>
<td><xsl:value-of select="ID_SZEFA/."/></td>
</tr>
</xsl:for-each>
</table>
</xsl:template>
</xsl:stylesheet>
