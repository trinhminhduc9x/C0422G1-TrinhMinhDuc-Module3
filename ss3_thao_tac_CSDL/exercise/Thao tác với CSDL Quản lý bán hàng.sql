use quan_ly_ban_hang;
SELECT 
    *
FROM
    quan_ly_ban_hang.customer;

INSERT INTO customer (cID, cName, cAge)
VALUES 
(1,'Minh Quan',10),
(2,'Ngoc Oanh',20),
(3,'Hong Ha',50);

INSERT INTO ordera (oID, oDate,cID)
VALUES 
(1,'1990-02-27',null,1),
(2,'2006-03-23',null,2),
(3,'2006-03-16',null,1);


SELECT 
    *
FROM
    quan_ly_ban_hang.ordera;

SELECT 
    *
FROM
    quan_ly_ban_hang.product;


INSERT INTO product (pID, pName,pPrice)
VALUES 
(1,'May Giat',3),
(2,'Tu Lanh',5),
(3,'Dieu Hoa',7),
(4,'Quat',1),
(5,'Bep Dien',2);

SELECT 
    *
FROM
    quan_ly_ban_hang.orderdetail;

INSERT INTO orderdetail (oID, pID,odQTY)
VALUES 
(1,1,3),
(1,3,7),
(1,4,2),
(2,1,1),
(3,1,8),
(2,5,4),
(2,3,3);


-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order


SELECT 
    o.oID, a.oDate, p.pPrice
FROM
    orderdetail o
        INNER JOIN
    ordera a ON o.oID = a.oID
        JOIN
    product p ON o.pID = p.pI;
    -- Dsách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách

SELECT c.cName,p.pName
FROM customer c
inner join  ordera a
on c.cID = a.cID
 join orderdetail o
on a.oID = o.oID
join  product p
on o.pID = p.pID;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào

SELECT c.cName
FROM customer c
left join  ordera a
on a.cID = c.cID
where a.cID is null  
;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)

SELECT a.oID,a.oDate,sum(odQTY*pPrice) 
FROM ordera a
inner join  orderdetail o
on a.oID = o.oID
join  product p
on o.pID = p.pID
group by a.oID;