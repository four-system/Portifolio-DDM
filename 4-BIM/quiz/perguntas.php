<?php

include "conexao.php";

// Consulta direta na nova tabela unificada
$sql = "SELECT * FROM perguntas ORDER BY RAND()";

$resultado = mysqli_query($conexao, $sql);

$perguntas = [];
$jaVistas  = [];

while ($linha = mysqli_fetch_assoc($resultado)) {

    $texto = trim($linha['pergunta']);

    // se esse enunciado já entrou na lista, ignora
    if (isset($jaVistas[$texto])) {
        continue;
    }

    $jaVistas[$texto] = true;
    $perguntas[] = $linha;

    // já temos 10 perguntas diferentes: para
    if (count($perguntas) == 10) {
        break;
    }
}

// Embaralha as ALTERNATIVAS de cada pergunta e atualiza a letra da correta.
$letras = ['A', 'B', 'C', 'D'];

foreach ($perguntas as &$p) {

    $correta = strtoupper(trim($p['correta']));

    // só embaralha se tiver as 4 alternativas e a correta for A, B, C ou D
    if (!in_array($correta, $letras, true)) {
        continue;
    }
    if (!isset($p['alternativa_a'], $p['alternativa_b'], $p['alternativa_c'], $p['alternativa_d'])) {
        continue;
    }

    // monta [letra original => texto] e embaralha a ordem
    $alternativas = [];
    foreach ($letras as $letra) {
        $alternativas[] = [
            'letra' => $letra,
            'texto' => $p['alternativa_' . strtolower($letra)]
        ];
    }
    shuffle($alternativas);

    // grava nas posições novas (A, B, C, D) e descobre onde a correta foi parar
    foreach ($alternativas as $posicao => $alt) {
        $novaLetra = $letras[$posicao];
        $p['alternativa_' . strtolower($novaLetra)] = $alt['texto'];

        if ($alt['letra'] === $correta) {
            $p['correta'] = $novaLetra;
        }
    }
}
unset($p);

echo json_encode($perguntas);

?>