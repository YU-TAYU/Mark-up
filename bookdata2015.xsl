<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" version="4.01" encoding="UTF-8" indent="yes" />

<xsl:template match="/">

   <xsl:apply-templates select="books/item[date/year=2015]" />
</xsl:template>

 <xsl:template match="books/item">

<item>
    <title><xsl:value-of select ="title" /></title>
    <creator><xsl:value-of select ="creator" /></creator> 
    <publisher><xsl:value-of select = "publisher" /></publisher>
    <description><xsl:value-of select = "description" /></description>
    <price><xsl:value-of select = "price" /></price>
    <date>
      <year><xsl:value-of select = "date/year" /></year>
      <month><xsl:value-of select = "date/month" /></month>
      <day><xsl:value-of select = "day" /></day>
    </date>
    <isbn><xsl:value-of select = "isbn" /></isbn>
    <keywords><xsl:value-of select = "keywords" /></keywords>
    <url><xsl:value-of select = "url/@resource" /></url>
    </item><xsl:text>

</xsl:text>
       

</xsl:template>


</xsl:stylesheet>
