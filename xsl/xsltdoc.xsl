<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xd="http://www.pnp-software.com/XSLTdoc"
                version="2.0">
  <xsl:import href="core.xsl"/>
  <xsl:include href="properties/author.xsl"/>
  <xsl:include href="properties/cvsId.xsl"/>
  <xsl:include href="properties/svnId.xsl"/>
  <xsl:include href="properties/copyright.xsl"/>
  <xsl:include href="properties/doxygen.xsl"/>
  <xsl:include href="inlineTags/xml.xsl"/>

  <xd:doc type="stylesheet">
    Frontend for core.xsl
    <xd:author>ibirrer</xd:author>
    <xd:copyright>2004, P&amp;P Software GmbH</xd:copyright>
  </xd:doc>

  <xsl:output method="text" encoding="UTF-8"/>

  <xsl:template match="/">
    <xsl:apply-templates>
      <xsl:with-param name="config" tunnel="yes" as="element()">
        <config>
          <htmlTemplate href="../templates/standard.tpl.html"/>
          <page id="mainPage" menu="yes" label="Main Page" targetFilename="index.html"/>
          <page id="stylesheetList" menu="yes" label="Stylesheet List"/>
          <page id="functionTemplateList" menu="yes" label="Function/Template List"/>
        </config>
      </xsl:with-param>
    </xsl:apply-templates>
  </xsl:template>
</xsl:stylesheet>