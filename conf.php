<?
require_once "functions.php"; 
$mysql_host = "localhost";
$mysql_user = "root";
$mysql_pass = "pricebase";
$mysql_db = "test_db";

header('Content-Type: text/html;charset=UTF-8');

$db = new mysqli($mysql_host, $mysql_user, $mysql_pass,$mysql_db);

if (mysqli_connect_errno()) 
{
echo "Ошибка соединения с базой данных: ".mysqli_connect_error()."<br>";
exit;
}

$db->set_charset("utf8");

?>