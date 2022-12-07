<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 10/14/2022
  Time: 8:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">
<jsp:include page="head.jsp" />
<body class="navbar-fixed sidebar-fixed" id="body">
<jsp:include page="script_header.jsp" />
<div class="wrapper">
  <jsp:include page="aside.jsp" />
  <div class="page-wrapper">
    <jsp:include page="header.jsp" />
    <div class="content-wrapper">
      <div class="content">
        <div class="row">
          <div class="col-12">
            <form action="${pageContext.request.contextPath}/Admin_ManageProduct_Category" method="post">
              <input type="hidden" name="action" value="update" />
              <div class="modal-content">
                <div class="modal-header align-items-center p3 p-md-5">
                  <h2 class="modal-title" id="exampleModalGridTitle">Update Category</h2>
                  <div>
                    <a href="${pageContext.request.contextPath}/Admin_ManageProduct_Category" class="btn btn-light btn-pill mr-1 mr-md-2" data-dismiss="modal"> cancel
                    </a>
                    <button type="submit" class="btn btn-primary  btn-pill" data-dismiss="modal"> save </button>
                  </div>
                </div>
                <div class="modal-body p3 p-md-5">
                  <div class="row">
                    <div class="col-lg-8">
                      <h3 class="h5 mb-5">Category Information</h3>
                      <input type="hidden" name="id_category" value="${category.getID()}"  />
                      <div class="form-group mb-5">
                        <label for="imageURL">ImageURL</label>
                        <input type="text" class="form-control" name="image_url" id="imageURL" placeholder="Image URL" value="${category.getImageURL()}" required>
                      </div>
                      <div class="form-group mb-5">
                        <label for="category_name">Category Name</label>
                        <input type="text" class="form-control" name ="category_name" id="category_name" placeholder="Category Name" value="${category.getCategoryName()}" required>
                      </div>
                      <div class="form-group mb-5">
                        <label for="qty">Quantity</label>
                        <input type="number" class="form-control" name ="qty" id="qty" placeholder="Quantity" value="${category.getQty()}" required>
                      </div>
                      <div class="form-group mb-5">
                        <label for="Sold">Sold</label>
                        <input type="number" class="form-control" name ="sold" id="Sold" placeholder="Sold" value="${category.getSold()}" required>
                      </div>
                      <div class="form-group mb-5">
                        <label for="Sold">InStock</label>
                        <input type="number" class="form-control" name="in_stock" id="InStock" placeholder="In Stock" value="${category.getInStock()}" required>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </form >
          </div>
        </div>
        <jsp:include page="stock_modal.jsp" />
      </div>
    </div>
    <jsp:include page="footer.jsp" />
  </div>
</div>
<jsp:include page="card_canvas.jsp" />
<jsp:include page="script_footer.jsp" />
</body>
</html>