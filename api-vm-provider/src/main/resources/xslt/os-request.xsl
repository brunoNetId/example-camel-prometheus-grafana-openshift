<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" indent="yes"/>
<xsl:param name="random"/>
<xsl:param name="random-os"/>

	<xsl:template match="/">
		<ProvisionVM>
			<os><xsl:value-of select="$random-os"/></os>
			<cores><xsl:value-of select="$random"/></cores>
			<memory>512MB</memory>
			<storage>1GB</storage>
		</ProvisionVM>
	</xsl:template>
	
</xsl:stylesheet>