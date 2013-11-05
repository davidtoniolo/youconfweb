/**
 * This file Copyright (c) 2010-2013 Magnolia International
 * Ltd.  (http://www.magnolia-cms.com). All rights reserved.
 *
 *
 * This file is dual-licensed under both the Magnolia
 * Network Agreement and the GNU General Public License.
 * You may elect to use one or the other of these licenses.
 *
 * This file is distributed in the hope that it will be
 * useful, but AS-IS and WITHOUT ANY WARRANTY; without even the
 * implied warranty of MERCHANTABILITY or FITNESS FOR A
 * PARTICULAR PURPOSE, TITLE, or NONINFRINGEMENT.
 * Redistribution, except as permitted by whichever of the GPL
 * or MNA you select, is prohibited.
 *
 * 1. For the GPL license (GPL), you can redistribute and/or
 * modify this file under the terms of the GNU General
 * Public License, Version 3, as published by the Free Software
 * Foundation.  You should have received a copy of the GNU
 * General Public License, Version 3 along with this program;
 * if not, write to the Free Software Foundation, Inc., 51
 * Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 * 2. For the Magnolia Network Agreement (MNA), this file
 * and the accompanying materials are made available under the
 * terms of the MNA which accompanies this distribution, and
 * is available at http://www.magnolia-cms.com/mna.html
 *
 * Any modifications to this file must keep this entire header
 * intact.
 *
 */
package com.unittestcloud.ycweb.project;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.unittestcloud.ycweb.project.service.Customer;
import com.unittestcloud.ycweb.project.service.Order;
import com.unittestcloud.ycweb.project.service.OrderRow;
import com.unittestcloud.ycweb.project.service.SalesApplicationWebService;

import info.magnolia.module.blossom.annotation.Template;

/**
 * Displays a from where the visitor can fill in his address and so on to complete his purchase.
 */
@Controller
@Template(title = "Purchase Form", id = "ycweb-project:components/purchase")
public class PurchaseComponent {

    @Autowired
    private SalesApplicationWebService salesApplicationWebService;

    @RequestMapping(value = "/purchase", method = RequestMethod.GET)
    public String render(@ModelAttribute Customer customer) {
        return "components/purchaseForm.jsp";
    }

    @RequestMapping(value = "/purchase", method = RequestMethod.POST)
    public String handleSubmit(Customer customer, HttpSession session) {

        ShoppingCart shoppingCart = ShoppingCart.getShoppingCart(session);

        List<OrderRow> rows = new ArrayList<OrderRow>();
        for (ShoppingCartItem cartItem : shoppingCart.getItems()) {
            rows.add(new OrderRow(cartItem.getProduct().getArticleCode(), cartItem.getQuantity()));
        }

        Order order = new Order(customer, rows);

        salesApplicationWebService.placeOrder(order);

        shoppingCart.clear();

        return "components/purchaseFormSubmitted.jsp";
    }
}
