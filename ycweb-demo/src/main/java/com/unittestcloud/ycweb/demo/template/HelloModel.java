package com.unittestcloud.ycweb.demo.template;

import info.magnolia.rendering.model.RenderingModel;
import info.magnolia.rendering.model.RenderingModelImpl;
import info.magnolia.rendering.template.RenderableDefinition;

import javax.jcr.Node;

/**
 * 
 * @author davidtoniolo
 * 
 */
public class HelloModel extends RenderingModelImpl {

	public HelloModel(Node content, RenderableDefinition definition,
			RenderingModel parent) {
		super(content, definition, parent);
		// TODO Auto-generated constructor stub
	}
	
	/**
	 * @return
	 */
	public String getCurrentTime() {
		return "11:00";
	}

}
