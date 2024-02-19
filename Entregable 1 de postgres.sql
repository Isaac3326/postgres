create table users (
	id serial primary key,
	firts_name varchar(50),
	lastname varchar(50),
	email varchar(100)
);

create table post (
	id serial primary key,
	creator_id int references users(id),
	title varchar(100),
	texto text
);

create table likes(
	id serial primary key,
	user_id int references users(id),
	post_id int references post(id)
);

insert into users( firts_name, lastname, email)values
('Roberto', 'Diaz', 'Roberto@gmail.com'),
('Micael', 'Nuñez', 'Micael@gmail.com'),
('Isaac', 'Moya', 'Isaac@mail.com');

select * from users;

insert into post (creator_id, title, texto) values
('1','el celular','la camara tiene mucho pixeles'),
('2', 'la cama', 'Es comoda y me ayuda a dormir bien');


select * from post;
select * from likes;
select * from users;


insert into likes( user_id, post_id )values
('1', '60'),
('2', '61'),
('3', '51'),
('1', '52'),
('2', '53');

select * from post inner join users
on post.creator_id = users.id;

-- post -- likes -- users --

select * from post inner join likes
on post.id = likes.post_id inner join users
on users.id = likes.user_id;

-- users -- likes - post

select * from users inner join likes
on users.id = likes.user_id inner join post
on post.id = likes.post_id;






