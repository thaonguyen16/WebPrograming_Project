<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 10/14/2022
  Time: 8:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form action="${pageContext.request.contextPath}/Admin_ManageProduct_Category" id="show_add_category" style="display: none" method="post">
  <input type="hidden" name="action" value="add" />
  <div class="modal-content">
    <div class="modal-header align-items-center p3 p-md-5">
      <h2 class="modal-title" id="exampleModalGridTitle">Add Category</h2>
      <div>
        <button type="button" id="btn_cancel" class="btn btn-light btn-pill mr-1 mr-md-2" data-dismiss="modal"> cancel
        </button>
        <button type="submit" class="btn btn-primary  btn-pill" data-dismiss="modal"> save </button>
      </div>
    </div>
    <div class="modal-body p3 p-md-5">
      <div class="row">
        <div class="col-lg-8">
          <h3 class="h5 mb-5">Category Information</h3>
          <div class="form-group mb-5">
            <label for="imageURL">Image URL</label>
            <input type="text" class="form-control" name = "image_url" id="imageURL" placeholder="Image URL" required>
          </div>
          <div class="form-group mb-5">
            <label for="category_name">Category Name</label>
            <input type="text" class="form-control" name ="category_name" id="category_name" placeholder="Category Name" required>
          </div>
          <div class="form-group mb-5">
            <label for="qty">Quantity</label>
            <input type="number" class="form-control" name ="qty" id="qty" placeholder="Quantity" required>
          </div>
          <div class="form-group mb-5">
            <label for="Sold">Sold</label>
            <input type="number" class="form-control" name ="sold" id="Sold" placeholder="Sold" required>
          </div>
          <div class="form-group mb-5">
            <label for="Sold">InStock</label>
            <input type="number" class="form-control" name="in_stock" id="InStock" placeholder="In Stock" required>
          </div>
        </div>
      </div>
    </div>
  </div>
</form >