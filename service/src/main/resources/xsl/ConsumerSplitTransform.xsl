<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:urn="urn:suncorp-com-au:schema:enterprise:getaddress:2012:05"  xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope">
<xsl:output method="xml" indent="yes" />
<xsl:template match="urn:GetAddressCriteria">
    <GetAddressCriteria>
        <xsl:for-each-group select="urn:Product" group-by="urn:SystemID">	
            <Service value="{urn:SystemID}" xmlns:urn="urn:suncorp-com-au:schema:enterprise:getaddress:2012:05">
                <xsl:for-each select="current-group()">
					<Product>
						<CustomerID><xsl:value-of select="urn:CustomerID"/></CustomerID>
						<SystemID><xsl:value-of select="urn:SystemID" /></SystemID>
						<JointCustomer><xsl:value-of select="urn:JointCustomerID" /></JointCustomer>
					</Product>		
                </xsl:for-each>
            </Service>
        </xsl:for-each-group>
    </GetAddressCriteria>
</xsl:template>
</xsl:stylesheet>