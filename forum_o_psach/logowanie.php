<!DOCTYPE html>
<html lang="pl-PL">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forum o psach</title>
    <link rel="stylesheet" href="styl4.css"/>
</head>
<body>
    <header>
        <h1>Forum wielbicieli psów</h1>
    </header>
    <main>
        <div id="lewy">
            <img src="obraz.jpg" alt="foksterier"/>
        </div>
        <div id="kontener">

       
        <div id="prawy1">
            <h2>Zapisz się </h2>
            <form method="post">
                <label for="login">login: </label>
                <input type="login" name="login" id="login"><br><br>
                <label for="password">haslo: </label>
                <input type="password" name="password" id="password"><br><br>
                <label for="password2">powtórz hasło: </label>
                <input type="password" name="password2" id="password2"><br>
                <button type="submit">Zapisz się</button>
            </form>
            <?php
                if ($_SERVER["REQUEST_METHOD"] == "POST") {
                    if (empty($_POST["login"]) || empty($_POST["password"]) || empty($_POST["password2"])) {
                        echo "<p>wypełnij wszystkie pola</p>";
                    } else {
                        $mysqli = new mysqli("localhost", "root", "", "psy");
                        $login = $_POST["login"];
                        $result = $mysqli->query("SELECT * FROM uzytkownicy WHERE login = '$login'");
                        if ($result->num_rows > 0) {
                            echo "<p><br>login występuje w bazie danych, konto nie zostało dodane</p>";
                        } else {
                            $haslo = $_POST["password"];
                            $powtorz_haslo = $_POST["password2"];
                            if ($haslo != $powtorz_haslo) {
                                echo "<p>hasła nie są takie same, konto nie zostało dodane</p>";
                            } else {
                                $haslo_szyfrowane = sha1($haslo);
                                $mysqli->query("INSERT INTO uzytkownicy (login, haslo) VALUES ('$login', '$haslo_szyfrowane')");
                                echo "<p>Konto zostało dodane</p>";
                            }
                        }

                        $mysqli->close();
                    }
                }
            ?>
        </div>
        <div id="prawy2">
            <h2>Zapraszamy wszystkich</h2><br>
            <ol>
                <li>właścicieli psów</li>
                <li> weterynarzy</li>
                <li>tych , co chcą kupić psa</li>
                <li>tych, co lubią psy</li>
            </ol>
            <a href="regulamin.html">Przeczytaj regulamin forum</a>
        </div>
     </div>
    </main>
    <footer>
        <p>Stronę wykonał: Kacper Wójcik 4i</p>
    </footer>
</body>
</html>