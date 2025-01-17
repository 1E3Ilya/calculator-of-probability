<link rel="stylesheet">
<html lang="ru" charset="UTF-8">
<head>
    <title>
        Перестановки c повторениями
    </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

</head>
<body>
<div class="container my-4">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="text-center mb-4">
                <h2 class="display-4">Перестановки с повторениями</h2>
                <img src="https://ucarecdn.com/49af36ea-ee31-49bd-aaef-a7893e63af24/"
                     class="img-fluid" alt="Formula" style="max-width: 300px;">
            </div>

            <div class="card shadow-sm">
                <div class="card-body">
                    <form id="dynamicForm" method="POST">
                        <div class="form-group">
                            <label for="fieldCount">Введите количество чисел:</label>
                            <input type="number" style="max-width: 300px; margin: 0 auto" class="form-control" id="fieldCount" name="fieldCount" min="1" required>
                        </div>

                        <button type="button" class="btn btn-primary" onclick="generateFields(); clearAnswer();">Ввести числа</button>

                        <div id="fields-container" class="mt-3"></div>
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
            document.getElementById("error").textContent = "n должно быть больше 1"
            return false;
        }
        return true;
    }

    function generateFields() {
        const container = document.getElementById('fields-container');
        container.innerHTML = '';
        const count = parseInt(document.getElementById('fieldCount').value);

        const answerContainer = document.querySelector('.answer');
        if (answerContainer) {
            answerContainer.innerHTML = '';
        }

        if (isNaN(count) || count <= 1) {
            alert('Введите корректное количество чисел! (больше 1)');
            return;
        }

        for (let i = 1; i <= count; i++) {
            const input = document.createElement('input');
            input.type = 'number';
            input.name = 'number' + i;
            input.placeholder = 'Число ' + i;
            input.required = true;
            input.min = 2;
            container.appendChild(input);
            container.appendChild(document.createElement('br'));
        }

        const submitButton = document.getElementById('submit-btn');

        if (!submitButton) {
            const btn = document.createElement('button');
            btn.id = 'submit-btn';
            btn.type = 'submit';
            btn.textContent = 'Отправить';
            container.appendChild(btn);
        }
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

</body>
</html>