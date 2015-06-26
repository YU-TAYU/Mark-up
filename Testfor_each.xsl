<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" version="4.01" encoding="UTF-8" indent="yes" />
<xsl:template match="/">

<html lang="ja">
    <head>
  <title>書誌情報一覧</title>
    </head>

      <h1>出版年別書誌情報一覧表</h1>
      <h2>出版日から昇順で表示しています</h2>
      
      <xsl:for-each select="books/item[date/year=$no]">
            <xsl:sort select="date" />
            <li><a href="{concat(@no,'.html')}"><xsl:value-of select="title" /></a></li><br/>

    
      </xsl:for-each>

<li><a href="{concat(@no,'.html')}"> <xsl:value-of select="title" /></a></li>
 
<br/>

 </html>
  
 

</xsl:template>
</xsl:stylesheet>