<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:urn="urn:suncorp-com-au:schema:enterprise:getaddress:2012:05">
<xsl:param name="correlationId"/>
<xsl:param name="userId"/>
<xsl:template match="/">
<Message>
    <Header>
        <Routing>
            <CorrelationId><xsl:value-of select="$correlationId"/></CorrelationId>
            <ServiceName>ENTERPRISE</ServiceName>
            <OperationName>GETADDRESS</OperationName>
            <SourceApplication>CCC</SourceApplication>
        </Routing>
        <Security>
            <UserName>
                <UserId><xsl:value-of select="$userId"/></UserId>
            </UserName>
        </Security>
    </Header>
    <Body>
         <NS1:GetAddressResponse xmlns:NS1="urn:suncorp-com-au:schema:enterprise:getaddress:2012:05">
            <NS1:PartialProductListInd>Y</NS1:PartialProductListInd>
            <NS1:ProductSystemCustomer>
                <NS1:ProductCustomerID><xsl:value-of select="//urn:CustomerID"/></NS1:ProductCustomerID>
                <NS1:ProductSystemID>CCC</NS1:ProductSystemID>
                <NS1:JointCustomerFlag><xsl:value-of select="//urn:JointCustomer"/></NS1:JointCustomerFlag>
                <NS1:CustomerAccountName>Mr Bond</NS1:CustomerAccountName>
                <NS1:Address>
                    <NS1:Type>ST</NS1:Type>
                    <NS1:AddressLine1>James Bond</NS1:AddressLine1>
                    <NS1:AddressLine2>My Cloud</NS1:AddressLine2>
                    <NS1:AddressLine3>3 Cloudy Place</NS1:AddressLine3>
                    <NS1:TownLocality>SomeTownAgain</NS1:TownLocality>
                    <NS1:State>QLD</NS1:State>
                    <NS1:Postcode>4456</NS1:Postcode>
                    <NS1:CountryCode>AU</NS1:CountryCode>
                    <NS1:Attribute>1</NS1:Attribute>
                </NS1:Address>
                <NS1:Product>
                    <NS1:AccountNumber>product accountNumber 2</NS1:AccountNumber>
                    <NS1:AccountProduct>product accountProduct 2</NS1:AccountProduct>
                    <NS1:AccountCompany>00010</NS1:AccountCompany>
                    <NS1:Description>product </NS1:Description>
                    <NS1:RelationshipType>PRI</NS1:RelationshipType>
                    <NS1:Address>
                        <NS1:Type>address type</NS1:Type>
                        <NS1:AddressLine1>James Bond</NS1:AddressLine1>
                        <NS1:AddressLine2>My Cloud</NS1:AddressLine2>
                        <NS1:AddressLine3>3 Cloudy Place</NS1:AddressLine3>
                        <NS1:TownLocality>SomeTownAgain</NS1:TownLocality>
                        <NS1:State>QLD</NS1:State>
                        <NS1:Postcode>4456</NS1:Postcode>
                        <NS1:CountryCode>AU</NS1:CountryCode>
                        <NS1:Attribute>1</NS1:Attribute>
                        <NS1:AddressSeq>1</NS1:AddressSeq>
                        <NS1:AccountName>Mr Bond</NS1:AccountName>
                        <NS1:Risk>
                            <NS1:Description>risk description</NS1:Description>
                            <NS1:Count>risk count</NS1:Count>
                        </NS1:Risk>
                    </NS1:Address>
                </NS1:Product>
            </NS1:ProductSystemCustomer>
        </NS1:GetAddressResponse>
    </Body>
</Message>


	</xsl:template>
</xsl:stylesheet>


