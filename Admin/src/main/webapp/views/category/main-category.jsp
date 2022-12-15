<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
        <th>Category Image</th>
        <th>Category Name</th>
        <th>Category Code</th>
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
            <img src="${category.getImageURL()}" alt="Category Image" width="100%">
          </td>
          <td>${category.getCategoryName()}</td>
          <td>${category.getCategoryCode()}</td>
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
                <form action="<%= request.getContextPath() %>/category" method="post">
                  <input type="hidden" name="id_category" value="${category.getCategoryCode()}"/>
                  <input type="hidden" name="action" value="update_raw" />
                  <button type="submit" class="dropdown-item">Update</button>
                </form>
                <form action="<%= request.getContextPath() %>/category" method="post">
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
<button type="button" class="btn-add-category mr-1 mr-md-2" onclick="show_add_category(this)">Add Category</button>