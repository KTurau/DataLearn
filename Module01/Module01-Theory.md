# MODULE 1

## 1.1: The Role of Analytics & DE in a Modern Enterprise 

There are 3 main groups of people who can benefit from BIZ operations: 

1. Shareholders; 

2. Employees; 

3. Customers. 


![Analytics Value Chain](https://rockyourdata.cloud/wp-content/uploads/2019/02/Screen-Shot-2019-02-11-at-8.58.28-PM.png)

The most important group - customers. "customer obsession" -- leaders start with the customer and work backwards. They work vigorously to earn and keep customer trust. Although leaders pay attention to competitors, they obsess over customers.

Corporation exists to create Value. For customers - customer experience. For employees - work/life balance, salary. For owners - value maximization. With the help of data they make decisions. Data Engineer provide data to help/take part in decision making process. The data can be in raw form (raw data), or it can be in the form of information (organized raw data).

## 1.2: Analytics, what is it for? (: 

1. Income growth;
2. Costs reduction; 
3. New markets/products research
4. Compliance
5. Risks avoidance
BIZ realize that data holds the key to competitive advantage

## 1.3: DataEngineering MindMap 

![Mindmap](https://user-images.githubusercontent.com/65634544/83002336-4a252e80-a050-11ea-884a-aad96a181f74.jpg)

1. Data Integration. ETL/ELT - extract, transform, load; 
2. Data Repositories: Data Warehouse(DW); Data Platform(DP); Data Lake(DL). DP = DL + DW; 
3. Cloud computing platforms; 
4. Batch (this is how ETL/ELT tool works) / Stream;
5. Business Intelligence;
6. SQL (Structured Query Language);
7. Programming Languages: Python, Scala, Java;
8. MPP (Massive Parallel Processing);
9. Big Data;
10. Spark...

## 1.4: Key Players in Data Ecosystem (Data Professionals)

### Traditional category:
1. BI Analysts;
2. ETL/ELT Engineer;
4. DW Architect;
5. Data Modeler. 

### DE category:
1. Data Engineer;
2. Big Data Engineer;
3. Cloud Data Engineer;
4. Data Platform Engineer.

### Data Science, IT:
1. Software Development Engineer;
2. Machine Learning Engineer;
3. Visual Engineer; 
4. Applied Scientist; 
5. Research Scientist.

### Advanced analytics category:
1. Data mining;
2. Data science.

## 1.6: Два типа инженера данных
Инженер - это профессионал, который может посмотреть на предмет и мысленно его разобрать на составные части, найти неисправность в неработающем предмете или создать новый предмет на базе требований заказчика, используя свои профессиональные инструменты. 

Инженер не знает всё обо всём, он понимает базовые принципы и видит конечную цель, а дальше с использованием инструментария и навыков он творит.

Существует два типа Инженера Данных:
1.	Программист, который стал Инженером Данных.
2.	BI/DW/ETL-разработчик, который стал Инженером Данных.

Задача Инженера Данных - создание платформы, куда автоматически загружаются данные, там они трансформируются в доступную форму для конечных пользователей (как правило, бизнес-пользователей). 

Источники данных могут быть различными: реляционные базы данных, SFTP, API, файлы с логами, сенсоры. Типы данных также могут быть различными: структурированные данные в табличном формате, полуструктурированные (JSON, XML) и неструктурированные (видео, аудио).

В зависимости от бизнес-требований, Инженеру Данных необходимо создать поток данных (data pipeline), который автоматически будет забирать данные и загружать их в платформу данных (хранилище данных или озеро данных). Необходимо выбрать инструменты для работы с данными. 

Цель простая: помочь бизнесу извлечь ценную информацию из данных. Для этого нужно создать аналитическое решение, где пользователи могут самостоятельно работать с данными, проверять свои гипотезы и анализировать бизнес-задачи, используя правильные метрики. 

Чтобы построить такое решение, нужен Инженер Данных. Это не просто создание потока данных, трансформация и загрузка данных. Это еще и полноценная работа с бизнес-подразделениями, понимание их нужд и предоставление им инструментов для решения их задач. 

В зависимости от предыдущего опыта, Инженер может использовать языки программирования Java/Python и т.д. для создания решения - Инженер Данных №1 (*Technical Data Engineer*), а может использовать готовые решения, которые позволят создавать масштабируемые и безопасные решения, быстро достигать результатов - Инженер Данных №2 (*Result Oriented Data Engineer*). 

Без программирования не обойтись даже для 2-го типа, но не нужно быть гуру программирования, достаточно понимать, как работает Python, и использовать небольшие куски кода для кастомизации решения. 

**Главное не зубрежка программирования или конкретного продукта, а понимание принципов работы с данными, классов инструментов и возможных бизнес-задач и пути их решения, а для всего остального есть Google;)**

## 1.7: Архитектура аналитического решения

![Overall-Architecture](https://user-images.githubusercontent.com/65634544/83002262-2feb5080-a050-11ea-93f1-3fe6196c973a.png)

**3 слоя архитектуры:**
1. `Source Layer` - слой систем источников данных OLTP (Online Transactional Processing) - обработка транзакций; системы быстро работают на добавление данных в БД, но не рассчитаны на аналитические запросы; как правило данные создаются бизнес процессами; из первого слоя все данные поступают  в хранилище данных;

2. `Storage Layer` - хранение данных для аналитики (DW, Data Lake, Data Platform); в хранилище данных желательно иметь два слоя: Staging - копия всех данных из первого слоя вместе; BL - модель данных;

3. `Business Layer` - слой доступа к данным для бизнес пользователей через инструменты BI (Tableau, Power BI, SAP BO, Excel, QlikView) или SQL. Происходит подключение к системам для просмотра отчётов. 

Иногда используется ещё один слой - Processing/Compute Layer, где происходит трансформация данных перед загрузкой в хранилище.



