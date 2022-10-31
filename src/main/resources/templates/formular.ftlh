[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Registrace na letní dětský tábor</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/css/style.css"/>
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
<div class="container">
    <form class="formular" action="/" method="post">
        <h1>Registrace na letní dětský tábor</h1>
        <label for="jmeno" class="radek">Jméno:</label>
        [@spring.formInput path="form.jmeno"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="prijmeni" class="radek">Příjmení:</label>
        [@spring.formInput path="form.prijmeni" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="datum-narozeni" class="radek">Datum narození:</label>
        <input id="birth-date" name="birthDate" type="date"/>
        [@spring.bind "form.datumNarozeni"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek">Pohlaví:</div>
        <div class="pohlavi">
            <div>
                <input id="muz" type="radio" name="pohlavi" value="Muz"/>
                <label for="muz">muž</label>
            </div>
            <div>
                <input id="zena" type="radio" name="pohlavi" value="Zena"/>
                <label for="zena">žena</label>
            </div>
        </div>
        [@spring.bind "form.pohlavi"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="turnus" class="radek">Turnus:</label>
        [@spring.formSingleSelect path="form.turnus" options={
        "": "",
        "turnus-1": "5. až 11. července",
        "turnus-2": "12. až 18. července",
        "turnus-3": "19. až 25. července"
        } /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="email" class="radek">E-mail:</label>
        [@spring.formInput path="form.email" fieldType="email" /]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <label for="telefon" class="radek">Telefon:</label>
        [@spring.formInput path="form.telefon"/]
        <div class="error">[@spring.showErrors "<br>"/]</div>

        <div class="radek controls">
            <button type="submit">Odeslat</button>
        </div>

    </form>
</div>

</body>
</html>
