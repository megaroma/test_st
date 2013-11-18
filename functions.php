<?

function make_step($db,$step)
{

$sql = "select `id`, `typ` , 
 (select `o`.`text` from `objects` `o` where `o`.`id` = `q`.`obj_id`) as text,
 `move`
 from `questions` `q` where `q`.`id` = '{$step}'";

$result = $db->query($sql);
$row = $result->fetch_assoc();
$result->close(); 
$data = array();
$data['q_text'] = $row['text'];
$data['q_move'] = $row['move'];

$data['choices'] = array();
$data['choices_exists'] = false;
$data['statement_exists'] = false;
$data['finish'] = false;

if ($row['typ'] == 1)
{
$sql = "select (select `o`.`text` from `objects` `o` where `o`.`id` = `c`.`obj_id`) as text,
        `move`  from `choices` `c` where `c`.`up` = '{$row['id']}'";
$result = $db->query($sql);

while($row2 = $result->fetch_assoc())
{
$data['choices'][] = $row2;
}
$data['choices_exists'] = true;
$result->close(); 
}


if ($row['typ'] == 2)
{
$data['statement_exists'] = true;
}


if ($row['typ'] == 3)
{
$data['finish'] = true;
}

return $data;
}



?>