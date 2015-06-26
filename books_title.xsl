<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" version="4.01" encoding="UTF-8" indent="yes" />

<xsl:template match="/">
 
  <html lang="ja">
    <head>
  <title>No.<xsl:value-of select="books/item[@no=$no]" /></title>
    </head>
    <body>
      <h1>No.<xsl:value-of select="books/item[@no=$no]" /></h1>
      <xsl:apply-templates select="books/item[@no=$no]" />
    </body>
  </html>
</xsl:template>

<xsl:template match="books/item">
<xsl:param name="no" />
 <table>
 <li>タイトル <a href="{url/@resource}"> <xsl:value-of select="title" /></a> </li>

 <li>著者名 : <xsl:value-of select="creator" /></li>
 <li>出版者 : <xsl:value-of select="publisher" /></li>
 <li>出版日 : <xsl:value-of select="date" /></li>
 <li>価格 : <xsl:value-of select="price" />円</li>
 <li>ISBN : <xsl:value-of select="isbn" /></li>
 <li>あらすじ: <xsl:value-of select="description" /><li>
 <li>キーワード : <xsl:value-of select="keywords" /></li>
 </table>
<br/>

<xsl:element name ="a">
<xsl:attribute name="href">
<xsl:value-of select="date/year" />.html
</xsl:attribute>
<xsl:value-of select="date/year" />年
</xsl:element>


<a href="books_top.html">TOP</a>

</xsl:template>

</xsl:stylesheet>
