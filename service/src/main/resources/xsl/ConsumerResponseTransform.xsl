<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:urn="urn:suncorp-com-au:schema:enterprise:getaddress:2012:05">
	<xsl:output method="xml" indent="yes" />
	<xsl:template match="/">
		<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
			<soapenv:Header />
			<soapenv:Body>
				<NS1:GetAddressResponse	xmlns:NS1="urn:suncorp-com-au:schema:enterprise:getaddress:2012:05">
					<xsl:for-each select="//NS1:Warning">
						<NS1:Warning>
							<NS1:Number><xsl:value-of select="NS1:Number"/></NS1:Number>
							<NS1:Description><xsl:value-of select="NS1:Description"/></NS1:Description>
							<NS1:SourceApplication><xsl:value-of select="NS1:SourceApplication"/></NS1:SourceApplication>
						</NS1:Warning>
					</xsl:for-each>
					<xsl:for-each select="//Warning">
						<NS1:Warning>
							<NS1:Number><xsl:value-of select="Number"/></NS1:Number>
							<NS1:Description><xsl:value-of select="Description"/></NS1:Description>
							<NS1:SourceApplication><xsl:value-of select="SourceApplication"/></NS1:SourceApplication>
						</NS1:Warning>
					</xsl:for-each>					
					<NS1:PartialProductListInd>Y</NS1:PartialProductListInd>
					<xsl:for-each select="//NS1:ProductSystemCustomer">
						<NS1:ProductSystemCustomer>
							<xsl:copy-of select="node()" />
						</NS1:ProductSystemCustomer>
					</xsl:for-each>
				</NS1:GetAddressResponse>
			</soapenv:Body>
		</soapenv:Envelope>
	</xsl:template>
</xsl:stylesheet>