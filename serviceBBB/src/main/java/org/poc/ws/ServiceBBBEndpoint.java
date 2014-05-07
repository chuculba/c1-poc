package org.poc.ws;

import javax.jws.WebParam;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;

@WebService(targetNamespace="urn:suncorp-com-au:schema:enterprise:getaddress:2012:05")
@SOAPBinding(parameterStyle = SOAPBinding.ParameterStyle.WRAPPED)
public interface ServiceBBBEndpoint {

	  public String GetAddressRequest(@WebParam(name="GetAddressCriteria") String request);
	
}
