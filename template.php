<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>Тест</title>
</head>
<body>  
 
<?=$d['q_text'];?>
<hr>
<form method="get">


<? if($d['choices_exists']):?>

   <?foreach ($d['choices'] as $ch):?>
   <input type="radio" name="step" value="<?=$ch['move'];?>"> <?=$ch['text'];?><br>
   <?endforeach;?>
 </select>
<? endif;?>

<? if($d['statement_exists']):?>
<input type="hidden" name="step" value="<?=$d['q_move'];?>">
<? endif;?>


<input type="submit" value="next" <? if($d['finish']):?>disabled<? endif;?>>
</form>
</body>
</html>