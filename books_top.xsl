<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" version="4.01" encoding="UTF-8" indent="yes" />
<xsl:template match="/">

  <html lang="ja">
    <head>
  <title>書誌情報一覧</title>
    </head>

      <h1>出版年別書誌情報一覧表</h1>

      <xsl:apply-templates select="books/item" >
        <xsl:sort select="date/year" data-type="number" order="ascending" />
      </xsl:apply-templates>

   </html>
 </xsl:template>


<xsl:template match="books/item">
<xsl:variable name="no" select="date/year" />
 <li><a href="<xsl:value-of select="date/year">.html" > <xsl:value-of select="date/year" />年</a></li>
<br/>

</xsl:template>
</xsl:stylesheet>