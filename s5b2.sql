-- Sai ở chỗ: dùng LIMIT mà không có ORDER BY
-- Trong SQL, nếu không chỉ định thứ tự:
-- DB không có nghĩa vụ trả dữ liệu theo thứ tự nào cả
-- Kết quả phụ thuộc vào:
-- cách lưu trữ vật lý
-- → Mỗi lần query có thể trả về 5 dòng bất kỳ
-- → Cảm giác “random” khi refresh là hoàn toàn bình thường

SELECT restaurant_name, created_at
FROM Restaurants
ORDER BY created_at DESC, id DESC
LIMIT 5;