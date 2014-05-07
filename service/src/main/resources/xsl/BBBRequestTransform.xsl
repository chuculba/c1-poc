<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:urn="urn:suncorp-com-au:schema:enterprise:getaddress:2012:05">
	<xsl:output method="xml" indent="yes"/>
	<xsl:param name="correlationId" />
	<xsl:param name="userId" />
	<xsl:template match="/">
		<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">
			<soapenv:Header />
			<soapenv:Body>
				<urn:GetAddressRequest
					xmlns:urn="urn:suncorp-com-au:schema:enterprise:getaddress:2012:05">
					<urn:GetAddressCriteria>
						<xsl:for-each select="//urn:Product">
							<urn:Product>
								<urn:CustomerID>
									<xsl:value-of select="urn:CustomerID" />
								</urn:CustomerID>
								<urn:SystemID>BBB</urn:SystemID>
								<urn:JointCustomer>
									<xsl:value-of select="urn:JointCustomer" />
								</urn:JointCustomer>
							</urn:Product>
						</xsl:for-each>
					</urn:GetAddressCriteria>
				</urn:GetAddressRequest>
			</soapenv:Body>
		</soapenv:Envelope>
	</xsl:template>
</xsl:stylesheet>


