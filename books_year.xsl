<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" version="4.01" encoding="UTF-8" indent="yes" />
<xsl:template match="/">
  <html lang="ja">
    <head>
  <title><xsl:value-of select="$no" />年</title>
    </head>
    <body>
      <h1><xsl:value-of select="$no" />年に出版された本</h1>
      <div>作成日：<xsl:value-of select="books/metadata/date_created" /></div>
      <div><xsl:value-of select="count(books/item[date/year=$no])" />件のメタデータ</div><br/>
      <h2>タイトル</h2>
    
      <xsl:apply-templates select="books/item[date/year=$no]" />
     
    </body>

    <a href="books_top.html">TOP</a>

  </html>
</xsl:template>

<xsl:template match="books/item">
 <table>
  
 <li><a href="{concat(@no,'.html')}"> <xsl:value-of select="title" /></a></li>
 </table>
<br/>




</xsl:template>


</xsl:stylesheet>
