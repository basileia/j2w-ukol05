[#ftl]
[#import "/spring.ftl" as spring]
<!DOCTYPE html>
<html lang="cs">
<head>
    <meta charset="UTF-8">
    <title>Rekapitulace</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="/css/style.css"/>
    <link rel="icon" type="image/png" href="/images/favicon.png">
</head>
<body>
<div class="container">
    <div class="formular">
        <h1>Rekapitulace</h1>
        <div class="radek">Jméno:</div>
        <span>${form.jmeno}</span>

        <div class="radek">Příjmení:</div>
        <span>${form.prijmeni}</span>

        <div class="radek">Datum narození:</div>
        <span>${form.datumNarozeni}</span>

        <div class="radek">Pohlaví:</div>
        <span>${form.pohlavi}</span>

        <div class="radek">Turnus:</div>
        <span>${form.turnus}</span>

        [#if form.email?has_content]
        <div class="radek">E-mail:</div>
        <span>${form.email}</span>
        [/#if]

        [#if form.telefon?has_content]
        <div class="radek">Telefon:</div>
        <span>${form.telefon}</span>
        [/#if]
    </div>
</div>
</body>
</html>