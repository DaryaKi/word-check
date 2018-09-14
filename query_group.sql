/*grouped by user? counting the score
counting words for each language
*/
SELECT UserAnswer.AnswerID, 
Users.Surname
IF (Words.Translation = UserAnswer.Translation, 1, 0) Marks
FROM UserAnswer, Users, Words

