<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 10/14/2022
  Time: 8:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form action="<%= request.getContextPath() %>/product" method="post">
    <input type="hidden" name="action" value="update" />
    <div class="modal-content">
        <div class="modal-header align-items-center p3 p-md-5">
            <h2 class="modal-title" id="exampleModalGridTitle">Update Product</h2>
            <div>
        		<a href="<%= request.getContextPath() %>/product" class="btn btn-light btn-pill mr-1 mr-md-2" data-dismiss="modal"> cancel </a>
        		<button type="submit" class="btn btn-primary  btn-pill" data-dismiss="modal"> save </button>
      		</div>
        </div>
        <div class="modal-body p3 p-md-5">
            <div class="row">
                <div class="col-lg-8">
                    <h3 class="h5 mb-5">Product Information</h3>
                    <div class="form-group mb-5">
                        <label for="imageURL">Product Image</label>
                        <input type="text" class="form-control" name = "image_url" id="imageURL" placeholder="Image URL" required value="${product.getImageURL() }">
                    </div>
                    <div class="form-group mb-5">
                        <label for="category_name">Product Name</label>
                        <input type="text" class="form-control" name ="product_name" id="category_name" placeholder="Product Name" required value="${product.getProductName() }">
                    </div>
                    <div class="form-group mb-5">
                        <label for="qty">Quantity</label>
                        <input type="number" class="form-control" name ="qty" id="qty" placeholder="Quantity" required value="${product.getQty() }">
                    </div>
                    <div class="form-row mb-4">
                        <div class="col">
                            <label for="root_price">Root Price</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">$</span>
                                </div>
                                <input type="number" class="form-control" name="root_price" id="root_price" placeholder="Root Price" aria-label="Price"
                                       aria-describedby="basic-addon1" value="${product.getPriceRoot()}">
                            </div>
                        </div>
                        <div class="col">
                            <label for="current_price">Current Price</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon2">$</span>
                                </div>
                                <input type="number" class="form-control" name="current_price" id="current_price" placeholder="Current Price"
                                       aria-label="SalePrice" aria-describedby="basic-addon2" value="${product.getPriceCurrent()}">
                            </div> 
                        </div>
                    </div>
                    <div class="product-type mb-3 ">
                        <label for="qty">Category</label>
                        <div>
                            <c:forEach var="category" items="${list_category}">
                            <div class="custom-control custom-radio d-inline-block mr-3 mb-3">
                            	<c:if test="${category.getCategoryCode() == product.getCategoryCode()}">
                            		<input type="radio" id="${category.getCategoryName()}" name="category" class="custom-control-input"
                                       checked="checked" value="${category.getCategoryCode()}">
                            	</c:if>
                            	<c:if test="${category.getCategoryCode() != product.getCategoryCode()}">
                            		<input type="radio" id="${category.getCategoryName()}" name="category" class="custom-control-input"
                                       value="${category.getCategoryCode()}">
                            	</c:if>
                                <label class="custom-control-label" for="${category.getCategoryName()}">${category.getCategoryName()}</label>
                            </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="product-type mb-3 ">
                        <label for="qty">Brand</label>
                        <div>
                            <c:forEach var="brand" items="${list_all_brand}">
                            <div class="custom-control custom-radio d-inline-block mr-3 mb-3">
                            	<c:if test="${brand.getBrandCode() == product.getBrandCode()}">
                                	<input type="radio" id="${brand.getBrandName()}" name="brand" class="custom-control-input"
                                       checked="checked" value="${brand.getBrandCode()}">
                                </c:if>
                                <c:if test="${brand.getBrandCode() != product.getBrandCode()}">
                                	<input type="radio" id="${brand.getBrandName()}" name="brand" class="custom-control-input"
                                       value="${brand.getBrandCode()}">
                                </c:if>
                                <label class="custom-control-label" for="${brand.getBrandName()}">${brand.getBrandName()}</label>
                            </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="form-group mb-5">
                        <label for="Sold">Sold</label>
                        <input type="number" class="form-control" name ="sold" id="Sold" placeholder="Sold" required value="${product.getSold()}">
                    </div>
                    <div class="form-group mb-5">
                        <label for="Sold">InStock</label>
                        <input type="number" class="form-control" name="in_stock" id="InStock" placeholder="In Stock" required value="${product.getInStock()}">
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>