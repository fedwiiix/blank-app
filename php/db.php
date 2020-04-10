<?php

define('DB_USER', 'USER');
define('DB_PASSWORD', 'PASS');
define('DB_NAME', 'DB_NAME');
define('DB_SERVER', 'localhost');

function dbConnect()
  {
    try
    {
      $db = new PDO('mysql:host='.DB_SERVER.';dbname='.DB_NAME.';charset=utf8',DB_USER, DB_PASSWORD);
    }
    catch (PDOException $exception)
    {
     // error_log('Connection error: '.$exception->getMessage());
      return false;
    }
    return $db;
  }

