<?php

header("Content-Type: application/json; charset=UTF-8");

echo json_encode([
    "status" => "sucesso",
    "mensagem" => "App conectado ao PHP!"
]);

?>