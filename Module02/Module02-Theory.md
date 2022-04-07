# Module 2

## 2.1: Intro to Data Repositories(--> Relational Database)

A data engineer’s ecosystem includes the infrastructure, tools, frameworks, and processes for: extracting data from disparate sources, architecting and managing data pipelines for transformation, integration, and storage of data, **architecting and managing data repositories**, automating and optimizing workflows and flow of data between systems; and developing applications needed through the data engineering workflow. 

The type of data drives the kind of data repositories that the data can be collected and stored in, and also the tools that can be used to query or process the data. The type, format, sources of data, and context of use influence which data repository is ideal.

There are two main **types of data repositories—Transactional and Analytical.** 
Transactional systems==Online Transaction Processing(OLTP) systems, are designed to store high-volume day-to-day operational data (online banking/ATM transactions, airline bookings). Typically relational, also can be non-relational. 
Analytical systems==Online Analytical Processing(OLAP) systems, are optimized for conducting complex data analytics (relational/non-relational DB, DW, data marts, DL, and big data stores).

Typically, organizations have internal apps to support them in managing their day to day business activities. These systems use relational databases (SQL Server, Oracle, MySQL, IBM DB2), to store data in a structured way. Data stored in DB and DW can be used as a source for analysis.

The ecosystem also includes languages (query languages, programming languages, and shell&scripting languages). From **querying and manipulating data with SQL** to developing data applications with Python and writing shell scripts for repetitive operational tasks.

SQL is a querying language designed for accessing and manipulating information from, mostly, though not exclusively, relational databases. Using SQL, we can write a set of instructions to perform operations.

SQL is portable and can be used independent of the platform It can be used for querying data in a wide variety of databases and data repositories, although each vendor may have some variations and special extensions.

## 2.2: Database Connection and SQL

1. [Practice SQL](https://towardsdatascience.com/sqlzoo-the-best-way-to-practice-sql-66b7ccb1f17a) (English)
2. [SQL: Analyzing Business Metrics](https://www.codecademy.com/learn/sql-analyzing-business-metrics) (English)
3. [Analyze data with SQL](https://www.codecademy.com/learn/paths/analyze-data-with-sql) (English)
4. [SQL & DB (Stanford)](https://www.edx.org/course/databases-5-sql) (English)

## 2.3: Модели Данных

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




