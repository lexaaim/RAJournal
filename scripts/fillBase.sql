﻿-- !!!!!
-- login as raadmin !       
-- !!!!!

INSERT INTO profession ( prName, prPhone ) VALUES
	( 'слесарь', '8-909-141-0990' ),
	( 'электрик', '8-909-141-0990' ),
	( 'электроник', '8-909-141-0990' );

INSERT INTO specialist (spSurname, spName, spPatronymic, spProfessionID, spPassword) VALUES
-- default password = "12345"
	( 'Петров', 'Петр', 'Алексеевич', 3, '827ccb0eea8a706c4c34a16891f84e7b' ),
	( 'Минчаков', 'Алексей', 'Викторович', 3, '827ccb0eea8a706c4c34a16891f84e7b' ),
	( 'Иванов', 'Иван', 'Иванович', 3, '827ccb0eea8a706c4c34a16891f84e7b' );

INSERT INTO specialist ( spID, spSurname, spName, spPatronymic, spProfessionID, spPassword) VALUES
-- default password = "12345"
	( 0, 'Не указан', 'И', 'О', 3, '827ccb0eea8a706c4c34a16891f84e7b' );

INSERT INTO department (dpShortName, dpFullName) VALUES
	( 'Цех #1', 'Цех #1' ),
	( 'Цех #2', 'Цех #2' ),
	( 'Цех #3', 'Цех #3' ),
	( 'Цех #4', 'Цех #4' ),
	( 'Цех #5', 'Цех #5' ),
	( 'Цех #6', 'Цех #6' ),
	( 'Цех #7', 'Цех #7' ),
	( 'Цех #8', 'Цех #8' ),
	( 'Цех #9', 'Цех #9' ),
	( 'Цех #10', 'Цех #10' );

INSERT INTO machinemodel (mmName) VALUES
	( 'Станок 1' ),
	( 'Станок 2' ),
	( 'Станок 3' ),
	( 'Станок 4' ),
	( 'Станок 5' ),
	( 'Станок 6' ),
-- 10
	( 'Линия 1' ),
	( 'Линия 2' ),
	( 'Линия 3' ),
	( 'Линия 4' );

INSERT INTO machinemodel (mmID, mmName) VALUES
	( 0, 'Не указан' );

INSERT INTO machine (maDepartmentID, maFullName, maShortName, maImportance, maModelID) VALUES
	( 1, 'Машина 1 "Электроника"', 'Электроника', 9, 14 ),
	( 1, 'Машина 2 "Электроника"', 'Электроника 2', 3, 15 );

INSERT INTO department (dpID, dpShortName, dpFullName) VALUES
	( 0, 'Не указан', 'Не указан');

INSERT INTO unit (unModelID, unFullName, unShortName) VALUES
-- Raute
	( 1, 'Устройство 1', 'У1' ),
	( 1, 'Устройство 2', 'У2' ),
	( 3, 'Устройство 3', 'У3' );

INSERT INTO unit (unID, unModelID, unFullName, unShortName) VALUES
	( 0, 0, 'Не указан', 'Не указан');

INSERT INTO detailmodeltype (dtID, dtName) VALUES
	( 0, 'Не указан' );

INSERT INTO detailmodeltype (dtName) VALUES
	( 'Оптический датчик' ),
	( 'Индуктивный датчик' ),
	( 'Геркон' ),
	( 'Импульсный датчик' ),
	( 'Датчик положения' ),
	( 'Привод' ),
	( 'Другое' );


INSERT INTO detailmodel (dmTypeID, dmName) VALUES
	( 5, 'RPI520MD2S42B121' ),
	( 4, 'YeH30MPS1B112' ),
	( 4, 'Neryusten aHsd5039' ),
	( 5, 'Gyuco SMR 8500 MG J' ),
	( 5, 'Teasdgstler 056428/24sGB' ),
	( 1, 'JFO92450L' ),
	( 7, 'Лампа 100 Вт' ),
	( 7, 'Батарейка пальчиковая EM3' );

INSERT INTO detailmodel (dmID, dmName, dmTypeID) VALUES
	( 0, 'Не указана', 0 );

INSERT INTO sensortype (stID, stName) VALUES
	( 0, 'Не указан' );

INSERT INTO sensortype (stName) VALUES
	( 'Сенсор' ),
	( 'Кнопка' ),
	( 'Золотник' ),
	( 'Сигнал' );

