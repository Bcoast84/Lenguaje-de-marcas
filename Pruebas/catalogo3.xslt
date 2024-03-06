<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8"/>

    <xsl:template match="/catalogo">
        <html>
            <head>
                <title>Autores Nacidos Después del Año 1700</title>
            </head>
            <body>
                <h1>Autores Nacidos Después del Año 1700</h1>
                <table border="1">
                    <tr>
                        <th>Nombre</th>
                        <th>Año de Nacimiento</th>
                    </tr>
                    <!-- Seleccionar y aplicar plantilla a los autores nacidos después del año 1700 -->
                    <xsl:for-each select="libro/autores/autor[number(@nacimiento) > 1700]">
                        <tr>
                            <td>
                                <xsl:value-of select="."/>
                            </td>
                            <td>
                                <xsl:value-of select="@nacimiento"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
