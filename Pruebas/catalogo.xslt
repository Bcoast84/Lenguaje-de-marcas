<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8"/>

    <xsl:template match="/catalogo">
        <html>
            <head>
                <title>Libros con Autores Nacidos Después de 1900</title>
            </head>
            <body>
                <h1>Libros con Autores Nacidos Después de 1900</h1>
                 <xsl:for-each select="libro[autores/autor[number(@nacimiento) > 1900]]">
                        <li>
                            <xsl:value-of select="titulo"/>
                        </li>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>