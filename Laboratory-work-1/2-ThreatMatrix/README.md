### Заповнення матриці реалізації загроз

| Компоненти інформаціної системи | Загроза порушення конфіденційності | Загроза порушення цілісності | Загроза порушення доступності |
| :--- | :---: | :---: | :---: |
| Апаратне забезпечення (АЗ): </br>- серверне АЗ </br>- робочі станції споживачів  |  | Збої роботи АЗ | Відсутність ресурсів |
| Програмне забезпечення (ПЗ): </br>- системне ПЗ (ОС, СКБД) </br>- прикладне ПЗ |  | Збої роботи ОС | Неоптимізована ОС |
| Дані: </br>- системні (конфігураційні файли ОС </br>та прикладного ПЗ) </br>- прикладні дані (файли та база даних), які є результатом роботи прикладного ПЗ | SQL ін'єкції |  | Неоптимізований код |
| Персонал: </br>- обслуговуючий персонал (адміністратори системи) </br>- споживачі прикладного ПЗ | Втрата користувальницьких даних | Порушення цілістності персоналом |  |