<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 10/14/2022
  Time: 8:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="card card-default">
  <div class="card-header">
    <h2>Products Items</h2>
    <div class="dropdown">
      <a class="dropdown-toggle" href="#" role="button" class="dropdownMenuLink" data-toggle="dropdown"
         aria-haspopup="true" aria-expanded="false"> Category </a>
      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
        <c:forEach var="category" items="${list_category}" >
        	<form action="<%= request.getContextPath()%>/product" method="post">
        		<input type="hidden" value="ShowToCategory" name="action" />
        		<input type="hidden" value="${category.getCategoryCode()}" name="category_code" />
        		<input type="submit" class="dropdown-item" value="${category.getCategoryName()}" />
        	</form>
        </c:forEach>
      </div>
    </div>
    <div class="dropdown">
      <p>${category_code} || Sum : ${sum_product}</p>
    </div>
  </div>
  <div class="card-body">
    <table id="productsTable" class="table table-hover table-product" style="width:100%">
      <thead>
      <tr>
        <th>Product Image</th>
        <th>Product Name</th>
        <th>ID</th>
        <th>Category</th>
        <th>Brand</th>
        <th>Qty</th>
        <th>Price Root</th>
        <th>Price Current</th>
        <th>Sold</th>
        <th>In Stock</th>
        <th></th>
      </tr>
      </thead>
      <tbody>
      <c:forEach var="product" items="${list_product}" >
        <tr>
          <td class="py-0">
            <img src="${product.getImageURL()}" alt="Category Image">
          </td>
          <td>${product.getProductName()}</td>
          <td>${product.getID()}</td>
          
          <c:forEach var="category" items="${list_category}">
	          <c:if test = "${category.getCategoryCode() == product.getCategoryCode()}">
	          	<td>${category.getCategoryName()}</td>
	          </c:if>
          </c:forEach>
          
          <c:forEach var="brand" items="${list_brand}">
	          <c:if test = "${brand.getBrandCode() == product.getBrandCode()}">
	          	<td>${brand.getBrandName()}</td>
	          </c:if>
          </c:forEach>
          
          <td>${product.getQty()}</td>
          <td>${product.getPriceRoot()}</td>
          <td>${product.getPriceCurrent()}</td>
          <td>${product.getSold()}</td>
          <td>${product.getInStock()}</td>
          <td>
            <div class="dropdown">
              <a class="dropdown-toggle icon-burger-mini" href="#" role="button" id="dropdownMenuLink"
                 data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              </a>

              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                <form action="${pageContext.request.contextPath}/product" method="post">
                  <input type="hidden" name="id_product" value="${product.getID()}"/>
                  <input type="hidden" name="action" value="update_raw" />
                  <button type="submit" class="dropdown-item">Update</button>
                </form>
                <form action="${pageContext.request.contextPath}/product" method="post">
                  <input type="hidden" name="pro_code" value="${product.getID()}"/>
                  <input type="hidden" name="action" value="delete" />
                  <button type="submit" class="dropdown-item">Delete</button>
                </form>
              </div>
            </div>
          </td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
  </div>
</div>
<button type="button" class="mr-1 mr-md-2 btn-add-category" onclick="show_add_product(this)">Add Product</button>