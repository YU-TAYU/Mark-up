<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" version="4.01" encoding="UTF-8" indent="yes" />
  <xsl:param name="keyword" />


<xsl:template match="/">
  <html lang="ja">

  <html>
  <head>
  <title>検索結果</title>
  </head>
  <body>
  <h1>検索結果</h1>
  <h2>検索キーワード : <xsl:value-of select="$keyword" /></h2><br/>

<xsl:apply-templates="book/item"[contains(title,$keyword) or contains(creator,$keyword) or contains(publisher,$keyword) or contains(description,$keyword) or contains(keywords/keyword,$keyword)] >
<xsl:sort select ="date/year" data-type="number" />
</xsl:apply-templates>

 </body>


  <a href="books_top.html">TOP</a>
  </html>



<xsl:template match="books/item" >
 <table>
 <li>タイトル: <a href="{url/@resource}"> <xsl:value-of select="title" /></a> </li>

 <li>著者名 : <xsl:value-of select="creator" /></li>
 <li>出版者 : <xsl:value-of select="publisher" /></li>
 <li>出版日 : <xsl:value-of select="date/year" />-<xsl:value-of select="date/month" />-<xsl:value-of select="date/day" /></li>
 <li>価格 : <xsl:value-of select="price" />円</li>
 <li>ISBN : <xsl:value-of select="isbn" /></li>
 <li>あらすじ : <xsl:value-of select="description" /></li>
 <li>キーワード : <xsl:value-of select="keywords" /></li>
 </table>
<br/>
<a href="{concat(date/year,'.html')}" ><xsl:value-of select="date/year" />年</a>

  </xsl:template>
  </xsl:stylesheet>

  

