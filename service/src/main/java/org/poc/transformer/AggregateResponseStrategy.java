package org.poc.transformer;

import org.apache.camel.Exchange;
import org.apache.camel.processor.aggregate.AggregationStrategy;

public class AggregateResponseStrategy implements AggregationStrategy {

		 
	    public Exchange aggregate(Exchange oldExchange, Exchange newExchange) {
	        // put order together in old exchange by adding the order from new exchange
	 
	        if (oldExchange == null) {
	            // the first time we aggregate we only have the new exchange,
	            // so we just return it
	            return newExchange;
	        }
	 
	        String oldResponse = oldExchange.getIn().getBody(String.class);
	        String newResponse = newExchange.getIn().getBody(String.class);	 
	        
	        // put responses together separating by new line 
	        String aggregatedResponse = oldResponse + "\n" + newResponse;
	        // put combined  responses back on old to preserve it
	        oldExchange.getIn().setBody(aggregatedResponse);
	        
	        // return old as this is the one that has all the responses gathered until now
	        return oldExchange;
	    }
	
}
