CREATE TABLE IF NOT EXISTS `User` (`id` INT NOT NULL AUTO_INCREMENT,
                        `first_name` VARCHAR(256) NOT NULL,
                        `last_name` VARCHAR(256) NOT NULL,
                        `login` VARCHAR(256) NOT NULL,
                        `password` VARCHAR(256) NOT NULL,
                        `email` VARCHAR(256) NULL,
                        `title` VARCHAR(1024) NULL,
                        PRIMARY KEY (`id`),KEY `fn` (`first_name`),KEY `ln` (`last_name`));

CREATE TABLE IF NOT EXISTS `Chat` (`id` INT NOT NULL AUTO_INCREMENT,
                        `name` VARCHAR(1024) NOT NULL,
                        `creator_id` INT NOT NULL,
                        PRIMARY KEY (`id`),
                        CONSTRAINT fk_c_u foreign key (creator_id) references User (id));


CREATE TABLE IF NOT EXISTS `Message` (`id` INT NOT NULL AUTO_INCREMENT,
                        `user_id` INT NOT NULL,
                        `chat_id` INT NOT NULL,
                        `message` VARCHAR(1024) NOT NULL,
                        PRIMARY KEY (`id`));


CREATE TABLE IF NOT EXISTS `UserToChat` (`chat_id` INT NOT NULL,
                        `user_id` INT NOT NULL,
                        PRIMARY KEY(chat_id,user_id),
                        CONSTRAINT fk_utc_u foreign key (user_id) references User (id),
                        CONSTRAINT fk_utc_c foreign key (chat_id) references Chat (id));
  
                                                          

