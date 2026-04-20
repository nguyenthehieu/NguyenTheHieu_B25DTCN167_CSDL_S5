-- I/O & Luồng xử lý (Backend guard trước khi gọi SQL)
-- Input:
-- - order_id
-- - restaurant_lat, restaurant_lng (hoặc đã có sẵn distance_km trong bảng Drivers)
-- - min_trust_score (từ config)
-- Output: Danh sách drivers đã lọc + sắp xếp đúng ưu tiên

SELECT 
    driver_id,
    driver_name,
    status,
    trust_score,
    distance_km
FROM Drivers
WHERE status = 'AVAILABLE' AND trust_score >= 80
ORDER BY 
    distance_km ASC,
    trust_score DESC;  