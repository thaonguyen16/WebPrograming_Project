package hcmute.edu.vn.webexercise13v2.MusicStoreApp.cart.tags;

import hcmute.edu.vn.webexercise13v2.chapter10.ex2.business.Cart;
import hcmute.edu.vn.webexercise13v2.chapter10.ex2.business.LineItem;
import hcmute.edu.vn.webexercise13v2.chapter10.ex2.business.Product;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyTagSupport;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

public class CartTag extends BodyTagSupport {

    private ArrayList<LineItem> lineItems;
    private Iterator iterator;
    private LineItem item;

    @Override
    public int doStartTag() {
        Cart cart = (Cart) pageContext.findAttribute("cart");
        lineItems = cart.getItems();
        if (lineItems.size() == 0) {
            return SKIP_BODY;
        } else {
            return EVAL_BODY_BUFFERED;
        }
    }

    @Override
    public void doInitBody() throws JspException {
        iterator = lineItems.iterator();
        if (iterator.hasNext()) {
            item = (LineItem) iterator.next();
            this.setItemAttributes(item);
        }
    }

    private void setItemAttributes(LineItem item) {
        Product p = item.getProduct();
        pageContext.setAttribute(
                "productCode", p.getCode());
        pageContext.setAttribute(
                "productDescription", p.getDescription());
        pageContext.setAttribute(
                "productPrice", p.getPriceCurrencyFormat());
        pageContext.setAttribute(
                "quantity", new Integer(item.getQuantity()));
        pageContext.setAttribute(
                "total", item.getTotalCurrencyFormat());
    }

    @Override
    public int doAfterBody() throws JspException {
        try {
            if (iterator.hasNext()) {
                item = (LineItem) iterator.next();
                this.setItemAttributes(item);
                return EVAL_BODY_AGAIN;
            } else {
                JspWriter out = bodyContent.getEnclosingWriter();
                bodyContent.writeOut(out);
                return SKIP_BODY;
            }
        } catch (IOException ioe) {
            System.err.println("error in doAfterBody " + ioe.getMessage());
            return SKIP_BODY;
        }
    }
}