insert into User(first_name, last_name, login, password, email, title) values ('Ivanov', 'Ivan', 'Ivan1Ivanov', 'qwerty1qwerty', 'Ivanov@mail.ru','Mr');
insert into User(first_name, last_name, login, password, email, title) values ('Petrov', 'Petr', 'PP123', '2578390', 'pppetrr@mail.ru','Mr');
insert into User(first_name, last_name, login, password, email, title) values ('Konstantinova', 'Ksenia', 'user223', '7438100', 'konst@mail.ru','Ms');
insert into User(first_name, last_name, login, password, email, title) values ('Tsyzyrev', 'Danila', '100221fc1', '367281', 'danila38@hotmail.com','Mr');
insert into User(first_name, last_name, login, password, email, title) values ('Kuptsova', 'Darya', 'darya7087', '39191', 'darya7087@yandex.ru','Ms');
insert into User(first_name, last_name, login, password, email, title) values ('name6', 'name6', 'name6', 'name6', 'name6@email.com','name6');
insert into User(first_name, last_name, login, password, email, title) values ('name7', 'name7', 'name7', 'name7', 'name7@email.com','name7');
insert into User(first_name, last_name, login, password, email, title) values ('name8', 'name8', 'name8', 'name8', 'name8@email.com','name8');
insert into User(first_name, last_name, login, password, email, title) values ('name9', 'name9', 'name9', 'name9', 'name9@email.com','name9');
insert into User(first_name, last_name, login, password, email, title) values ('name10', 'name10', 'name10', 'name10', 'name10@email.com','name10');
insert into User(first_name, last_name, login, password, email, title) values ('name11', 'name11', 'name11', 'name11', 'name11@email.com','name11');
insert into User(first_name, last_name, login, password, email, title) values ('name12', 'name12', 'name12', 'name12', 'name12@email.com','name12');
insert into User(first_name, last_name, login, password, email, title) values ('name13', 'name13', 'name13', 'name13', 'name13@email.com','name13');
insert into User(first_name, last_name, login, password, email, title) values ('name14', 'name14', 'name14', 'name14', 'name14@email.com','name14');
insert into User(first_name, last_name, login, password, email, title) values ('name15', 'name15', 'name15', 'name15', 'name15@email.com','name15');
insert into User(first_name, last_name, login, password, email, title) values ('name9', 'name9', 'name9', 'name9', 'name9@email.com','name16');
insert into User(first_name, last_name, login, password, email, title) values ('name10', 'name10', 'name10', 'name10', 'name10@email.com','name17');
insert into User(first_name, last_name, login, password, email, title) values ('name11', 'name11', 'name11', 'name11', 'name11@email.com','name18');
insert into User(first_name, last_name, login, password, email, title) values ('name12', 'name12', 'name12', 'name12', 'name12@email.com','name19');
insert into User(first_name, last_name, login, password, email, title) values ('name13', 'name13', 'name13', 'name13', 'name13@email.com','name20');
insert into User(first_name, last_name, login, password, email, title) values ('name14', 'name14', 'name14', 'name14', 'name14@email.com','name21');
insert into User(first_name, last_name, login, password, email, title) values ('name15', 'name15', 'name15', 'name15', 'name15@email.com','name22');
insert into User(first_name, last_name, login, password, email, title) values ('name9', 'name9', 'name9', 'name9', 'name9@email.com','name23');
insert into User(first_name, last_name, login, password, email, title) values ('name10', 'name10', 'name10', 'name10', 'name10@email.com','name24');
insert into User(first_name, last_name, login, password, email, title) values ('name11', 'name11', 'name11', 'name11', 'name11@email.com','name25');
insert into User(first_name, last_name, login, password, email, title) values ('name12', 'name12', 'name12', 'name12', 'name12@email.com','name26');
insert into User(first_name, last_name, login, password, email, title) values ('name13', 'name13', 'name13', 'name13', 'name13@email.com','name27');
insert into User(first_name, last_name, login, password, email, title) values ('name14', 'name14', 'name14', 'name14', 'name14@email.com','name28');
insert into User(first_name, last_name, login, password, email, title) values ('name15', 'name15', 'name15', 'name15', 'name15@email.com','name29');
insert into User(first_name, last_name, login, password, email, title) values ('name9', 'name9', 'name9', 'name9', 'name9@email.com','name30');
insert into User(first_name, last_name, login, password, email, title) values ('name10', 'name10', 'name10', 'name10', 'name10@email.com','name31');
insert into User(first_name, last_name, login, password, email, title) values ('name11', 'name11', 'name11', 'name11', 'name11@email.com','name32');
insert into User(first_name, last_name, login, password, email, title) values ('name12', 'name12', 'name12', 'name12', 'name12@email.com','name33');
insert into User(first_name, last_name, login, password, email, title) values ('name13', 'name13', 'name13', 'name13', 'name13@email.com','name34');
insert into User(first_name, last_name, login, password, email, title) values ('name14', 'name14', 'name14', 'name14', 'name14@email.com','name35');
insert into User(first_name, last_name, login, password, email, title) values ('name15', 'name15', 'name15', 'name15', 'name15@email.com','name36');
insert into User(first_name, last_name, login, password, email, title) values ('name9', 'name9', 'name9', 'name9', 'name9@email.com','name37');
insert into User(first_name, last_name, login, password, email, title) values ('name10', 'name10', 'name10', 'name10', 'name10@email.com','name38');
insert into User(first_name, last_name, login, password, email, title) values ('name11', 'name11', 'name11', 'name11', 'name11@email.com','name39');
insert into User(first_name, last_name, login, password, email, title) values ('name12', 'name12', 'name12', 'name12', 'name12@email.com','name40');
insert into User(first_name, last_name, login, password, email, title) values ('name13', 'name13', 'name13', 'name13', 'name13@email.com','name41');
insert into User(first_name, last_name, login, password, email, title) values ('name14', 'name14', 'name14', 'name14', 'name14@email.com','name42');
insert into User(first_name, last_name, login, password, email, title) values ('name15', 'name15', 'name15', 'name15', 'name15@email.com','name43');
insert into User(first_name, last_name, login, password, email, title) values ('name9', 'name9', 'name9', 'name9', 'name9@email.com','name44');
insert into User(first_name, last_name, login, password, email, title) values ('name10', 'name10', 'name10', 'name10', 'name10@email.com','name45');
insert into User(first_name, last_name, login, password, email, title) values ('name11', 'name11', 'name11', 'name11', 'name11@email.com','name46');
insert into User(first_name, last_name, login, password, email, title) values ('name12', 'name12', 'name12', 'name12', 'name12@email.com','name47');
insert into User(first_name, last_name, login, password, email, title) values ('name13', 'name13', 'name13', 'name13', 'name13@email.com','name48');
insert into User(first_name, last_name, login, password, email, title) values ('name14', 'name14', 'name14', 'name14', 'name14@email.com','name49');
insert into User(first_name, last_name, login, password, email, title) values ('name15', 'name15', 'name15', 'name15', 'name15@email.com','name50');




