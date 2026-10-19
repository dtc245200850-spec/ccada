<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title><c:if test="${product != null}">Sửa Sản Phẩm</c:if><c:if test="${product == null}">Thêm Sản Phẩm Mới</c:if></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container my-5" style="max-width: 500px;">
        <div class="card shadow">
            <div class="card-body">
                <h3 class="card-title text-center mb-4">
                    <c:if test="${product != null}">CẬP NHẬT SẢN PHẨM</c:if>
                    <c:if test="${product == null}">THÊM SẢN PHẨM MỚI</c:if>
                </h3>
                <form action="products" method="post">
                    <c:if test="${product != null}">
                        <input type="hidden" name="action" value="edit" />
                        <input type="hidden" name="id" value="${product.id}" />
                    </c:if>
                    <c:if test="${product == null}">
                        <input type="hidden" name="action" value="create" />
                    </c:if>

                    <div class="mb-3">
                        <label class="form-label">Tên sản phẩm:</label>
                        <input type="text" name="name" class="form-control" value="${product.name}" required />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Giá (VNĐ):</label>
                        <input type="number" step="any" name="price" class="form-control" value="${product.price}" required />
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Số lượng:</label>
                        <input type="number" name="quantity" class="form-control" value="${product.quantity}" required />
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Lưu</button>
                    <a href="products" class="btn btn-secondary w-100 mt-2">Hủy</a>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
