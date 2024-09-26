<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:param name="ControlID" />
	<xsl:param name="Options" />

  <xsl:template match="/*">
    <xsl:apply-templates select="root" />
    <script type="text/javascript">
    $('#navicon').click(function(){
      $('.mobilemenu').slideToggle('fast',function() {
		    if ($(this).is(':visible'))
			   $('#navicon').addClass('collapsable');
        else
         $('#navicon').removeClass('collapsable');
	    });
    });
    </script>
  </xsl:template>

  <xsl:template match="root">
  <ul id="mobilemenu">
		<xsl:apply-templates select="node">
				<xsl:with-param name="level" select="0"/>
		</xsl:apply-templates>
	</ul>
	</xsl:template>

	<xsl:template match="node">
	<xsl:param name="level" />
    <li>
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
		<a href="#" class="disabled">
        <xsl:value-of select="@text" />
		</a>
							</xsl:otherwise>
					</xsl:choose>
      <xsl:if test="node">
        <ul>
          <xsl:apply-templates select="node" />
        </ul>
      </xsl:if>
    </li>
  </xsl:template>


</xsl:stylesheet>