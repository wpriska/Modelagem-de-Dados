---INSERT---   
 
INSERT INTO cliente(nome, telefone)
VALUES
('ANA DE LIMA', '1199999-99'),
('Jose teste', '1198888-77'),
('MARIA DO CARMO', '11955555-44');


INSERT INTO Pet(nome, especie, idade, id_cliente)
VALUES
('Rex', 'Cachorro',5, 3),
('Cleyton', 'gato',4, 1),
('THOR', 'cachorro', 6, 2);




INSERT INTO Veterinario(nome, crmv)
VALUES
('DRA.MARISA TESTE','SP1234'),
('DR.BRUNO CARVALHO', 'SP1020'),
('Dr.teste', 'GO1234');



INSERT INTO Consulta(data, tipo_servico, id_pet, id_veterinario)
VALUES
('2025-05-30','vacina',1, 1),
('2025-06-02','castracao',2, 2),
('2025-11-05','retorno',1, 1);



INSERT INTO Medicamento(nome, quantidade,validade, id_consulta)
VALUES
('vermit', 2, '2030-11-30',1),
('vermit02', 3, '2030-12-30',2),
('vermit03', 1, '2031-01-30',3);





INSERT INTO Medicamento_consulta(id_consulta, id_medicamento, dose_aplicada)
VALUES
(1, 1, '1 dose unica'),
(1, 2, 'Aplicar 2 gotas no ouvido'),
(3, 2, '1 comprimido');
