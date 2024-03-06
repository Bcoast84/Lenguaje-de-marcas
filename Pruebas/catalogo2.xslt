<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8"/>

    <xsl:template match="/catalogo">
        <html>
            <head>
                <title>Libros con Autores Nacidos Después de 1900</title>
            </head>
           <title>Lista de Autores por Orden Alfabético Inverso</title>
            <body>
                <h1>Lista de Autores por Orden Alfabético Inverso</h1>
                <ol>
                    <!-- Utilizar la función sort para ordenar los autores alfabéticamente inverso -->
                    <xsl:for-each select="libro/autores/autor">
                        <xsl:sort select="." order="descending"/>
                        <li>
                            <xsl:value-of select="."/>
                        </li>
                    </xsl:for-each>
                </ol>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>