<?xml version="1.0" encoding="UTF-8"?> <!-- Declaración XML -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"> <!-- Declaración XSLT -->

  <xsl:output method="html" encoding="UTF-8"/> <!-- Configuración de la salida en HTML -->

  <xsl:template match="/artistas"> <!-- Estructura del HTML resultante-->
    <html>
      <head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>Lista de Artistas</title>
        <meta charset="UTF-8" />
      </head>
      <body>
        <h1>Lista de Artistas</h1>
        <table border="0">
          <tr>
            <th>Código</th>
            <th>Nombre</th>
            <th>Año de nacimiento</th>
            <th>Año de fallecimiento</th>
            <th>País</th>
            <th>Página web</th>
          </tr>
        <xsl:for-each select="artista">
        <xsl:sort select="nacimiento"/>
        <xsl:if test="nacimiento > 1500">
          <tr>
            <td><xsl:value-of select="@cod"/></td>
            <td><xsl:value-of select="nombreCompleto"/></td>
            <td><xsl:value-of select="nacimiento"/></td>
            <td>
              <xsl:choose> <!-- Se le dice que si existe fallecimiento lo ponga y sino que escriba "Desconocido" -->
                <xsl:when test="fallecimiento">
                <xsl:value-of select="fallecimiento"/>
                </xsl:when> 
                <xsl:otherwise>Desconocido</xsl:otherwise> 
              </xsl:choose>
            </td>
            <td><xsl:value-of select="pais"/></td>
            <td>
              <a href="{fichaCompleta}" target="_blank">Saber más</a>
            </td>
          </tr>
          </xsl:if>
        </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>  <!-- Fin del HTML -->
</xsl:stylesheet>