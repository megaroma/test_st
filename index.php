<?
require_once("conf.php");  


if (isset($_GET['step']) && ($_GET['step'] != ''))
{
$step = $_GET['step'];
} else
{
$step = 1;
}


$d = make_step($db,$step);


$db->close();
require_once("template.php");
?>