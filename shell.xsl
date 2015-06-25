<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="text" encoding="UTF-8" indent="yes" />

<xsl:template match="/">

 <xsl:apply-templates select="books/item" />
</xsl:template>

 <xsl:template match="item">
<xsl:variable name="year" select="date/year"/>  
 xsltproc -o <xsl:value-of select = "$year" />.html -param no "'<xsl:value-of select= "$year" />'" 
 books.xsl bookdata.xml
       
</xsl:template>


</xsl:stylesheet>
