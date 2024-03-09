create database bitacora_espe_u3;
use bitacora_espe_u3;

CREATE TABLE users (
    id INT PRIMARY KEY IDENTITY,
    blood_type VARCHAR(255),
    email VARCHAR(255),
    identification_card VARCHAR(255),
    is_admin BIT,
    last_names VARCHAR(255),
    names VARCHAR(255),
    password_users VARCHAR(255),
    phone VARCHAR(255)
);

CREATE TABLE pending_tasks (
    id INT PRIMARY KEY IDENTITY,
    hour_create DATETIME,
    hour_done DATETIME NULL,
    pending_task NVARCHAR(MAX),
    task_done BIT,
    userCreate_id INT,
    userDone_id INT NULL,
    observations NVARCHAR(MAX) NULL,
    FOREIGN KEY (userCreate_id) REFERENCES users(id),
    FOREIGN KEY (userDone_id) REFERENCES users(id)
);

CREATE TABLE novelties (
    id INT PRIMARY KEY IDENTITY,
    hour DATETIME,
    novelty VARCHAR(255),
    Guard_id INT,
	FOREIGN KEY (Guard_id) REFERENCES users(id)
);

--VISTAS:
--VISTA DE CONSIGNAS PENDIENTES
CREATE VIEW view_pending_task AS
    SELECT
        pt.id AS id,
        pt.hour_create AS hour_create,
        pt.pending_task AS pending_task,
        CONCAT(u.names, ' ', u.last_names) AS guardCreate
    FROM
        pending_tasks pt
    JOIN 
        users u ON u.id = pt.userCreate_id
    WHERE
        pt.task_done = 0;



--VISTA DE NOVEDADES +
CREATE VIEW view_novelties AS
    SELECT TOP 50
        n.novelty AS novelty,
        n.hour AS hour,
        CONCAT(g.names, ' ', g.last_names) AS guard
    FROM
        novelties n
    JOIN
        users g ON n.Guard_id = g.id
    ORDER BY n.hour DESC;


--VISTA DE PENDIENTE
CREATE VIEW view_pending_tasks AS
    SELECT TOP 50
        pt.pending_task AS pending_tasks,
        pt.hour_create AS hour_create,
        pt.hour_done AS hour_done,
        CONCAT(gc.names, ' ', gc.last_names) AS guardCreate,
        CONCAT(gd.names, ' ', gd.last_names) AS guardDone,
        pt.observations AS observations
    FROM
        pending_tasks pt
    JOIN
        users gc ON gc.id = pt.userCreate_id
    JOIN
        users gd ON gd.id = pt.userDone_id
    ORDER BY pt.hour_create DESC;







   
   
