<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:NS1="urn:suncorp-com-au:schema:enterprise:getaddress:2012:05">
	<xsl:param name="number"/>
	<xsl:param name="description"/>
	<xsl:param name="source"/>
	<xsl:output method="xml" indent="yes" omit-xml-declaration="yes" />
	<xsl:template match="/">
	        <NS1:Warning>
                <NS1:Number><xsl:value-of select="$number"/></NS1:Number>
                <NS1:Description><xsl:value-of select="$description"/></NS1:Description>
                <NS1:SourceApplication><xsl:value-of select="$source"/></NS1:SourceApplication>
            </NS1:Warning>
	</xsl:template>
</xsl:stylesheet>


