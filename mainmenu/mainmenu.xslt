<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:param name="ControlID" />
	<xsl:param name="Options" />
	<xsl:param name="subMenuColumns">3</xsl:param>
	<xsl:param name="startUl"><![CDATA[<ul>]]></xsl:param>
	<xsl:param name="endUl"><![CDATA[</ul>]]></xsl:param>

	<xsl:template match="/*">
		<xsl:apply-templates select="root" />
	</xsl:template>

	<xsl:template match="root">
		<ul class="mainmenu" id="mainmenu">
			<xsl:apply-templates select="node">
				<xsl:with-param name="level" select="0"/>
			</xsl:apply-templates>
		</ul>
	</xsl:template>

	<xsl:template match="node">
		<xsl:param name="level" />
		<xsl:choose>

			<xsl:when test="$level=0">

				<li>
					<xsl:attribute name="class">
						level0<xsl:if test="@breadcrumb = 1"> current</xsl:if><xsl:if test="@first = 1"> menufirst</xsl:if><xsl:if test="@last = 1"> menulast</xsl:if>
					</xsl:attribute>
					<a>
						<xsl:choose>
							<xsl:when test="@enabled = 1">
								<xsl:attribute name="href">
									<xsl:value-of select="@url"/>
								</xsl:attribute>
							</xsl:when>
							<xsl:otherwise>
								<xsl:attribute name="href">#</xsl:attribute>
								<xsl:attribute name="onclick">return false</xsl:attribute>
							</xsl:otherwise>
						</xsl:choose>
						<xsl:value-of select="@text" />
					</a>

					<xsl:if test="node">
						<div class="sub">
							<ul class="submenu">
								<xsl:apply-templates select="node">
									<xsl:with-param name="level" select="$level + 1" />
								</xsl:apply-templates>
							</ul>
						</div>
					</xsl:if>
				</li>

			</xsl:when>

			<xsl:when test="$level=1">

				<li class="sublink">
					<xsl:choose>
						<xsl:when test="@enabled = 1">
							<a>
								<xsl:attribute name="href">
									<xsl:value-of select="@url"/>
								</xsl:attribute>
								<xsl:value-of select="@text" />
							</a>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="@text" />
						</xsl:otherwise>
					</xsl:choose>
				</li>
				<xsl:if test="node">
					<xsl:apply-templates select="node">
						<xsl:with-param name="level" select="$level + 1" />
					</xsl:apply-templates>
				</xsl:if>

			</xsl:when>

		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>