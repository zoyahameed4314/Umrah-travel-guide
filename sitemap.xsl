<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
                xmlns:html="http://www.w3.org/TR/REC-html40"
                xmlns:image="http://www.google.com/schemas/sitemap-image/1.1"
                xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title>XML Sitemap - Budget Umrah Travel Resource Portal</title>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <style type="text/css">
                    body {
                        font-family: 'Segoe UI', Arial, sans-serif;
                        color: #333;
                        max-width: 800px;
                        margin: 0 auto;
                        padding: 40px 20px;
                    }
                    h1 {
                        color: #111;
                        font-size: 28px;
                        margin-bottom: 5px;
                    }
                    p {
                        color: #666;
                        margin-top: 0;
                        font-size: 14px;
                    }
                    table {
                        width: 100%;
                        border-collapse: collapse;
                        margin-top: 20px;
                    }
                    th {
                        background-color: #f4f4f4;
                        padding: 12px;
                        text-align: left;
                        font-size: 14px;
                        font-weight: bold;
                        border-bottom: 2px solid #ddd;
                    }
                    td {
                        padding: 12px;
                        font-size: 14px;
                        border-bottom: 1px solid #eee;
                    }
                    tr:hover td {
                        background-color: #fafafa;
                    }
                    a {
                        color: #0066cc;
                        text-decoration: none;
                    }
                    a:hover {
                        text-decoration: underline;
                    }
                    .priority-badge {
                        background: #e1f0ff;
                        color: #0066cc;
                        padding: 3px 8px;
                        border-radius: 4px;
                        font-weight: bold;
                        font-size: 12px;
                    }
                </style>
            </head>
            <body>
                <h1>XML Sitemap</h1>
                <p>This interactive sitemap is generated automatically to help search engines like Google discover and crawl the static infrastructure nodes of this portal.</p>
                
                <table>
                    <thead>
                        <tr>
                            <th>URL Path</th>
                            <th>Change Frequency</th>
                            <th>Priority Weight</th>
                        </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="sitemap:urlset/sitemap:url">
                            <tr>
                                <td>
                                    <xsl:variable name="itemURL">
                                        <xsl:value-of select="sitemap:loc"/>
                                    </xsl:variable>
                                    <a href="{$itemURL}">
                                        <xsl:value-of select="sitemap:loc"/>
                                    </a>
                                </td>
                                <td>
                                    <xsl:value-of select="sitemap:changefreq"/>
                                </td>
                                <td>
                                    <span class="priority-badge">
                                        <xsl:value-of select="sitemap:priority"/>
                                    </span>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
