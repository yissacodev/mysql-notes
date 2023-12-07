SELECT COUNT(*) FROM table WHERE DATE_FORMAT(created_at, '%Y %m %d') = DATE_FORMAT(NOW(), '%Y %m %d');

La table debe tener el campo 'created_at' 
que debe ser la fecha cuando se hizo un registro en 'table'