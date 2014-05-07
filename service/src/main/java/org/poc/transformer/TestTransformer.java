package org.poc.transformer;

import org.apache.camel.Exchange;
import org.apache.camel.Processor;

public class TestTransformer implements Processor {

	public void process(Exchange exchange) throws Exception {

		String body = exchange.getIn().getBody(String.class);

		System.out.println(body);
		
		
	}

}
