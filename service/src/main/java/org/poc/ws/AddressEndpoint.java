package org.poc.ws;

import javax.jws.WebParam;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;

import org.poc.generated.GetAddressRequest;
import org.poc.generated.GetAddressResponse;


@WebService(targetNamespace="urn:suncorp-com-au:schema:enterprise:getaddress:2012:05")
@SOAPBinding(parameterStyle = SOAPBinding.ParameterStyle.BARE)
public interface AddressEndpoint {

	  public GetAddressResponse GetAddressRequest(@WebParam(name="GetAddressRequest") GetAddressRequest request);
	
}
