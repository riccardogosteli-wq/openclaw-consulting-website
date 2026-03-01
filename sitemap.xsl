<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:sm="http://www.sitemaps.org/schemas/sitemap/0.9">
<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html lang="en">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
  <title>Sitemap – OpenClaw Consulting</title>
  <style>
    body{font-family:'Inter',system-ui,sans-serif;background:#F7FAF9;color:#0F1714;margin:0;padding:40px 6vw}
    h1{font-size:1.4rem;font-weight:700;margin-bottom:.3rem}
    p{color:#4B5563;font-size:.85rem;margin-bottom:2rem}
    table{width:100%;border-collapse:collapse;background:#fff;border-radius:12px;overflow:hidden;box-shadow:0 1px 4px rgba(0,0,0,.06)}
    th{background:#0F1714;color:#fff;text-align:left;padding:.7rem 1.2rem;font-size:.78rem;font-weight:600;letter-spacing:.04em;text-transform:uppercase}
    td{padding:.7rem 1.2rem;font-size:.85rem;border-bottom:1px solid #E4EDE9}
    tr:last-child td{border-bottom:none}
    a{color:#12A878;text-decoration:none;font-weight:500}
    a:hover{text-decoration:underline}
    .badge{display:inline-block;padding:.15rem .5rem;border-radius:4px;font-size:.72rem;font-weight:600}
    .hi{background:#E6F7F2;color:#0E8F67}
    .lo{background:#F3F4F6;color:#6B7280}
  </style>
</head>
<body>
  <h1>🦞 OpenClaw Consulting – Sitemap</h1>
  <p><xsl:value-of select="count(sm:urlset/sm:url)"/> URLs indexed</p>
  <table>
    <tr>
      <th>URL</th>
      <th>Last Modified</th>
      <th>Priority</th>
      <th>Change Freq</th>
    </tr>
    <xsl:for-each select="sm:urlset/sm:url">
      <tr>
        <td><a href="{sm:loc}"><xsl:value-of select="sm:loc"/></a></td>
        <td><xsl:value-of select="sm:lastmod"/></td>
        <td>
          <xsl:choose>
            <xsl:when test="sm:priority >= 0.8">
              <span class="badge hi"><xsl:value-of select="sm:priority"/></span>
            </xsl:when>
            <xsl:otherwise>
              <span class="badge lo"><xsl:value-of select="sm:priority"/></span>
            </xsl:otherwise>
          </xsl:choose>
        </td>
        <td><xsl:value-of select="sm:changefreq"/></td>
      </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
