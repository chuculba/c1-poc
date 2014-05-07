## FUSE 6.1 POC 

Demonstrates

- Splitting
- XPath Content Based Routing
- SOAP WS
- XSLT
- Aggregation


###Address Service 

- Splits incoming message on <urn:Product>
- Routes message request to different backend services based on <urn:SystemID>
- Handles Errors - Timeouts (TODO)
- Returns Aggregated message

####Install
features:addUrl mvn:org.poc/service/1.0.0-SNAPSHOT/xml/features

features:install addressservice

http://localhost:8185/address?wsdl

####Testing
In SOAP UI send the following to the service

- Successful /service/src/test/resources/inbound.request.xml
- Warning /service/src/test/resources/inbound.request-warning.xml
- Timeout /service/src/test/resources/inbound.request-timeout.xml


###ServiceBBB 

- Transforms request into response via XSLT
- Handles Multiple <urn:Product>

####Install

features:addUrl mvn:org.poc/serviceBBB/1.0.0-SNAPSHOT/xml/features

features:install serviceBBB

http://localhost:8186/BBB?wsdl

####Testing

In SOAP UI send the following to the service

/serviceBBB/src/test/resources/outbound.request.bbb.xml


###ServiceCCC 
- Transforms request into response via XSLT
- Sends different response for Id 3333333333 and 5555555555
- Any other id has warning message

####Install

features:addUrl mvn:org.poc/serviceCCC/1.0.0-SNAPSHOT/xml/features

features:install serviceCCC

http://localhost:8187/CCC?wsdl

####Testing

In SOAP UI send the following to the service

/serviceCCC/src/test/resources/outbound.request.ccc.xml
/serviceCCC/src/test/resources/outbound.request.ccc.2.xml


###To develop

1) Get version of fuse and unzip - tested using jboss-fuse-6.1.0.redhat-379

2) start fuse (bin/fuse.bat)

3) build your project mvn clean install

4) in console add the project from maven e.g. features:addUrl mvn:org.poc/service/1.0.0-SNAPSHOT/xml/features

5) features:install service

To refresh after code changes

1) mvn clean install

2) features:uninstall service

3) features:install service

4) if dependencies have been added and features.xml changed in the individual projects use features:refreshUrl mvn:org.poc/service/1.0.0-SNAPSHOT/xml/features then steps 2/3
