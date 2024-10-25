<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <body>
        <h2>My CD Collection</h2>
        <table border="1">
          <tr bgcolor="#ff0000">
            <th>Title</th>
            <th>Country</th>
            <th>Artist</th>
            <th>Price</th>
          </tr>
          <xsl:apply-templates select="catalog/cd"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="cd">
    <tr>
      <td><xsl:apply-templates select="title"/></td>
      <td><xsl:apply-templates select="country"/></td>
      <td><xsl:apply-templates select="artist"/></td>
      <td>
        <xsl:apply-templates select="price"/>
        <xsl:if test="price &gt; 10">
          <span>&#128308;</span> <!-- Punto rojo -->
        </xsl:if>
        <xsl:if test="price &lt;= 10">
          <span>&#128994;</span> <!-- Punto verde -->
        </xsl:if>
      </td>
    </tr>
  </xsl:template>

  <xsl:template match="title">
    <xsl:value-of select="."/>
  </xsl:template>

  <xsl:template match="country">
    <xsl:value-of select="."/>
  </xsl:template>

  <xsl:template match="artist">
    <xsl:value-of select="."/>
  </xsl:template>

  <xsl:template match="price">
    <xsl:value-of select="."/>
  </xsl:template>

</xsl:stylesheet>