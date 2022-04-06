# Module 2

## 2.1: Intro to Data Repositories(--> Relational Database)

A data engineer’s ecosystem includes the infrastructure, tools, frameworks, and processes for: extracting data from disparate sources, architecting and managing data pipelines for transformation, integration, and storage of data, **architecting and managing data repositories**, automating and optimizing workflows and flow of data between systems; and developing applications needed through the data engineering workflow. 

The type of data drives the kind of data repositories that the data can be collected and stored in, and also the tools that can be used to query or process the data. The type, format, sources of data, and context of use influence which data repository is ideal.

There are two main **types of data repositories—Transactional and Analytical.** 
Transactional systems==Online Transaction Processing(OLTP) systems, are designed to store high-volume day-to-day operational data (online banking/ATM transactions, airline bookings). Typically relational, also can be non-relational. 
Analytical systems==Online Analytical Processing(OLAP) systems, are optimized for conducting complex data analytics (relational/non-relational DB, DW, data marts, DL, and big data stores).

The ecosystem also includes languages (query languages, programming languages, and shell&scripting languages). From **querying and manipulating data with SQL** to developing data applications with Python and writing shell scripts for repetitive operational tasks.







Большинство компаний используют базы данных для того, чтобы хранить данные, подключать их к бизнес приложениям, делать аналитические решения, делать Machine learning/Data Science.

Прежде всего базы данных - это программа для хранения данных. Такая же программа, как операционная система, которую мы устанавливаем на компьютеры, на сервер и её основная задача — это хранение данных.

Базы данных делятся на два типа: SQL (реляционные) и NoSQL (нереляционные).
Будут рассмотрены реляционные базы данных.
Как правило, инженер данных напрямую не работает с нереляционными базами данных. Для него центр вселенной — это хранилище данных или платформа данных, куда «складываются» все данные, которые потом доступны для анализа. При этом «забирать» данные можно и из NoSQL баз данных.


Реляционные базы данных.
Бочонок – самый распространённый термин, который используется во всех диаграммах для обозначения БД.
В Excel данные находятся в табличном представлении. Примерно такие же таблицы хранятся в базах данных.
Таблицы БД, можно группировать в схемы. Схема внутри базы данных – это логическое пространство, где можно группировать таблицы. Например, часто использут схемы, чтобы разделить области внутри хранилища данных (в архитектуре аналитического решения на область Staging и Business layer). Область Staging для сырых данных, область Business для таблиц с показателями, которую подключают к BI-инструментам.

Из чего состоит таблица в БД? Точно также, как в Excel, таблица состоит из столбцов (columns) и строк (rows), у каждой колонки есть заголовки.

Языки SQL.
Есть четыре типа языков: языки для создания запросов (DML+DQL) и языки для управления БД (DDL+DCL). Инженер данных может писать обычные запросы, изменять таблицы, вставлять данные, также может создавать таблицы и схемы, раздавать права.
Совершенно не важно, какую базу данных использовать, все они имеют схожие принципы.

Пример использования реляционной базы данных. Допустим у нас есть интернет-магазин, который продает футболки, после добавления выбранной футболки в корзину, я перехожу на страницу оплаты заказа, после оплаты заказа транзакция считается успешно завершенной. Строчка, в которой есть моё имя, информация обо мне, информация о продукте, который я купил, его стоимость и других атрибутов – называется транзакция. Эта транзакция отправляется в базу данных, она вставляется в таблицу или разные таблицы одной или несколькими строчками (в зависимости от дизайна). Смысл базы данных в фиксации информации, в данном случае она фиксирует факт продажи. Если я как аналитик хочу посмотреть, сколько у нас было заказов, мне необходимо написать SQL-запрос к этой таблице.

### Практика

Скачаем и установим PostgreSQL.

### Дополнительные материалы для изучения

1. [Введение в Базы Данных](https://stepik.org/course/551/) (Русский)
2. [Хранилище данных vs Озеро Данных](https://habr.com/ru/post/485180/) (Русский)

## 2.3: Подключение к Базам Данных и SQL

### Материалы для изучения

1. [Интерактивный онлайн-курс по SQL СУБД PostgreSQL](https://learndb.ru/) (Русский)
2. [Интерактивный SQL учебник с упражнениями](https://sql-ex.ru/) (Русский)
3. [Основные функции SQL](https://khashtamov.com/ru/window-functions-sql/) (Русский)
4. [Практика SQL](https://towardsdatascience.com/sqlzoo-the-best-way-to-practice-sql-66b7ccb1f17a) (English)
5. [SQL: Analyzing Business Metrics](https://www.codecademy.com/learn/sql-analyzing-business-metrics) (English)
6. [Analyze data with SQL](https://www.codecademy.com/learn/paths/analyze-data-with-sql) (English)
7. [Большой курс SQL и Баз Данных от Stanford](https://www.edx.org/course/databases-5-sql) (English)
8. [Интерактивный тренажер по SQL](https://stepik.org/course/63054/) (Русский)
9. [Лучшие вопросы средней сложности по SQL на собеседовании аналитика данных](https://habr.com/ru/company/dcmiran/blog/500360/) (Русский)

### Практика

1. Установить клиент SQL для подключения базы данных. Так же можно использовать любой другой клиент для подключения к БД.

## 2.4: Модели Данных

### Дополнительные материалы для изучения

1. Статья про Хранилище Данных [Антихрупкость архитектуры хранилищ данных](https://habr.com/ru/post/281553/)
2. Статья про Data Vault [Основы Data Vault](https://habr.com/ru/post/502968/)

### Практика

1. Необходимо нарисовать модель данных для файлика Superstore:
- Концептуальную
- Логическую
- Физическую
  Можно использовать бесплатную версию [SqlDBM](https://sqldbm.com/Home/) или любой другой софт для создания моделей данных баз данных.

2. Скопировать DDL и выполнить его в SQL клиенте.

## 2.5: База данных в облаке

### Дополнительные материалы для изучения

Целый модуль будет посвящен облачным вычислениям. К сожалению, очень мало информации по сетевому администрированию, которую легко и быстро усвоить. Цель простая - необходимо, чтобы 2 и более сервера могли эффективно и безопасно коммуницировать между собой через сеть. Для этого нужно открыть/закрыть порты, настроить firewall и возможны другие действия. 

1. Лекции на Coursera [Google IT Support Professional](https://www.coursera.org/professional-certificates/google-it-support) (English)
2. [Шпаргалка системного администратора по сетевым инструментам Linux](https://habr.com/ru/company/ruvds/blog/417485/) (Русский)