INSERT INTO sensor (seTypeID, seUnitID, seProgramName, seSchemeName, seFullName, seShortName) VALUES
	(4, 6, 'ControlVoltage', 'Control Voltage connected', 'Управляющее напряжение подключено' ,'Управл. напряжение'),
	(4, 6, 'EmergenzyStop', 'Emergenzy Stop Tripped', 'Аварийный стоп выключен', 'Аварийный стоп'),
	(1, 1, 'FB156/LEFT.ENC_IN.ENC_VALUE', 'Spinles rotation right side/Interrupt pulses', 'Вращение шпинделей с правой стороны', 'Вращение шпинделей, прав.'),
	(1, 1, 'RIGHT.ENC_IN.ENC_VALUE', 'Spinles rotation left side', 'Вращение шпинделей с левой стороны', 'Вращение шпинделей, лев.'),
	(2, 1, 'GeocenteringUpLeft', 'Geocentering Up Left', 'Левый рычаг предварительной центровки вверх', 'Рычаг ПЦ вверх, лев.'),
	(2, 1, 'GeocenteringDownLeft', 'Geocentering Down Left', 'Левый рычаг предварительной центровки вниз', 'Рычаг ПЦ вниз, лев.'),
	(2, 1, 'GeocenteringUpRight', 'Geocentering Up Right', 'Правый рычаг предварительной центровки вверх', 'Рычаг ПЦ вверх, прав.'),
	(4, 6, 'не используется', 'Central lubrication left side', 'Централизованная смазка если на левой стороне', 'Смазка если на левой стороне'),
	(1, 1, 'FB140/position of correction shift, left X or left lathe-side', 'Positioning, left lathe side', 'Позиционирование шпинделя левой стороны от станка', 'Позиц. шпин.лев. от станка'),
	(1, 1, 'FB141/position of correction shift, left Y or left conveyor-side', 'Positioning, left conveyor side', 'Позиционирование шпинделя левой стороны от конвейера', 'Позиц. шпин.лев. от конвеера'),
	(1, 1, 'FB131/position of geocentering arm, left side', 'Pre-centering arm, left side', 'Предварительная центровка слева', 'Предв. центр. слева'),
	(3, 1, 'GeocForkLeft', 'Pre-centering arm, left side', 'Предварительная центровка слева', 'Предв. центровка слева'),
	(3, 1, 'TransferArmsFwdBwd', 'Transfer arms forwards/backwards', 'Рычаги перемещения вперед/назад', 'Рычаги перемещ. вперед/назад'),
	(3, 1, 'SpindlesRotat_L', 'Spindles Rotation Left side', 'Вращение левого шпинделя', 'Вращ. левого шпинделя'),
	(1, 1, 'TrArmOpen_R', 'Transfer arm right opened', 'Правый рычаг переноса открыт', 'Правый РП открыт'),
	(1, 1, 'не используется', 'Block is on storage conveyor', 'Чурак на накапливающем конвеере', 'Чурак на конвеере'),
	(1, 1, 'не используется', 'Block is end of storage conveyor', 'Чурак в конце накапливающего конвеера', 'Чурак в конце конвеера'),
	(4, 6, 'CloseSpindles_R', 'Close X/Y Spindles Right', 'Закрывание правого шпинделя', 'Закрыв. прав. шпинд.'),
	(4, 6, 'OpenSpindles_R', 'Open X/Y Spindles Right', 'Раскрывание правого шпинделя', 'Ракрыв. прав. шпинд.'),
	(4, 6, 'LubricationPump', 'Central lubrication', 'Централизованная смазка на правой строне', 'Централ. смазка'),
	(1, 1, 'FB146/position of correction shift, right Y or right conveyorside', 'positioning, right lathe side', 'Позиционирование шпинделя правой стороны от станка', 'Позиц. шпинд. прав. от станка'),
	(1, 1, 'FB145/position of correction shift, right X or right lathe-side', 'positioning, right conveyor side', 'Позиционирование шпинделя правой стороны от конвейера', 'Позиц. шпинд. прав. от конвеера'),
	(1, 1, 'FB136/position of geocentering fork, right side', 'Pre-centering arm, right side', 'Предварительная центровка справа', 'ПЦ справа'),
	(1, 1, 'FB151/position of measuring spindle, right side', 'Spindels open/close right', 'Позиция правого шпинделя', 'Позиция прав. шпинд.'),
	(3, 1, 'LeftXorLR', 'Positioning, right lathe side', 'Позиционирование шпинделя правой стороны от станка', 'Позиц. шпинд. прав. от станка'),
	(3, 1, 'SpindlesRotat_L', 'Spindles Rotation Right side', 'Вращение правого шпинделя', 'Вращ. прав. шпинд.'),
	(1, 1, 'XyHydrOverTemp', 'Charger gidraulics Oil temperature high', 'Высокая температура масла гидравлики ЦЗУ', 'Высокая t масла гидр.'),
	(1, 1, 'FilteringPumpFilter', 'Filtering/cooling filter dirty', 'Охлаждение/фильтрование фильтр насоса грязный', 'Фильтр насоса грязный');

