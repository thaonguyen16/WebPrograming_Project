<form action="<%= request.getContextPath() %>/category" method="post">
	<input type="hidden" name="action" value="update" />
	<div class="modal-content">
		<div class="modal-header align-items-center p3 p-md-5">
			<h2 class="modal-title" id="exampleModalGridTitle">Update
				Category</h2>
			<div>
				<a href="<%= request.getContextPath() %>/category"
					class="btn btn-light btn-pill mr-1 mr-md-2" data-dismiss="modal">
					cancel </a>
				<button type="submit" class="btn btn-primary  btn-pill"
					data-dismiss="modal">save</button>
			</div>
		</div>
		<div class="modal-body p3 p-md-5">
			<div class="row">
				<div class="col-lg-8">
					<h3 class="h5 mb-5">Category Information</h3>
					<input type="hidden" name="id_category" value="${category.getID()}" />
					<div class="form-group mb-5">
						<label for="imageURL">ImageURL</label> 
						<input type="text" class="form-control" name="image_url" id="imageURL"
							placeholder="Image URL" value="${category.getImageURL()}"
							required>
					</div>
					<div class="form-group mb-5">
						<label for="category_name">Category Name</label> <input
							type="text" class="form-control" name="category_name"
							id="category_name" placeholder="Category Name"
							value="${category.getCategoryName()}" required>
					</div>
					<div class="form-group mb-5">
						<label for="category_name">Category Code</label> <input
							type="text" class="form-control" name="category_code"
							id="category_code" placeholder="Category Code"
							value="${category.getCategoryCode()}" required>
					</div>
					<div class="form-group mb-5">
						<label for="qty">Quantity</label> <input type="number"
							class="form-control" name="qty" id="qty" placeholder="Quantity"
							value="${category.getQty()}" required>
					</div>
					<div class="form-group mb-5">
						<label for="Sold">Sold</label> <input type="number"
							class="form-control" name="sold" id="Sold" placeholder="Sold"
							value="${category.getSold()}" required>
					</div>
					<div class="form-group mb-5">
						<label for="Sold">InStock</label> <input type="number"
							class="form-control" name="in_stock" id="InStock"
							placeholder="In Stock" value="${category.getInStock()}" required>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>
