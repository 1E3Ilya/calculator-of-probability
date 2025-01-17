<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>
        Размещения c повторениями
    </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

</head>
<body>
<div class="container text-center my-4" >

    <div class="field mb-4">
        <h2 class="name">Размещения с повторениями</h2>
        <div class="d-flex justify-content-center">
            <img class="img-fluid" src="https://works.doklad.ru/images/m5S3vmkVfJg/m2dfd7de8.gif" alt="Размещения с повторениями" style="max-width:500px; height:auto;">
        </div>
        <div class="post mt-3">
            <form method='POST' onsubmit="return validateForm()">
                <div class="mb-3">
                    <label for="n" class="form-label">Введите n:</label>
                    <input class="form-control" name="n" id="n" type="number" style="max-width: 300px; margin: 0 auto">
                </div>
                <div class="mb-3">
                    <label for="m" class="form-label">Введите m:</label>
                    <input class="form-control" name="m" id="m" type="number" style="max-width: 300px; margin: 0 auto" >
                </div>
                <button class="btn btn-primary" type="submit">Посчитать</button>
                <p><small id="error" class="text-danger mt-2"></small></p>
            </form>
        </div>
    </div>

    <div class="answer mb-4">
        <#if answer??>
            <p>Ответ:</p>
            <p>${answer}</p>
        </#if>
    </div>

    <div class="button">
        <a href="/" class="btn btn-secondary">Назад</a>
    </div>

</div>

<script>
    function validateForm() {
        const n = Number(document.getElementById('n').value);
        const k = Number(document.getElementById('m').value);

        if (n < 1 || k < 1) {
            const answerContainer = document.querySelector('.answer');
            if (answerContainer) {
                answerContainer.innerHTML = '';
            }
            document.getElementById("error").textContent = "Значения n и k должны быть больше или равны 1"
            return false;
        }

        return true;
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

</body>
</html>