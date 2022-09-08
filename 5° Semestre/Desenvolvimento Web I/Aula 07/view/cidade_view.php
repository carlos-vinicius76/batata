<?php
/*
Programa: view/cidade_view.php
 Autor: Felipe Perez
 Data: 01/04/2020
*/

$cidades = $_REQUEST['cidades'];

?>

<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Cidade MVC</title>
    </head>
    <body>
        <table>
            <tr>
                <th>CodCid</th>
                <th>NomeCid</th>
                <th>UF</th>
            <tr>
            <?php foreach ($cidades as $cidade): ?>
                <tr>
                    <td><?php echo $cidade["CODCID"]; ?></td>
                    <td><?php echo $cidade["NOMECID"]; ?></td>
                    <td><?php echo $cidade["UF"]; ?></td>
                </tr>
            <?php endforeach; ?>
        </table>
    </body>
</html>

