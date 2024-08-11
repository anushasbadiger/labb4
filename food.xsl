<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"
    xmlns:food="www.tastytreats.com"
    exclude-result-prefixes="food">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <!-- Root template -->
    <xsl:template match="/">
        <html>
            <head>
                <title>Food Delivery Website</title>
                <style>
                    table {
                        width: 100%;
                        border-collapse: collapse;
                    }
                    table, th, td {
                        border: 1px solid black;
                    }
                    th, td {
                        padding: 8px;
                        text-align: left;
                    }
                    th {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>
            <body>
                <h2>Menu</h2>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Hours</th>
                        <th>Dish</th>
                        <th>Description</th>
                        <th>Price</th>
                        <th>Reviews</th>
                    </tr>
                    <!-- Loop through each fooddeliverywebsite -->
                    <xsl:for-each select="food:fooddeliverywebsite/food:fooddeliverywebsite">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="food:fooddeliverywebsite-name"/></td>
                            <td><xsl:value-of select="food:hours"/></td>
                            <td>
                                <!-- Loop through each dish -->
                                <xsl:for-each select="food:menu/food:dish">
                                    <div><xsl:value-of select="food:dish-name"/></div>
                                </xsl:for-each>
                            </td>
                            <td>
                                <!-- Loop through each description -->
                                <xsl:for-each select="food:menu/food:dish">
                                    <div><xsl:value-of select="food:description"/></div>
                                </xsl:for-each>
                            </td>
                            <td>
                                <!-- Loop through each price -->
                                <xsl:for-each select="food:menu/food:dish">
                                    <div>$<xsl:value-of select="food:price"/></div>
                                </xsl:for-each>
                            </td>
                            <td><xsl:value-of select="food:reviews"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
