mysql> CREATE TABLE departments(
  department_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
  );

  mysql> ALTER TABLE people ADD department_id	INT UNSIGNED
  AFTER email;

  mysql>  UPDATE departments SET name = '営業' WHERE department_id = 1;
  mysql>  UPDATE departments SET name = '開発' WHERE department_id = 2;
  mysql>  UPDATE departments SET name = '経理' WHERE department_id = 3;
  mysql>  UPDATE departments SET name = '人事' WHERE department_id = 4;
  mysql>  UPDATE departments SET name = '情報システム' WHERE department_id = 5;

  mysql> INSERT INTO people (name, email, department_id, age, gender)
VALUES
('佐藤たろう', 'taro@gizumo.jp', 1, 25, 1),
('鈴木はるか', 'haruka@gizumo.jp', 1, 25, 2),
('高橋みさき', 'misaki@gizumo.jp', 1, 25, 2),
('田中けんた', 'kenta@gizumo.jp', 2, 25, 1),
('中村あやか', 'ayaka@gizumo.jp', 2, 25, 2),
('小林ゆうと', 'yuto@gizumo.jp', 2, 25, 1),
('加藤さくら', 'sakura@gizumo.jp', 2, 25, 2),
('伊藤まなみ', 'manami@gizumo.jp', 3, 25, 2),
('渡辺りん', 'rin@gizumo.jp', 4, 25, 2),
('山本だいき', 'daiki@gizumo.jp', 5, 25, 1);

  mysql> INSERT INTO reports (person_id, content)
VALUES
(7, '１０月１日、天気は曇り、目標達成'),
(8, '１０月１日、天気は曇り、目標未達成'),
(9, '１０月２日、天気は晴れ、目標達成'),
(10, '１０月２日、天気は晴れ、目標未達成'),
(11, '１０月３日、天気は曇り、目標達成'),
(12, '１０月３日、天気は曇り、目標達成'),
(13, '１０月４日、天気は晴れ、目標未達成'),
(14, '１０月４日、天気は晴れ、目標達成'),
(15, '１０月５日、天気は雨、目標達成'),
(16, '１０月５日、天気は雨、目標未達成');

mysql> UPDATE people SET department_id = 1 WHERE person_id= 1;
mysql> UPDATE people SET department_id = 2 WHERE person_id= 2;
mysql> UPDATE people SET department_id = 3 WHERE person_id= 3;
mysql> UPDATE people SET department_id = 4 WHERE person_id= 4;
mysql> UPDATE people SET department_id = 5 WHERE person_id= 6;

mysql> SELECT name, age FROM people WHERE gender = 1 ORDER BY age DESC;


-- Q6
-- peopleテーブルから、department_idが1になっているレコードのうち、カラムが`name`, `email`, `age`のデータを、追加した日時(created_at)が早い順に取得する。

-- SELECT
--   `name`, `email`, `age`　⇒カラムが`name`, `email`, `age`のデータ
-- FROM
--   `people`　⇒peopleテーブルから
-- WHERE
--   `department_id` = 1　⇒department_idが1になっているレコード
-- ORDER BY
-- `created_at`;　⇒追加した日時(created_at)が早い順

