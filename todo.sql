
CREATE TABLE todos (
id SERIAL PRIMARY KEY,
title VARCHAR(255) NOT NULL,
details VARCHAR NULL,
priority INT NOT NULL DEFAULT '1',
created_at TIMESTAMP WITH TIME ZONE NOT NULL,
completed_at TIMESTAMP WITH TIME ZONE NULL);

INSERT INTO todos (title, details, priority, created_at, completed_at)
VALUES ('Sales Rep', 'follow up yesterdays leads', '6', '2017-06-05', '2017-06-26');

INSERT INTO todos (title, details, priority, created_at)
VALUES ('Developer', 'refactor JS feature', '4', '2017-06-07');

INSERT INTO todos (title, details, priority, created_at)
VALUES ('Secretary', 'catch up on filing', '3', '2017-06-20');

INSERT INTO todos (title, details, priority, created_at)
VALUES ('Administrator', 'develop agenda for next meeting', '3', '2017-06-22');

SELECT id FROM todos WHERE completed_at IS NULL;

SELECT id FROM todos WHERE priority > 1;

UPDATE todos SET completed_at = '2017-06-27' WHERE id = 3;

DELETE FROM todos WHERE completed_at IS NOT NULL;

