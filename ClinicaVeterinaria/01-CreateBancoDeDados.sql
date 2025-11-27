CREATE TABLE cliente (
    id_cliente INTEGER    PRIMARY KEY
                          NOT NULL,
    nome       TEXT (100) NOT NULL,
    telefone   TEXT (15),
    email      TEXT
);

CREATE TABLE Consulta (
    id_consulta    INTEGER    PRIMARY KEY
                              NOT NULL,
    data           TEXT,
    tipo_servico   TEXT (150) NOT NULL,
    id_veterinario INTEGER    NOT NULL
                              REFERENCES Veterinario (id_veterinario),
    id_pet         INTEGER    REFERENCES Pet (id_pet) 
                              NOT NULL
);

CREATE TABLE Medicamento (
    id_medicamento INTEGER    PRIMARY KEY
                              NOT NULL,
    nome           TEXT (150) NOT NULL,
    quantidade     INTEGER    NOT NULL,
    validade       TEXT       NOT NULL,
    id_consulta    INTEGER    REFERENCES Consulta (id_consulta) 
                              NOT NULL
);

CREATE TABLE Medicamento_Consulta (
    id_consulta         REFERENCES Consulta (id_consulta),
    id_medicamento      REFERENCES Medicamento (id_medicamento),
    id_veterinario      REFERENCES Veterinario (id_veterinario),
    dose_aplicada  REAL NOT NULL
);


CREATE TABLE Pet (
    id_pet     INTEGER    PRIMARY KEY
                          NOT NULL,
    nome       TEXT (100) NOT NULL,
    especie    TEXT (30)  NOT NULL,
    idade      INTEGER,
    id_cliente INTEGER    REFERENCES cliente (id_cliente) 
                          NOT NULL
);

CREATE TABLE Veterinario (
    id_veterinario INTEGER    PRIMARY KEY
                              NOT NULL,
    nome           TEXT (100) NOT NULL,
    crmv           TEXT (20)  NOT NULL
);