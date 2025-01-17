<link rel="stylesheet">
<html lang="ru" charset="UTF-8">
<head>
    <title>
        Перестановки без повторений
    </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

</head>
<body>
<div class="container my-4">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="text-center mb-4">
                <h2 class="display-4">Перестановки без повторений</h2>
                <img src="https://s0.showslide.ru/s_slide/c57a7012f64f9e876317b6f0c2c16a3b/9e60b5aa-ab8f-457a-82d9-f5768f833ce9.jpeg"
                     class="img-fluid" alt="Formula" style="max-width: 300px;">
            </div>

            <div class="card shadow-sm">
                <div class="card-body">
                    <form method="POST" onsubmit="return validateForm()">
                        <div class="form-group">
                            <label for="n">Введите n:</label>
                            <input type="number" style="max-width: 300px; margin: 0 auto" class="form-control" id="n" name="n">
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
        if (n <= 1) {
            const answerContainer = document.querySelector('.answer');
            if (answerContainer) {
                answerContainer.innerHTML = '';
            }
            document.getElementById("error").textContent = "n должно быть больше 1"
            return false;
        }
        return true;
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

</body>
</html>