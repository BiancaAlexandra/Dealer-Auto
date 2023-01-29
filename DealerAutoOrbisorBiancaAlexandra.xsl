<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>

  <table border="0" style="float:left">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Numar comanda</th>
    </tr>
    <xsl:for-each select="dealer_auto/comanda">
    <tr>
      <td><xsl:value-of select="@numar"/></td>
    </tr>
    </xsl:for-each>
  </table>

  <table border="0" style="float:left">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Marca</th>
    </tr>
    <xsl:for-each select="dealer_auto/comanda/masina/specificatii_tehnice">
    <tr>
      <td><xsl:value-of select="marca"/></td>
    </tr>
    </xsl:for-each>
  </table>

  <table border="0" style="float:left">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Denumire masina</th>
    </tr>
    <xsl:for-each select="dealer_auto/comanda/masina/specificatii_tehnice/tip">
    <tr>
      <td><xsl:value-of select="denumire_comerciala"/></td>
    </tr>
    </xsl:for-each>
  </table>

  <table border="0" style="float:left">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Serie sasiu</th>
      <th style="text-align:left">Serie motor</th>
    </tr>
    <xsl:for-each select="dealer_auto/comanda/masina/specificatii_tehnice/date_identificare">
    <tr>
      <td><xsl:value-of select="serie_sasiu"/></td>
      <td><xsl:value-of select="serie_motor"/></td>
    </tr>
    </xsl:for-each>
  </table>

  <table border="0" style="float:left">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">An fabricatie</th>
      <th style="text-align:left">Capacitate cilindrica</th>
      <th style="text-align:left">Putere</th>
      <th style="text-align:left">Combustibil</th>
      <th style="text-align:left">Norma poluare</th>
      <th style="text-align:left">Culoare</th>
      
    </tr>
    <xsl:for-each select="dealer_auto/comanda/masina/specificatii_tehnice">
    <tr>
      <td><xsl:value-of select="an_fabricatie"/></td>
      <td><xsl:value-of select="capacitate_cilindrica"/></td>
      <td><xsl:value-of select="putere"/></td>
      <td><xsl:value-of select="tip_combustibil"/></td>
      <td><xsl:value-of select="norma_de_poluare"/></td>
      <td><xsl:value-of select="culoare"/></td>
    </tr>
    </xsl:for-each>
  </table>

  <table border="0" style="float:left">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Vit. max</th>
      <th style="text-align:left">Tractiune</th>
      <th style="text-align:left">Transmisie</th>
    </tr>
    <xsl:for-each select="dealer_auto/comanda/masina/specificatii_tehnice">
    <tr>
      <td><xsl:value-of select="viteza_maxima"/></td>
      <td><xsl:value-of select="tractiune"/></td>
      <td><xsl:value-of select="transmisie"/></td>
    </tr>
    </xsl:for-each>
  </table>
  
  <table border="0" style="float:left">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Nume client</th>
      <th style="text-align:left">Prenume client</th>
    </tr>
    <xsl:for-each select="dealer_auto/comanda/date_cumparator">
    <tr>
      <td><xsl:value-of select="nume"/></td>
      <td><xsl:value-of select="prenume"/></td>
    </tr>
    </xsl:for-each>
  </table>

  <table border="0" style="float:left">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Nume dealer</th>
      <th style="text-align:left">Prenume dealer</th>
    </tr>
    <xsl:for-each select="dealer_auto/comanda/dealer">
    <tr>
      <td><xsl:value-of select="@nume"/></td>
      <td><xsl:value-of select="@prenume"/></td>
    </tr>
    </xsl:for-each>
  </table>

  <table border="0" style="float:left">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Termen livrare (zile)</th>
      <th style="text-align:left">Nr km</th>
    </tr>
    <xsl:for-each select="dealer_auto/comanda/date_autovehicul">
    <tr>
      <td><xsl:value-of select="termen_de_livrare"/></td>
      <td><xsl:value-of select="nr_km"/></td>
    </tr>
    </xsl:for-each>
  </table>

  <table border="0" style="float:left">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Serie factura</th>
      <th style="text-align:left">Numar factura</th>
      <th style="text-align:left">Data factura</th>
      <th style="text-align:left">Total de plata</th>
    </tr>
    <xsl:for-each select="dealer_auto/comanda/factura">
    <tr>
      <td><xsl:value-of select="@serie"/></td>
      <td><xsl:value-of select="@numar"/></td>
      <td><xsl:value-of select="@data"/></td>
      <td><xsl:value-of select="total_de_plata"/></td>
    </tr>
    </xsl:for-each>
  </table>

</body>
</html>
</xsl:template>
</xsl:stylesheet>

