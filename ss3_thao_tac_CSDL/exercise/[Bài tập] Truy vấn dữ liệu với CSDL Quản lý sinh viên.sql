USE QuanLySinhVien;

-- Hiển thị tất cả các sinh viên có tên bắt đầu bảng ký tự ‘h’

SELECT 
    *
FROM
    Student S
WHERE
    S.StudentName LIKE 'h%';
    
    -- ian bắt đầu vào tháng 12.

SELECT 
*FROM class c 
WHERE (MONTH(StartDate))=12;



-- Hiển thị tất cả các thông tin môn học có credit trong khoảng từ 3-5.

SELECT 
*FROM Subject;


SELECT 
*FROM Subject s
WHERE s.Credit in(3,4,5) ;


-- Thay đổi mã lớp(ClassID) của sinh viên có tên ‘Hung’ là 2.

UPDATE Student s
SET ClassID = 2
WHERE s.StudentName = 'hung';

SELECT 
*FROM Student S ;

-- Hiển thị các thông tin: StudentName, SubName, Mark. Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.

SELECT s.StudentName,u.SubName,m.Mark
FROM student s
join mark m
on s.StudentId = m.StudentId
join Subject u
on m.SubId = u.SubId
order by m.Mark,s.StudentName desc ;


