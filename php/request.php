
<?php
require_once('db.php');

// Database connexion.
$db = dbConnect();
if (!$db)
{
    header ('HTTP/1.1 503 Service Unavailable');
    exit;
}

// Check the request.
$requestType = $_SERVER['REQUEST_METHOD'];
$request = substr($_SERVER['PATH_INFO'], 1);
$request = explode('/', $request);
$requestRessource = array_shift($request);
$requestMethod = $_SERVER['REQUEST_METHOD'];

header('Content-Type: text/plain; charset=utf-8');
header('Cache-control: no-store, no-cache, must-revalidate');
header('Pragma: no-cache');
header('HTTP/1.1 200 OK');

switch($requestRessource){
    
    case 'up':
        $file = 'analitic.txt';
        $current = file_get_contents($file).",";
        $tab = explode(",", $current);
        if (!in_array($_SERVER["REMOTE_ADDR"], $tab)) {
          $current .= $_SERVER["REMOTE_ADDR"];
          file_put_contents($file, $current);
        }
        die((sizeof($tab)-2)."");
    break;

    case 'getBook':
        $st = $db->prepare("select * from `comment` ORDER BY date DESC");
        $st->execute();
        $result = $st->fetchAll(PDO::FETCH_ASSOC);
        if (!$result) {
            die('{}');
        }
        die(json_encode($result));
    break;
    case 'addArticle':
        $st = $db->prepare("INSERT INTO `comment` (`id`, `name`, `comment`, `date`) VALUES (NULL, :name, :comment, NOW());");
        $st->bindValue(':name', $_POST['name']);
        $st->bindValue(':comment', $_POST['comment']);
        $result = $st->execute();
        die($result?'true':'false');
    break;

}

echo $result;