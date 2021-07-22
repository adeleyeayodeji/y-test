<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>test</title>


        <!-- Styles -->
        <link href="{{ asset('css/app.css') }}" rel="stylesheet">



    </head>

    <body>
        <div id="app">
            <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
                <div class="container">
                    <ul>
                        <li>products</li>
                    </ul>
                </div>
            </nav>


            <div class="container mt-5">
                <div class="row d-flex justify-content-between ">
                    <div class="row"><a href="{{url()->previous()}}" class="btn btn-primary">Back</a></div>
                    <div> <a id="goBack" href="#" class="btn btn-secondary">Go Back!</a><br><br></div>

                </div>
                <div class="row">
                    <div class="col-md-6 mb-5 py-3">
                        <div class="card">
                            <h5>{{$product->name}}</h5>
                            <p>{{$product->description}}</p>

                        </div>
                    </div>
                </div>

            </div>





        </div>
        <script src="{{ asset('js/app.js') }}"></script>
        <script>
            $('#goBack').on('click', function(event) {
                   window.history.back();
               });
        </script>

    </body>

</html>
