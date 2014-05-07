package org.poc.ws;

import javax.jws.WebParam;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;


@WebService(targetNamespace="urn:suncorp-com-au:schema:enterprise:getaddress:2012:05")
@SOAPBinding(parameterStyle = SOAPBinding.ParameterStyle.BARE)
public interface AddressEndpoint {

	  public String GetAddressRequest(@WebParam(name="GetAddressRequest") String request);
	
}
