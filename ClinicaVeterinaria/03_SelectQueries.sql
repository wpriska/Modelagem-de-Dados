
---JOIN ---

 SELECT
     c.id_cliente,
     c.nome AS nome_cliente,
     p.id_pet,
     p.nome AS nome_pet,
     p.especie, 
     p.idade
 FROM cliente c
 INNER JOIN Pet p ON p.id_cliente = c.id_cliente;
 
 SELECT
     co.id_consulta,
     co.data,
     v.nome AS Veterinario,
     v.crmv
 FROM Consulta co
 JOIN Veterinario v ON v.id_veterinario = co.id_veterinario;
 

SELECT
    c.id_consulta,
    c.data AS data_consulta,
    p.nome AS nome_animal,
    p.especie,
    cli.nome AS nome_cliente,
    cli.telefone AS telefone_cliente,
    v.id_veterinario
FROM consulta c
JOIN Pet p
    ON p.id_pet = c.id_pet
JOIN cliente cli
    ON cli.id_cliente = p.id_cliente
JOIN Veterinario v
    ON v.id_veterinario = c.id_veterinario;
    

--- FILTRO PELA ESPECIE ----

SELECT
     p.nome AS nome_animal,
     p.especie,
     c.data AS data_consulta
FROM consulta c
JOIN Pet p
    ON p.id_pet = c.id_pet
        WHERE p.especie = 'Cachorro'
     


---- AGRUPAMENTO ----

SELECT
    v.nome AS nome_veterinario,
    COUNT(c.id_consulta) AS total_consultas
FROM consulta c
JOIN Veterinario v
    ON v.id_veterinario = c.id_veterinario
    GROUP BY v.nome
    


SELECT
    cli.nome AS clientes,
    COUNT(p.id_pet) AS Total_Pets
FROM cliente cli
LEFT JOIN Pet p
    ON p.id_cliente = cli.id_cliente
    GROUP BY cli.nome;
    




--- FILTRANDO GRUPOS EM CONDIÇÃO - HAVING ---

SELECT
    v.nome AS Veterinarios,
    COUNT(c.id_consulta) AS TotalConsultas
FROM consulta c
JOIN Veterinario v
    ON v.id_veterinario = c.id_veterinario
    GROUP BY v.nome
    HAVING COUNT(c.id_consulta) > 1;
    


