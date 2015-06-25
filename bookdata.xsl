<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" version="4.01" encoding="UTF-8" indent="yes" />

<xsl:template match="/">
 <html lang="ja">
    <head>
      <title>
    <xsl:value-of select="books/item[@date/year]" />年に出版された本
      </title>
    </head>
    <body>
   <xsl:apply-templates select="books/item[@date/year]" /><br/>
	</body>
</html>
</xsl:template>

 <xsl:template match="books/item">
 <li>
        <xsl:value-of select ="title" />
</li>
</xsl:template>


</xsl:stylesheet>