INSERT INTO sensor (seID, seTypeID, seUnitID, seProgramName, seSchemeName, seFullName, seShortName) VALUES
	( 0, 0, 0, '', '', 'Не указан', 'Не указан' );

INSERT INTO symptom (syUnitID, syText) VALUES
	( 3, 'Не работает суппорт: ошибка позиции суппорта. Датчик положения считает неправильно, при отъезде суппорта показания уменьшались, а не увеличивались' ),
	( 6, 'Профилактика контроллеров' ),
	( 4, 'Перегорела лампа подсветки камеры' ),
	( 6, 'Отключается гидравлика станка' ),
	( 28, 'Тележка отходов не работает' ),
	( 26, 'Толкатели остановились в переднем положении, ошибка на панели. Падающие ролики не включаются, стол не поднимается' );

INSERT INTO symptom (syID, syUnitID, syText) VALUES
	( 0, 0, 'Проблема не описана' );

INSERT INTO solution ( soText, soSymptomID, soSensorID ) VALUES
	( 'Подключил контакт №5 (Direction) датчика на землю. Откалибровал суппорт. Внес изменения в программу', 1, 36 ),
	( 'Заменил батарейки на новую', 2, 0),
	( 'Заменил лампу на новую', 3, 0),
	( 'Двигатель гидравлики работал на двух фазах. Электрик подключил третью на клеммниках двигателя', 4, 0 ),
	( 'Разбился индуктивный датчик на дне тележки. Заменил датчик на аналогичный другой модели, и измененил программу под него', 5, 0 ),
	( 'Вручную переместил толкатели в заднюю позицию, настроил оптические датчики', 6, 0 );

INSERT INTO solution ( soID, soText, soSymptomID ) VALUES
	( 0, 'В процессе ремонта', 0 );

INSERT INTO machine (maID, maDepartmentID, maFullName, maShortName, maImportance) VALUES
	( 0, 0, 'Не указан', 'Не указан', 0);

INSERT INTO journal (joErrorDT, joSolveDT, joSpecialistID, joSymptomID, joMachineID) VALUES
	( '2011-09-18 10:40:00', '2011-09-19 06:21:00', 7, 1, 9 ),
	( '2011-09-22 08:00:00', '2011-09-22 08:05:00', 1, 2, 10 ),
	( '2011-09-22 15:00:00', '2011-09-22 15:10:00', 5, 3, 9 ),
	( '2011-10-07 08:05:00', '2011-10-07 08:25:00', 4, 1, 11 ),
	( '2011-10-07 09:10:00', '2011-10-07 10:20:00', 4, 2, 28 ),
	( '2011-10-08 04:30:00', '2011-10-08 10:04:45', 1, 3, 28 );

INSERT INTO solutiongrouptype (sgtName) VALUES
	( 'Нет сломанных деталей' ),
	( 'Поломка и ремонт' ),
	( 'Поломка и замена' ),
	( 'Поломка и утилизация' );

INSERT INTO solutiongroup ( sgJournalID, sgSolutionID, sgTypeID, sgDetailModelID ) VALUES
	( 1, 1, 1, 0 ),
	( 2, 2, 3, 7 ),
	( 3, 3, 3, 8 ),
	( 4, 4, 1, 0 ),
	( 5, 5, 1, 0 ),
	( 6, 6, 1, 0 );

