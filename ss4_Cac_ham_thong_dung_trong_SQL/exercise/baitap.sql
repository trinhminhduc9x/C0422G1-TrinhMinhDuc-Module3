USE QuanLySinhVien;
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.

SELECT SubName, MAX(Credit) as max
FROM Subject
GROUP BY SubName 
order by max desc
;
-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT SubName, MAX(Credit) as max
FROM Subject
GROUP BY SubName ;

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần

SELECT 
    S.StudentId, S.StudentName, AVG(Mark) AS avg
FROM
    Student S
        JOIN
    Mark M ON S.StudentId = M.StudentId
GROUP BY S.StudentId , S.StudentName
ORDER BY avg DESC;
