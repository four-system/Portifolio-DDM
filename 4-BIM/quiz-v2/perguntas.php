
<?php

include "conexao.php";

// Busca 10 perguntas aleatórias
$sql = "SELECT * FROM impressionismo ORDER BY RAND() LIMIT 10";

$resultado = mysqli_query($conexao, $sql);

$perguntas = [];

while ($linha = mysqli_fetch_assoc($resultado)) {
    $perguntas[] = $linha;
}

// Embaralha as alternativas
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

// Envia as perguntas em JSON
header('Content-Type: application/json; charset=utf-8');

echo json_encode($perguntas, JSON_UNESCAPED_UNICODE);

?>
