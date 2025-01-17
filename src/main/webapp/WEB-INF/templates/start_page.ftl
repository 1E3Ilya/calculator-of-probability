<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>
        Калькулятор вероятностей
    </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
<div class="container text-center my-4">

    <div class="field mb-4">
        <h2 class="name">Размещения без повторений</h2>
        <div class="d-flex justify-content-center">
            <img class="img-fluid" src="https://studfile.net/html/2706/54/html_wbwFlPs9y0.M6Lu/img-ZS3qQt.png" alt="Размещения без повторений" style="max-width:500px; height:auto;">
        </div>
        <form method='GET' action="/arr-without-repeat">
            <button class="btn btn-primary mt-3" type="submit">
                Посчитать
            </button>
        </form>
    </div>

    <div class="field mb-4">
        <h2 class="name">Размещения с повторениями</h2>
        <div class="d-flex justify-content-center">
            <img class="img-fluid" src="https://works.doklad.ru/images/m5S3vmkVfJg/m2dfd7de8.gif" alt="Размещения с повторениями" style="max-width:500px; height:auto;">
        </div>
        <form method='GET' action="/arr-with-repeat">
            <button class="btn btn-primary mt-3" type="submit">
                Посчитать
            </button>
        </form>
    </div>

    <div class="field mb-4">
        <h2 class="name">Перестановки без повторений</h2>
        <div class="d-flex justify-content-center">
            <img class="img-fluid" src="https://s0.showslide.ru/s_slide/c57a7012f64f9e876317b6f0c2c16a3b/9e60b5aa-ab8f-457a-82d9-f5768f833ce9.jpeg" alt="Перестановки без повторений" style="max-width:500px; height:auto;">
        </div>
        <form method='GET' action="/perm-without-repeat">
            <button class="btn btn-primary mt-3" type="submit">
                Посчитать
            </button>
        </form>
    </div>

    <div class="field mb-4">
        <h2 class="name">Перестановки с повторениями</h2>
        <div class="d-flex justify-content-center">
            <img class="img-fluid" src="https://ucarecdn.com/49af36ea-ee31-49bd-aaef-a7893e63af24/" alt="Перестановки с повторениями" style="max-width:500px; height:auto;">
        </div>
        <form method='GET' action="/perm-with-repeat">
            <button class="btn btn-primary mt-3" type="submit">
                Посчитать
            </button>
        </form>
    </div>

    <div class="field mb-4">
        <h2 class="name">Сочетания без повторений</h2>
        <div class="d-flex justify-content-center">
            <img class="img-fluid" src="https://avatars.mds.yandex.net/i?id=64739f17ad5dabe7978d8db0832d8d4d_l-5220865-images-thumbs&n=13" alt="Сочетания без повторений" style="max-width:500px; height:auto;">
        </div>
        <form method='GET' action="/comb-without-repeat">
            <button class="btn btn-primary mt-3" type="submit">
                Посчитать
            </button>
        </form>
    </div>

    <div class="field mb-4">
        <h2 class="name">Сочетания с повторениями</h2>
        <div class="d-flex justify-content-center">
            <img class="img-fluid" src="https://avatars.mds.yandex.net/i?id=67d1ef5ce3899d654af14278e9d8b6fe-4232421-images-thumbs&n=13" alt="Сочетания с повторениями" style="max-width:500px; height:auto;">
        </div>
        <form method='GET' action="/comb-with-repeat">
            <button class="btn btn-primary mt-3" type="submit">
                Посчитать
            </button>
        </form>
    </div>

    <div class="field mb-4">
        <h2 class="name">Урновая модель: все извлеченные предметы - меченые</h2>
        <div class="d-flex justify-content-center">
            <img class="img-fluid" src="https://sun9-61.userapi.com/impg/NbSAfJgSGITVnU_fpKFFtWvRhCEr8Rwei1Hlmw/W1td_naNo40.jpg?size=1335x325&quality=95&sign=2e46de14c5da382ffb9769cb4854c79a&type=album" alt="Урновая модель" style="max-width:500px; height:auto;">
        </div>
        <form method='GET' action="/urn_model_all_tagged">
            <button class="btn btn-primary mt-3" type="submit">
                Посчитать
            </button>
        </form>
    </div>
</div>
<div class="container text-center my-4">
    <h2 class="name">Урновая модель: r предметов - меченые</h2>
    <div class="d-flex justify-content-center">
        <img class="img-fluid" src="https://sun9-22.userapi.com/impg/nxTaDe8y5E7h1UOW-8g7A66hLvALgdVxgsdwhg/W8wVpSOwB3Y.jpg?size=1361x444&quality=95&sign=8c95c20535518d49e987719e8b19a19a&type=album"
             alt="Урновая модель" style="max-width:500px; height:auto;">
    </div>
    <br>
    <form method='GET' action="/urn_model_some_tagged">
        <button class="btn btn-primary mt-3" type="submit">
            Посчитать
        </button>
    </form>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