INSERT INTO notification ( noSensors, noSms, noMachineID, noProfessionID ) VALUES
	( '00000001', 'Сработал первый лущильный станок', 9, 1 ),
	( '00000010', 'Сработал первый лущильный станок', 9, 2 ),
	( '00000011', 'Сигнал не определен', 0, 3 ),
	( '00000100', 'Сработал первый лущильный станок', 9, 3 ),
	( '00000101', 'Сигнал не определен', 1, 3 ),
	( '00000110', 'Сигнал не определен', 0, 3 ),
	( '00000111', 'Сигнал не определен', 0, 3 ),
	( '00001000', 'Сработал второй лущильный станок', 10, 1 ),
	( '00001001', 'Сигнал не определен', 0, 3 ),
	( '00001010', 'Сигнал не определен', 0, 3 ),
	( '00001011', 'Сигнал не определен', 0, 3 ),
	( '00001100', 'Сигнал не определен', 0, 3 ),
	( '00001101', 'Сигнал не определен', 0, 3 ),
	( '00001110', 'Сигнал не определен', 0, 3 ),
	( '00001111', 'Сигнал не определен', 0, 3 ),
	( '00010000', 'Сработал второй лущильный станок', 10, 2 ),
	( '00010001', 'Сигнал не определен', 0, 3 ),
	( '00010010', 'Сигнал не определен', 0, 3 ),
	( '00010011', 'Сигнал не определен', 0, 3 ),
	( '00010100', 'Сигнал не определен', 0, 3 ),
	( '00010101', 'Сигнал не определен', 0, 3 ),
	( '00010110', 'Сигнал не определен', 0, 3 ),
	( '00010111', 'Сигнал не определен', 0, 3 ),
	( '00011000', 'Сигнал не определен', 0, 3 ),
	( '00011001', 'Сигнал не определен', 0, 3 ),
	( '00011010', 'Сигнал не определен', 0, 3 ),
	( '00011011', 'Сигнал не определен', 0, 3 ),
	( '00011100', 'Сигнал не определен', 0, 3 ),
	( '00011101', 'Сигнал не определен', 0, 3 ),
	( '00011110', 'Сигнал не определен', 0, 3 ),
	( '00011111', 'Сигнал не определен', 0, 3 ),
	( '00100000', 'Сработал второй лущильный станок', 10, 3 ),
	( '00100001', 'Сигнал не определен', 0, 3 ),
	( '00100010', 'Сигнал не определен', 0, 3 ),
	( '00100011', 'Сигнал не определен', 0, 3 ),
	( '00100100', 'Сигнал не определен', 0, 3 ),
	( '00100101', 'Сигнал не определен', 0, 3 ),
	( '00100110', 'Сигнал не определен', 0, 3 ),
	( '00100111', 'Сигнал не определен', 0, 3 ),
	( '00101000', 'Сигнал не определен', 0, 3 ),
	( '00101001', 'Сигнал не определен', 0, 3 ),
	( '00101010', 'Сигнал не определен', 0, 3 ),
	( '00101011', 'Сигнал не определен', 0, 3 ),
	( '00101100', 'Сигнал не определен', 0, 3 ),
	( '00101101', 'Сигнал не определен', 0, 3 ),
	( '00101110', 'Сигнал не определен', 0, 3 ),
	( '00101111', 'Сигнал не определен', 0, 3 ),
	( '00110000', 'Сигнал не определен', 0, 3 ),
	( '00110001', 'Сигнал не определен', 0, 3 ),
	( '00110010', 'Сигнал не определен', 0, 3 ),
	( '00110011', 'Сигнал не определен', 0, 3 ),
	( '00110100', 'Сигнал не определен', 0, 3 ),
	( '00110101', 'Сигнал не определен', 0, 3 ),
	( '00110110', 'Сигнал не определен', 0, 3 ),
	( '00110111', 'Сигнал не определен', 0, 3 ),
	( '00111000', 'Сигнал не определен', 0, 3 ),
	( '00111001', 'Сигнал не определен', 0, 3 ),
	( '00111010', 'Сигнал не определен', 0, 3 ),
	( '00111011', 'Сигнал не определен', 0, 3 ),
	( '00111100', 'Сигнал не определен', 0, 3 ),
	( '00111101', 'Сигнал не определен', 0, 3 ),
	( '00111110', 'Сигнал не определен', 0, 3 ),
	( '00111111', 'Сигнал не определен', 0, 3 ),
	( '01000000', 'Сработал третий лущильный станок', 11, 1 ),
	( '01000001', 'Сигнал не определен', 0, 3 ),
	( '01000010', 'Сигнал не определен', 0, 3 ),
	( '01000011', 'Сигнал не определен', 0, 3 ),
	( '01000100', 'Сигнал не определен', 0, 3 ),
	( '01000101', 'Сигнал не определен', 0, 3 ),
	( '01000110', 'Сигнал не определен', 0, 3 ),
	( '01000111', 'Сигнал не определен', 0, 3 ),
	( '01001000', 'Сигнал не определен', 0, 3 ),
	( '01001001', 'Сигнал не определен', 0, 3 ),
	( '01001010', 'Сигнал не определен', 0, 3 ),
	( '01001011', 'Сигнал не определен', 0, 3 ),
	( '01001100', 'Сигнал не определен', 0, 3 ),
	( '01001101', 'Сигнал не определен', 0, 3 ),
	( '01001110', 'Сигнал не определен', 0, 3 ),
	( '01001111', 'Сигнал не определен', 0, 3 ),
	( '01010000', 'Сигнал не определен', 0, 3 ),
	( '01010001', 'Сигнал не определен', 0, 3 ),
	( '01010010', 'Сигнал не определен', 0, 3 ),
	( '01010011', 'Сигнал не определен', 0, 3 ),
	( '01010100', 'Сигнал не определен', 0, 3 ),
	( '01010101', 'Сигнал не определен', 0, 3 ),
	( '01010110', 'Сигнал не определен', 0, 3 ),
	( '01010111', 'Сигнал не определен', 0, 3 ),
	( '01011000', 'Сигнал не определен', 0, 3 ),
	( '01011001', 'Сигнал не определен', 0, 3 ),
	( '01011010', 'Сигнал не определен', 0, 3 ),
	( '01011011', 'Сигнал не определен', 0, 3 ),
	( '01011100', 'Сигнал не определен', 0, 3 ),
	( '01011101', 'Сигнал не определен', 0, 3 ),
	( '01011110', 'Сигнал не определен', 0, 3 ),
	( '01011111', 'Сигнал не определен', 0, 3 ),
	( '01100000', 'Сигнал не определен', 0, 3 ),
	( '01100001', 'Сигнал не определен', 0, 3 ),
	( '01100010', 'Сигнал не определен', 0, 3 ),
	( '01100011', 'Сигнал не определен', 0, 3 ),
	( '01100100', 'Сигнал не определен', 0, 3 ),
	( '01100101', 'Сигнал не определен', 0, 3 ),
	( '01100110', 'Сигнал не определен', 0, 3 ),
	( '01100111', 'Сигнал не определен', 0, 3 ),
	( '01101000', 'Сигнал не определен', 0, 3 ),
	( '01101001', 'Сигнал не определен', 0, 3 ),
	( '01101010', 'Сигнал не определен', 0, 3 ),
	( '01101011', 'Сигнал не определен', 0, 3 ),
	( '01101100', 'Сигнал не определен', 0, 3 ),
	( '01101101', 'Сигнал не определен', 0, 3 ),
	( '01101110', 'Сигнал не определен', 0, 3 ),
	( '01101111', 'Сигнал не определен', 0, 3 ),
	( '01110000', 'Сигнал не определен', 0, 3 ),
	( '01110001', 'Сигнал не определен', 0, 3 ),
	( '01110010', 'Сигнал не определен', 0, 3 ),
	( '01110011', 'Сигнал не определен', 0, 3 ),
	( '01110100', 'Сигнал не определен', 0, 3 ),
	( '01110101', 'Сигнал не определен', 0, 3 ),
	( '01110110', 'Сигнал не определен', 0, 3 ),
	( '01110111', 'Сигнал не определен', 0, 3 ),
	( '01111000', 'Сигнал не определен', 0, 3 ),
	( '01111001', 'Сигнал не определен', 0, 3 ),
	( '01111010', 'Сигнал не определен', 0, 3 ),
	( '01111011', 'Сигнал не определен', 0, 3 ),
	( '01111100', 'Сигнал не определен', 0, 3 ),
	( '01111101', 'Сигнал не определен', 0, 3 ),
	( '01111110', 'Сигнал не определен', 0, 3 ),
	( '01111111', 'Сигнал не определен', 0, 3 ),
	( '10000000', 'Сработал третий лущильный станок', 11, 2 ),
	( '10000001', 'Сигнал не определен', 0, 3 ),
	( '10000010', 'Сигнал не определен', 0, 3 ),
	( '10000011', 'Сигнал не определен', 0, 3 ),
	( '10000100', 'Сигнал не определен', 0, 3 ),
	( '10000101', 'Сигнал не определен', 0, 3 ),
	( '10000110', 'Сигнал не определен', 0, 3 ),
	( '10000111', 'Сигнал не определен', 0, 3 ),
	( '10001000', 'Сигнал не определен', 0, 3 ),
	( '10001001', 'Сигнал не определен', 0, 3 ),
	( '10001010', 'Сигнал не определен', 0, 3 ),
	( '10001011', 'Сигнал не определен', 0, 3 ),
	( '10001100', 'Сигнал не определен', 0, 3 ),
	( '10001101', 'Сигнал не определен', 0, 3 ),
	( '10001110', 'Сигнал не определен', 0, 3 ),
	( '10001111', 'Сигнал не определен', 0, 3 ),
	( '10010000', 'Сигнал не определен', 0, 3 ),
	( '10010001', 'Сигнал не определен', 0, 3 ),
	( '10010010', 'Сигнал не определен', 0, 3 ),
	( '10010011', 'Сигнал не определен', 0, 3 ),
	( '10010100', 'Сигнал не определен', 0, 3 ),
	( '10010101', 'Сигнал не определен', 0, 3 ),
	( '10010110', 'Сигнал не определен', 0, 3 ),
	( '10010111', 'Сигнал не определен', 0, 3 ),
	( '10011000', 'Сигнал не определен', 0, 3 ),
	( '10011001', 'Сигнал не определен', 0, 3 ),
	( '10011010', 'Сигнал не определен', 0, 3 ),
	( '10011011', 'Сигнал не определен', 0, 3 ),
	( '10011100', 'Сигнал не определен', 0, 3 ),
	( '10011101', 'Сигнал не определен', 0, 3 ),
	( '10011110', 'Сигнал не определен', 0, 3 ),
	( '10011111', 'Сигнал не определен', 0, 3 ),
	( '10100000', 'Сигнал не определен', 0, 3 ),
	( '10100001', 'Сигнал не определен', 0, 3 ),
	( '10100010', 'Сигнал не определен', 0, 3 ),
	( '10100011', 'Сигнал не определен', 0, 3 ),
	( '10100100', 'Сигнал не определен', 0, 3 ),
	( '10100101', 'Сигнал не определен', 0, 3 ),
	( '10100110', 'Сигнал не определен', 0, 3 ),
	( '10100111', 'Сигнал не определен', 0, 3 ),
	( '10101000', 'Сигнал не определен', 0, 3 ),
	( '10101001', 'Сигнал не определен', 0, 3 ),
	( '10101010', 'Сигнал не определен', 0, 3 ),
	( '10101011', 'Сигнал не определен', 0, 3 ),
	( '10101100', 'Сигнал не определен', 0, 3 ),
	( '10101101', 'Сигнал не определен', 0, 3 ),
	( '10101110', 'Сигнал не определен', 0, 3 ),
	( '10101111', 'Сигнал не определен', 0, 3 ),
	( '10110000', 'Сигнал не определен', 0, 3 ),
	( '10110001', 'Сигнал не определен', 0, 3 ),
	( '10110010', 'Сигнал не определен', 0, 3 ),
	( '10110011', 'Сигнал не определен', 0, 3 ),
	( '10110100', 'Сигнал не определен', 0, 3 ),
	( '10110101', 'Сигнал не определен', 0, 3 ),
	( '10110110', 'Сигнал не определен', 0, 3 ),
	( '10110111', 'Сигнал не определен', 0, 3 ),
	( '10111000', 'Сигнал не определен', 0, 3 ),
	( '10111001', 'Сигнал не определен', 0, 3 ),
	( '10111010', 'Сигнал не определен', 0, 3 ),
	( '10111011', 'Сигнал не определен', 0, 3 ),
	( '10111100', 'Сигнал не определен', 0, 3 ),
	( '10111101', 'Сигнал не определен', 0, 3 ),
	( '10111110', 'Сигнал не определен', 0, 3 ),
	( '10111111', 'Сигнал не определен', 0, 3 ),
	( '11000000', 'Сигнал не определен', 0, 3 ),
	( '11000001', 'Сигнал не определен', 0, 3 ),
	( '11000010', 'Сигнал не определен', 0, 3 ),
	( '11000011', 'Сигнал не определен', 0, 3 ),
	( '11000100', 'Сигнал не определен', 0, 3 ),
	( '11000101', 'Сигнал не определен', 0, 3 ),
	( '11000110', 'Сигнал не определен', 0, 3 ),
	( '11000111', 'Сигнал не определен', 0, 3 ),
	( '11001000', 'Сигнал не определен', 0, 3 ),
	( '11001001', 'Сигнал не определен', 0, 3 ),
	( '11001010', 'Сигнал не определен', 0, 3 ),
	( '11001011', 'Сигнал не определен', 0, 3 ),
	( '11001100', 'Сигнал не определен', 0, 3 ),
	( '11001101', 'Сигнал не определен', 0, 3 ),
	( '11001110', 'Сигнал не определен', 0, 3 ),
	( '11001111', 'Сигнал не определен', 0, 3 ),
	( '11010000', 'Сигнал не определен', 0, 3 ),
	( '11010001', 'Сигнал не определен', 0, 3 ),
	( '11010010', 'Сигнал не определен', 0, 3 ),
	( '11010011', 'Сигнал не определен', 0, 3 ),
	( '11010100', 'Сигнал не определен', 0, 3 ),
	( '11010101', 'Сигнал не определен', 0, 3 ),
	( '11010110', 'Сигнал не определен', 0, 3 ),
	( '11010111', 'Сигнал не определен', 0, 3 ),
	( '11011000', 'Сигнал не определен', 0, 3 ),
	( '11011001', 'Сигнал не определен', 0, 3 ),
	( '11011010', 'Сигнал не определен', 0, 3 ),
	( '11011011', 'Сигнал не определен', 0, 3 ),
	( '11011100', 'Сигнал не определен', 0, 3 ),
	( '11011101', 'Сигнал не определен', 0, 3 ),
	( '11011110', 'Сигнал не определен', 0, 3 ),
	( '11011111', 'Сигнал не определен', 0, 3 ),
	( '11100000', 'Сигнал не определен', 0, 3 ),
	( '11100001', 'Сигнал не определен', 0, 3 ),
	( '11100010', 'Сигнал не определен', 0, 3 ),
	( '11100011', 'Сигнал не определен', 0, 3 ),
	( '11100100', 'Сигнал не определен', 0, 3 ),
	( '11100101', 'Сигнал не определен', 0, 3 ),
	( '11100110', 'Сигнал не определен', 0, 3 ),
	( '11100111', 'Сигнал не определен', 0, 3 ),
	( '11101000', 'Сигнал не определен', 0, 3 ),
	( '11101001', 'Сигнал не определен', 0, 3 ),
	( '11101010', 'Сигнал не определен', 0, 3 ),
	( '11101011', 'Сигнал не определен', 0, 3 ),
	( '11101100', 'Сигнал не определен', 0, 3 ),
	( '11101101', 'Сигнал не определен', 0, 3 ),
	( '11101110', 'Сигнал не определен', 0, 3 ),
	( '11101111', 'Сигнал не определен', 0, 3 ),
	( '11110000', 'Сигнал не определен', 0, 3 ),
	( '11110001', 'Сигнал не определен', 0, 3 ),
	( '11110010', 'Сигнал не определен', 0, 3 ),
	( '11110011', 'Сигнал не определен', 0, 3 ),
	( '11110100', 'Сигнал не определен', 0, 3 ),
	( '11110101', 'Сигнал не определен', 0, 3 ),
	( '11110110', 'Сигнал не определен', 0, 3 ),
	( '11110111', 'Сигнал не определен', 0, 3 ),
	( '11111000', 'Сигнал не определен', 0, 3 ),
	( '11111001', 'Сигнал не определен', 0, 3 ),
	( '11111010', 'Сигнал не определен', 0, 3 ),
	( '11111011', 'Сигнал не определен', 0, 3 ),
	( '11111100', 'Сигнал не определен', 0, 3 ),
	( '11111101', 'Сигнал не определен', 0, 3 ),
	( '11111110', 'Сигнал не определен', 0, 3 ),
	( '11111111', 'Сигнал не определен', 0, 3 );
