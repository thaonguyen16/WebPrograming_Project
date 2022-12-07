<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 10/14/2022
  Time: 8:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="card card-default" id="show_status_category">
  <div class="card-header">
    <h2>Products Category</h2>
    <div class="dropdown">
      <p>Sum category: ${sum_category}</p>
    </div>
  </div>
  <div class="card-body">
    <table id="productsTable" class="table table-hover table-product" style="width:100%">
      <thead>
      <tr>
        <th></th>
        <th>Category Name</th>
        <th>ID</th>
        <th>Qty</th>
        <th>Sold</th>
        <th>In Stock</th>
        <th></th>
      </tr>
      </thead>
      <tbody>
      <c:forEach var="category" items="${list_category}" >
        <tr>
          <td class="py-0">
            <img src="${category.getImageURL()}" alt="Category Image">
          </td>
          <td>${category.getCategoryName()}</td>
          <td>${category.getID()}</td>
          <td>${category.getQty()}</td>
          <td>${category.getSold()}</td>
          <td>${category.getInStock()}</td>
          <td>
            <div class="dropdown">
              <a class="dropdown-toggle icon-burger-mini" href="#" role="button" id="dropdownMenuLink"
                 data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              </a>

              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuLink">
                <form action="${pageContext.request.contextPath}/Admin_ManageProduct_Category" method="post">
                  <input type="hidden" name="id_category" value="${category.getID()}"/>
                  <input type="hidden" name="action" value="update_raw" />
                  <button type="submit" class="dropdown-item">Update</button>
                </form>
                <form action="${pageContext.request.contextPath}/Admin_ManageProduct_Category" method="post">
                  <input type="hidden" name="id_category" value="${category.getID()}"/>
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
<button type="button" class="btn btn-light btn-pill mr-1 mr-md-2" id="add_product">Add Category
</button>