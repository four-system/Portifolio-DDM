<?php
include "conexao.php";

$sql = "SELECT * FROM perguntas ORDER BY RAND() LIMIT 30";
$resultado = mysqli_query($conexao, $sql);

$perguntas = [];
while ($linha = mysqli_fetch_assoc($resultado)) {
    $perguntas[] = $linha;
}

$letras = ['A', 'B', 'C', 'D'];
foreach ($perguntas as &$p) {
    $correta = strtoupper(trim($p['correta']));
    $alternativas = [];
    foreach ($letras as $letra) {
        $alternativas[] = [
            'letra' => $letra,
            'texto' => $p['alternativa_' . strtolower($letra)]
        ];
    }
    shuffle($alternativas);
    foreach ($alternativas as $posicao => $alt) {
        $novaLetra = $letras[$posicao];
        $p['alternativa_' . strtolower($novaLetra)] = $alt['texto'];
        if ($alt['letra'] === $correta) {
            $p['correta'] = $novaLetra;
        }
    }
}
unset($p);

header('Content-Type: application/json; charset=utf-8');
echo json_encode($perguntas, JSON_UNESCAPED_UNICODE);
?>