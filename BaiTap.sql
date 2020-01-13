-- 1.them 1 dong bat ky
insert into category (id,title,description) values (4,"aaaaaaaaaaaaaaa","bbbbbbbbbbbb");
-- 2.xoa 1 dong bat ky
delete from category where id=4;
-- 3.sua 1 dong bat ky
update category set title="aaaaaaaa" where id = 3;
-- 4.Select 10 blog mới nhất đã active
SELECT * FROM blog where is_active=1 order by created_at asc limit 10;
-- 5.Lấy 5 blog từ blog thứ 10
select * from blog limit 5 offset 10;
-- 6.Set is_active = 0 của user có id = 3 trong bảng user
update user set is_active=0 where id=3;
-- 7.Xoá tất cả comment của user = 2 trong blog = 5
delete from comment where user_id=2 and target_table="blog" and target_id = 5;
-- 8.Lấy 3 blog bất kỳ (random)
select * from blog order by rand() limit 3;
-- 9.Lấy số lượng comment của các blog
select count(target_table) from comment where target_table = "blog";
-- 10.Lấy Category có tồn tại blog hoặc news đã active (không được lặp lại category)
select distinct blog.category_id from blog join news on blog.category_id=news.category_id where blog.is_active =1 or news.is_active=1;
-- 11.Lấy tổng lượt view của từng category thông qua blog và news
select sum(tong),category_id from 
(select sum(view)as tong,category_id  from blog group by category_id
union
select sum(view)as tong,category_id  from  news group by category_id) as u group by category_id;
-- 12.Lấy blog được tạo bởi user mà user này không có bất kỳ comment ở blog
SELECT distinct title FROM baitap.blog where user_id not in (SELECT distinct user_id FROM baitap.comment where target_table="blog");
-- 13.Lấy 5 blog mới nhất và số lượng comment cho từng blog
select count(c.comment),c.target_id from (select * from blog order by id desc limit 5) as sub join comment as c on sub.id = c.target_id group by c.target_id;
-- 14.Lấy 3 User comment đầu tiên trong 5 blogs mới nhất
select c.user_id from (select * from blog order by id desc limit 5) as sub join comment as c on sub.id = c.target_id where c.target_table="blog" order by c.target_id asc limit 3;
-- 15
select user_id as id from (select count(comment) as rs ,user_id from comment group by user_id) as z where rs >10;
-- 16 Xoá comment mà nội dung comment có từ "fuck" hoặc "phức"
delete from comment where comment like "%fuck%";
-- 17 Select 10 blog mới nhất được tạo bởi các user active
select * from blog as b join user as u on b.user_id=u.id where u.is_active=1 order by b.id desc limit 10;
-- 18 Lấy số lượng Blog active của user có id là 1,2,4
select u.id,count(b.id) from blog as b join user as u on b.user_id=u.id where u.id in(1,2,4) and b.is_active=1 group by u.id;
-- 19 Lấy 5 blog và 5 news của 1 category bất kỳ


-- 20 Lấy blog và news có lượt view nhiều nhất
select max(b.view),max(n.view) from blog as b cross join news as n ;
-- 21 Lấy blog được tạo trong 3 ngày gần nhất
select * from blog where day(CURDATE()) - day(created_at) =3;
-- 22 Lấy danh sách user đã comment trong 2 blog mới nhất
select u.* from user as u join comment as c on u.id = c.user_id where target_table = "blog" order by target_id desc limit 2;
-- 23 Lấy 2 blog, 2 news mà user có id = 1 đã comment
(select target_id from comment where user_id = 1 and target_table = "news" limit 2)
union
(select target_id from comment where user_id = 1 and target_table = "blog" limit 2); 
-- 24 Lấy 1 blog và 1 news có số lượng comment nhiều nhất
(select count(comment),target_id from comment where target_table = "blog" group by target_id order by count(comment) desc limit 1)
union
(select count(comment),target_id from comment where target_table = "news" group by target_id order by count(comment) desc limit 1);
-- 25 Lấy 5 blog và 5 news mới nhất đã active
(select id,content from blog where is_active = 1 order by id desc limit 5)
union
(select id,content from news where is_active = 1 order by id desc limit 5);
-- 26 Lấy nội dung comment trong blog và news của user id =1
select comment from comment where user_id = 1;
-- 27 Blog của user đang được user có id = 1 follow
select * from blog as b join (select to_user_id from follow where from_user_id = 1) as rs on b.user_id = rs.to_user_id;
-- 28 Lấy số lượng user đang follow user = 1
select count(from_user_id) from follow where to_user_id = 1;
-- 29 Lấy số lượng user 1 đang follow
select count(to_user_id) from follow where from_user_id = 1;
-- 30 Lấy 1 comment(id_comment, comment) mới nhất và thông tin user của user đang được follow bởi user 1
select * from (select c.id,c.comment,c.user_id from comment as c join (select to_user_id from follow where from_user_id = 1) as rs on c.user_id = rs.to_user_id order by id desc limit 1) as x join user as u on u.id = x.user_id;
-- 31 Hiển thị một chuổi "PHP Team " + ngày giờ hiện tại (Ex: PHP Team 2017-06-21 13:06:37)
SELECT CONCAT("PHP Team ", NOW()) AS SEQUENCE;
-- 32 Tìm có tên(user.full_name) "Khiêu" và các thông tin trên blog của user này như: (blog.title, blog.view), title category(category) của blog này 
select u.full_name,b.title,b.view,c.title from user as u join blog as b on u.id = b.user_id join category as c on c.id = b.category_id where u.full_name like "%khiêu%";
-- 33 Liệt kê email user các user có tên(user.full_name) có chứa ký tự "Khi" theo danh sách như output bên dưới.
select group_concat(email) from user where full_name like "%Khi%";
-- 34 Tính điểm cho user có email là minh82@example.com trong bảng comment
SELECT email,SUM(CASE target_table WHEN "blog" THEN 1 ELSE 2 END) AS DIEM FROM user INNER JOIN comment ON user.id = comment.user_id WHERE email = "minh82@example.com";


















