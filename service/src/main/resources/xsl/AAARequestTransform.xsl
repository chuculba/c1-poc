<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:urn="urn:suncorp-com-au:schema:enterprise:getaddress:2012:05">
	<xsl:output method="xml" indent="yes" />
	<xsl:param name="correlationId" />
	<xsl:param name="userId" />
	<xsl:template match="/">
		<Message>
			<Header>
				<Routing>
					<CorrelationId>
						<xsl:value-of select="$correlationId" />
					</CorrelationId>
					<ServiceName>ENTERPRISE</ServiceName>
					<OperationName>GETADDRESS</OperationName>
					<SourceApplication>AAA</SourceApplication>
				</Routing>
				<Security>
					<UserName>
						<UserId>
							<xsl:value-of select="$userId" />
						</UserId>
						<Password>pwd01</Password>
					</UserName>
				</Security>
			</Header>
			<Body>
				<GetAddressRequest
					xmlns="urn:suncorp-com-au:schema:enterprise:getaddress:2012:05">
					<xsl:for-each select="//Product">
						<ProductSystemCustomer>
							<ProductCustomerID>
								<xsl:value-of select="CustomerID" />
							</ProductCustomerID>
							<ProductSystemID>AAA</ProductSystemID>
							<JointCustomerFlag>
								<xsl:value-of select="JointCustomer" />
							</JointCustomerFlag>
						</ProductSystemCustomer>
					</xsl:for-each>
				</GetAddressRequest>
			</Body>
		</Message>
	</xsl:template>
</xsl:stylesheet>


