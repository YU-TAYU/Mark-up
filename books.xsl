<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" version="4.01" encoding="UTF-8" indent="yes" />
<xsl:template match="/">

  <html lang="ja">
    <head>
  <title>No.<xsl:value-of select="$no" /></title>
    </head>
    <body>

      <xsl:apply-templates select="books/item[@no=$no]" />
     
    </body>
  </html>

</xsl:template>

<xsl:template match="books/item">

 <table>
 <li>タイトル: <a href="{url/@resource}"> <xsl:value-of select="title" /></a> </li>

 <li>著者名 : <xsl:value-of select="creator" /></li>
 <li>出版社 : <xsl:value-of select="publisher" /></li>
 <li>出版日 : <xsl:value-of select="date/year" />-<xsl:value-of select="date/month" />-<xsl:value-of select="date/day" /></li>
 <li>価格 : <xsl:value-of select="price" />円</li>
 <li>ISBN : <xsl:value-of select="isbn" /></li>
 <li>キーワード <xsl:value-of select="keywords" /></li>
 </table>
<br/>
<a href="{concat(date/year,'.html')}" ><xsl:value-of select="date/year" />年</a>
<br/><a href="books_top.html">TOP</a>



</xsl:template>


</xsl:stylesheet>
