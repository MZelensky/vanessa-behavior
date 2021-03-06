# encoding: utf-8
# language: ru

@IgnoreOn82Builds
@IgnoreOnOFBuilds



Функционал: Проверка формирования отчета Allure

Как разработчик
Я хочу чтобы корректно формировался отчет Allure
Чтобы я мог видеть результат работы сценариев

Контекст: 
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	Когда Я открываю VanessaBehavior в режиме TestClient
	
Сценарий: Проверка отчета Allure
	И В поле с именем "КаталогФичСлужебный" я указываю путь к служебной фиче "ФичаДляПроверкиОтчетаAllure"
	И     В открытой форме я перехожу к закладке с заголовком "Сервис"
	И     В открытой форме я изменяю флаг "Формировать данные для отчета Allure"
	И     в поле каталог отчета аллюр я указываю путь к относительному каталогу "tools\Allure"
	И В открытой форме я нажимаю на кнопку "Перезагрузить сценарии"
	И Пауза 6
	И В открытой форме я нажимаю на кнопку с заголовком "Выполнить сценарии"
	И Пауза 8
	И в каталоге аллюр появился 1 файл xml
	И     В форме "*Vanessa behavior*" в таблице "ДеревоТестов" я перехожу к строке:
	| 'Наименование'                                  |
	| 'Выполнение второго простого сценария' |
	И     В открытой форме я нажимаю на кнопку с заголовком "Выполнить выделенный сценарий"
	И Пауза 6
	И в каталоге аллюр появился 2 файл xml
	
