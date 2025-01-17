<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>
        Урновая модель: r выбранных предметов - меченые
    </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
<div class="container my-4">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="text-center mb-4">
                <h2 class="display-4">Урновая модель: r выбранных предметов - меченые</h2>
                <img src="https://sun9-22.userapi.com/impg/nxTaDe8y5E7h1UOW-8g7A66hLvALgdVxgsdwhg/W8wVpSOwB3Y.jpg?size=1361x444&quality=95&sign=8c95c20535518d49e987719e8b19a19a&type=album"
                     class="img-fluid" alt="Formula" style="max-width: 300px;">
            </div>

            <div class="card shadow-sm">
                <div class="card-body">
                    <form method="POST" onsubmit="return validateForm()">
                        <div class="form-group">
                            <label for="n">Введите n:</label>
                            <input type="number" style="max-width: 300px; margin: 0 auto" class="form-control" id="n" name="n">
                        </div>

                        <div class="form-group">
                            <label for="k">Введите k:</label>
                            <input type="number" style="max-width: 300px; margin: 0 auto" class="form-control" id="k" name="k">
                        </div>

                        <div class="form-group">
                            <label for="m">Введите m:</label>
                            <input type="number" class="form-control" style="max-width: 300px; margin: 0 auto" id="m" name="m">
                        </div>

                        <div class="form-group">
                            <label for="r">Введите r:</label>
                            <input type="number" style="max-width: 300px; margin: 0 auto" class="form-control" id="r" name="r">
                        </div>

                        <button class="btn btn-primary" type="submit">Посчитать</button>
                        <small id="error" class="text-danger d-block mt-2"></small>
                    </form>
                </div>
            </div>

            <div class="answer mb-4">
                <#if answer??>
                    <p>Ответ:</p>
                    <p>${answer}</p>
                </#if>
            </div>

            <div class="mt-4 text-center">
                <a href="/" class="btn btn-secondary">Назад</a>
            </div>
        </div>
    </div>
</div>

<script>
    function validateForm() {
        const n = Number(document.getElementById('n').value);
        const k = Number(document.getElementById('k').value);
        const m = Number(document.getElementById('m').value);
        const r = Number(document.getElementById('r').value);
        if (m > n || r > k || r > m || k < 0 || m < 1 || r < 0 ||  k - r > n - m) {
            const answerContainer = document.querySelector('.answer');
            if (answerContainer) {
                answerContainer.innerHTML = '';
            }
            document.getElementById("error").textContent = "Значения n, m и k должны быть больше или равны 1, n должно быть не меньше m, а m должно быть меньше r, а k должно быть не меньше r"
            return false;
        }
        return true;
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

</body>
</html>