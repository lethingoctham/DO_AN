merge <- function(a, b) {
  # T???o m???ng t???m th???i
  temp <- numeric(length(a) + length(b))
  
  # l???y hai bi???n ban d???u tr??? d???n
  # b???t d???u c???a c�c m???ng con d� s???p x???p
  # v� j tr??? d???n b???t d???u b???t d???u
  # c???a m???ng t???m th???i
  astart <- 1
  bstart <- 1
  j <- 1
  for(j in 1 : length(temp)) {
    # n???u a[astart] < b[bstart]
    if((astart <= length(a) &&
        a[astart] < b[bstart]) ||
       bstart > length(b)) {
      # ch�n a[start] t???m th???i 
      # v� tang t???i ti???p theo
      temp[j] <- a[astart]
      astart <- astart + 1
    }
    else {
      temp[j] <- b[bstart]
      bstart <- bstart + 1
    }
  }
  temp
}

# H�m d??? s???p x???p
mergeSort <- function(arr) {
  
  # n???u d??? d�i c???a m???ng l???n hon 1 th� th???c hi???n s???p x???p
  if(length(arr) > 1) {
    
    # t�m di???m gi???a m� m???ng c???n du???c chia
    mid <- ceiling(length(arr)/2)
    
    # ph???n d???u ti�n c???a m???ng s??? t??? 1 d???n gi???a
    a <- mergeSort(arr[1:mid])
    
# ph???n th??? hai c???a m???ng s??? t??? (mid + 1) d???n chi???u d�i (arr)
    b <- mergeSort(arr[(mid+1):length(arr)])
    
# h???p nh???t c�c m???ng d� s???p x???p ??? tr�n
    merge(a, b)
  }
  # kh�c ch??? tr??? v??? arr v???i m???t ph???n t??? duy nh???t
  else {
    arr
  }
}

# l???y danh s�ch ban d???u d???u v�o
arr <- sample(1:100, 15)
# G???i h�m mergeSort
result <- mergeSort(arr)
# In ra k???t qu???
result