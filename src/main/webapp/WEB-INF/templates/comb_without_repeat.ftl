<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>
        Сочетания без повторений
    </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

</head>
<body>
<div class="container my-4">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="text-center mb-4">
                <h2 class="display-4">Сочетания без повторений</h2>
                <img src="https://avatars.mds.yandex.net/i?id=64739f17ad5dabe7978d8db0832d8d4d_l-5220865-images-thumbs&n=13"
                     class="img-fluid" alt="Formula" style="max-width: 300px;">
            </div>

            <div class="card shadow-sm">
                <div class="card-body">
                    <form method="POST" onsubmit="return validateForm()">
                        <div class="form-group">
                            <label for="n">Введите n:</label>
                            <input type="number" style="max-width: 300px; margin: 0 auto" class="form-control" id="n" name="n" required>
                        </div>

                        <div class="form-group">
                            <label for="k">Введите k:</label>
                            <input type="number"  style="max-width: 300px; margin: 0 auto" class="form-control" id="k" name="k"  required>
                        </div>

                        <button type="submit" class="btn btn-primary btn-block mt-3">Посчитать</button>
                    </form>
                    <p><small id="error" class="text-danger"></small></p>
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
        const n = parseInt(document.getElementById('n').value);
        const k = Number(document.getElementById('k').value);
        if ((isNaN(n) || isNaN(k) || (n < 1 || k < 1) || (n < k))) {
            const answerContainer = document.querySelector('.answer');
            if (answerContainer) {
                answerContainer.innerHTML = '';
            }
            document.getElementById("error").textContent = "Значения n и k должны быть больше или равны 1, n должно быть не меньше k"
            return false;
        }
        return true;
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

</body>
</html>