insert into Chat(name, creator_id) values ("chat1", 1);
insert into Chat(name, creator_id) values ("chat2", 2);
insert into Chat(name, creator_id) values ("chat3", 3);
insert into Chat(name, creator_id) values ("chat4", 4);
insert into Chat(name, creator_id) values ("chat5", 5);
insert into Chat(name, creator_id) values ("chat6", 6);
insert into Chat(name, creator_id) values ("chat7", 7);
insert into Chat(name, creator_id) values ("chat8", 8);
insert into Chat(name, creator_id) values ("chat9", 9);
insert into Chat(name, creator_id) values ("chat10", 10);
insert into Chat(name, creator_id) values ("chat11", 11);
insert into Chat(name, creator_id) values ("chat12", 12);
insert into Chat(name, creator_id) values ("chat13", 13);
insert into Chat(name, creator_id) values ("chat14", 14);
insert into Chat(name, creator_id) values ("chat15", 15);
insert into Chat(name, creator_id) values ("chat16", 16);
insert into Chat(name, creator_id) values ("chat17", 17);
insert into Chat(name, creator_id) values ("chat18", 18);
insert into Chat(name, creator_id) values ("chat19", 19);
insert into Chat(name, creator_id) values ("chat20", 20);
insert into Chat(name, creator_id) values ("chat21", 21);
insert into Chat(name, creator_id) values ("chat22", 22);
insert into Chat(name, creator_id) values ("chat23", 23);
insert into Chat(name, creator_id) values ("chat24", 24);
insert into Chat(name, creator_id) values ("chat25", 25);
insert into Chat(name, creator_id) values ("chat26", 26);
insert into Chat(name, creator_id) values ("chat27", 27);
insert into Chat(name, creator_id) values ("chat28", 28);
insert into Chat(name, creator_id) values ("chat29", 29);
insert into Chat(name, creator_id) values ("chat30", 30);
insert into Chat(name, creator_id) values ("chat31", 31);
insert into Chat(name, creator_id) values ("chat32", 32);
insert into Chat(name, creator_id) values ("chat33", 33);
insert into Chat(name, creator_id) values ("chat34", 34);
insert into Chat(name, creator_id) values ("chat35", 35);
insert into Chat(name, creator_id) values ("chat36", 36);
insert into Chat(name, creator_id) values ("chat37", 37);
insert into Chat(name, creator_id) values ("chat38", 38);
insert into Chat(name, creator_id) values ("chat39", 39);
insert into Chat(name, creator_id) values ("chat40", 40);
insert into Chat(name, creator_id) values ("chat41", 41);
insert into Chat(name, creator_id) values ("chat42", 42);
insert into Chat(name, creator_id) values ("chat43", 43);
insert into Chat(name, creator_id) values ("chat44", 44);
insert into Chat(name, creator_id) values ("chat45", 45);
insert into Chat(name, creator_id) values ("chat46", 46);
insert into Chat(name, creator_id) values ("chat47", 47);
insert into Chat(name, creator_id) values ("chat48", 48);
insert into Chat(name, creator_id) values ("chat49", 49);
insert into Chat(name, creator_id) values ("chat50", 50);


