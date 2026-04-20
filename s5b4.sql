SELECT OrderID,
       CustomerName,
       OrderDate,
       FailureReason
FROM Orders
WHERE FailureReason IN (
    'KHACH_HUY',
    'QUAN_DONG_CUA',
    'KHONG_CO_TAI_XE',
    'BOM_HANG'
);