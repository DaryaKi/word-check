/*Составить запрос на языке SQL, 
отображающий определенные поля одной таблицы 
с отбором по сложному условию и сортировкой по двум полям*/
SELECT Translation, UserID FROM UserAnswer
WHERE UserID >=101 AND Word = 'Peacemaking'
Order BY Translation, UserID