insert into Message(chat_id, user_id, message) values (7, 1, "message1");
insert into Message(chat_id, user_id, message) values (1, 2, "message2");
insert into Message(chat_id, user_id, message) values (1, 3, "message3");
insert into Message(chat_id, user_id, message) values (2, 1, "message1");
insert into Message(chat_id, user_id, message) values (2, 2, "message2");
insert into Message(chat_id, user_id, message) values (2, 3, "message3");
insert into Message(chat_id, user_id, message) values (3, 1, "message1");
insert into Message(chat_id, user_id, message) values (3, 2, "message2");
insert into Message(chat_id, user_id, message) values (3, 3, "message3");
insert into Message(chat_id, user_id, message) values (4, 1, "message1");
insert into Message(chat_id, user_id, message) values (4, 2, "message2");
insert into Message(chat_id, user_id, message) values (4, 3, "message3");
insert into Message(chat_id, user_id, message) values (5, 1, "message1");
insert into Message(chat_id, user_id, message) values (5, 2, "message2");
insert into Message(chat_id, user_id, message) values (5, 3, "message3");
insert into Message(chat_id, user_id, message) values (6, 1, "message1");
insert into Message(chat_id, user_id, message) values (6, 2, "message2");
insert into Message(chat_id, user_id, message) values (6, 3, "message3");
insert into Message(chat_id, user_id, message) values (7, 1, "message1");
insert into Message(chat_id, user_id, message) values (7, 2, "message2");
insert into Message(chat_id, user_id, message) values (7, 3, "message3");
insert into Message(chat_id, user_id, message) values (1, 1, "message1");
insert into Message(chat_id, user_id, message) values (1, 2, "message2");
insert into Message(chat_id, user_id, message) values (1, 3, "message3");
insert into Message(chat_id, user_id, message) values (2, 1, "message1");
insert into Message(chat_id, user_id, message) values (2, 2, "message2");
insert into Message(chat_id, user_id, message) values (2, 3, "message3");
insert into Message(chat_id, user_id, message) values (3, 1, "message1");
insert into Message(chat_id, user_id, message) values (3, 2, "message2");
insert into Message(chat_id, user_id, message) values (3, 3, "message3");
insert into Message(chat_id, user_id, message) values (4, 1, "message1");
insert into Message(chat_id, user_id, message) values (4, 2, "message2");
insert into Message(chat_id, user_id, message) values (4, 3, "message3");
insert into Message(chat_id, user_id, message) values (5, 1, "message1");
insert into Message(chat_id, user_id, message) values (5, 2, "message2");
insert into Message(chat_id, user_id, message) values (5, 3, "message3");
insert into Message(chat_id, user_id, message) values (6, 1, "message1");
insert into Message(chat_id, user_id, message) values (6, 2, "message2");
insert into Message(chat_id, user_id, message) values (6, 3, "message3");
insert into Message(chat_id, user_id, message) values (7, 1, "message1");
insert into Message(chat_id, user_id, message) values (7, 2, "message2");
insert into Message(chat_id, user_id, message) values (7, 3, "message3");
insert into Message(chat_id, user_id, message) values (1, 1, "message1");
insert into Message(chat_id, user_id, message) values (1, 2, "message2");
insert into Message(chat_id, user_id, message) values (1, 3, "message3");
insert into Message(chat_id, user_id, message) values (2, 1, "message1");
insert into Message(chat_id, user_id, message) values (2, 2, "message2");
insert into Message(chat_id, user_id, message) values (2, 3, "message3");
insert into Message(chat_id, user_id, message) values (3, 1, "message1");
insert into Message(chat_id, user_id, message) values (3, 2, "message2");
insert into Message(chat_id, user_id, message) values (3, 3, "message3");
insert into Message(chat_id, user_id, message) values (4, 1, "message1");
insert into Message(chat_id, user_id, message) values (4, 2, "message2");

insert into Group_chat(chat_id, user_id) values(1, 3);
insert into Group_chat(chat_id, user_id) values(5, 7);
insert into Group_chat(chat_id, user_id) values(9, 12);
insert into Group_chat(chat_id, user_id) values(30, 2);
insert into Group_chat(chat_id, user_id) values(1, 19);
insert into Group_chat(chat_id, user_id) values(5, 8);
insert into Group_chat(chat_id, user_id) values(23, 32);
insert into Group_chat(chat_id, user_id) values(18, 45);
insert into Group_chat(chat_id, user_id) values(14, 10);
insert into Group_chat(chat_id, user_id) values(11, 11);
insert into Group_chat(chat_id, user_id) values(5, 38);
insert into Group_chat(chat_id, user_id) values(26, 14);
insert into Group_chat(chat_id, user_id) values(29, 17);
insert into Group_chat(chat_id, user_id) values(33, 6);
insert into Group_chat(chat_id, user_id) values(36, 4);
insert into Group_chat(chat_id, user_id) values(12, 10);
insert into Group_chat(chat_id, user_id) values(9, 1);
insert into Group_chat(chat_id, user_id) values(7, 17);
insert into Group_chat(chat_id, user_id) values(44, 45);
insert into Group_chat(chat_id, user_id) values(4, 49);
insert into Group_chat(chat_id, user_id) values(45, 7);
insert into Group_chat(chat_id, user_id) values(16, 4);
insert into Group_chat(chat_id, user_id) values(26, 13);
insert into Group_chat(chat_id, user_id) values(1, 18);
insert into Group_chat(chat_id, user_id) values(15, 45);
insert into Group_chat(chat_id, user_id) values(17, 6);
insert into Group_chat(chat_id, user_id) values(12, 1);
insert into Group_chat(chat_id, user_id) values(12, 2);
insert into Group_chat(chat_id, user_id) values(8, 18);
insert into Group_chat(chat_id, user_id) values(14, 4);
insert into Group_chat(chat_id, user_id) values(19, 7);
insert into Group_chat(chat_id, user_id) values(7, 19);
