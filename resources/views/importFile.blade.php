<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Importando e Exportando dados Excel & CSV</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
</head>

<body style="background-color: pink">
    <div class="container mt-5 text-center">
        <h2 class="mb-4">
            Importar e Exportar dados Excel & CSV <a href="" target="_blank"></a>
        </h2>
        <form action="{{ route('import-file') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <div class="form-group">
                    <input type="file" name="file" class="form-control" id="inputGroupFile04" aria-describedby="inputGroupFileAddon04" aria-label="Upload">

                  </div>
            </div>
            <button class="btn btn-primary">Importar Advogados</button>
            <a class="btn btn-success" href="{{ route('export-users') }}">Exportar Advogados</a>
        </form>
    </div>
</body>

</html>
