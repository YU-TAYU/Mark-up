<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="html" version="4.01" encoding="UTF-8" indent="yes" />

<xsl:template match="/">
 <html lang="ja">
    <head>
      <title>
      	詳細表示
      </title>
    </head>
    <body>
   <xsl:apply-templates select="books/item[date/year=2015]" /><br/>
	</body>
</html>
</xsl:template>

 <xsl:template match="books/item">
   <li>
<xsl:attribute name ="href">
"book1.xsl"
</xsl:attribute>
        <xsl:value-of select ="item" />
</li>
<a href="bookdata.xsl">
もどる
</a>
</xsl:template>

</xsl:stylesheet>

