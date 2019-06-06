#	PHP 5 Apache LFI 环境

index.php :
```php
<?php
$file = $_GET['file'];
include $file;
?>
```

info.php:
```php
<?php
phpinfo();
?>
```

Hack4fun : )