SELECT 
    s.SalesKey,
    s.OrderDate,
    s.SalesAmount,
    s.Quantity,
    p.ProductName,
    c.CustomerName,
    st.StoreName
FROM FactSales s
LEFT JOIN DimProduct p ON s.ProductKey = p.ProductKey
LEFT JOIN DimCustomer c ON s.CustomerKey = c.CustomerKey
LEFT JOIN DimStore st ON s.StoreKey = st.StoreKey;
