package org.poc.transformer;

import org.apache.camel.Exchange;
import org.apache.camel.Processor;

public class AddRootElementTransformer implements Processor {

	public void process(Exchange exchange) throws Exception {
		String body = exchange.getIn().getBody(String.class);		
		if(body==null){
			body="";
		}		
		body = "<root>"+body+"</root>";
		exchange.getIn().setBody(body);		
	}

}
