/*��������� ������ �� ����� SQL, 
������������ ������������ ���� ����� ������� 
� ������� �� �������� ������� � ����������� �� ���� �����*/
SELECT Translation, UserID FROM UserAnswer
WHERE UserID >=101 AND Word = 'Peacemaking'
Order BY Translation, UserID