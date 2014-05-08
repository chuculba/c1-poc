<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:NS1="urn:suncorp-com-au:schema:enterprise:getaddress:2012:05">
	<xsl:output method="xml" indent="yes" omit-xml-declaration="yes" />
	<xsl:template match="/">
		<xsl:for-each select="//Warning">
			<Warning>
				<xsl:copy-of select="node()" />			
			</Warning>
		</xsl:for-each>
		<xsl:for-each select="//NS1:ProductSystemCustomer">
			<NS1:ProductSystemCustomer>
				<xsl:copy-of select="node()" />
			</NS1:ProductSystemCustomer>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>


