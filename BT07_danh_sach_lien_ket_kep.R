lst <- list(1, 2, 3, 4, 5)  # danh sách 5 m???t hàng
lst <- vector("list", 10000)  # 10000 NULLs
lst[[1]] <- 1
lst[[10000]] <- 10000  # lst bây gi??? ch???a 1, NULL, ..., NULL, 10000
lst
