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
                        <li>product</li>
                    </ul>
                </div>
            </nav>


            <div class="container mt-5">
                <div class="row">
                    <div class="col-md-12">
                        <div id="product-view">
                            {{-- @include('ajax-list-view') --}}
                            <p>Fetching {{session("pageview") == "true" ? 'page '.session("pagenumber") : ''}} data ...
                            </p>
                        </div>
                    </div>
                </div>
                <input type="hidden" name="hidden_page" id="hidden_page" value="1">
            </div>





        </div>
        <script src="{{ asset('js/app.js') }}"></script>
        <script>
            $(document).ready(function(){

          $(document).on('click','.pagination a',function(e){
                  e.preventDefault();
                 var pageNumber = $(this).attr('href').split('page=')[1];
                 $("#hidden_page").val(pageNumber);
                getMorePage(pageNumber)
            });


            function getMorePage(pageNumber){
                @if(session("pageview") == "true")
                pageNumber = {{session("pagenumber")}};
                @php
                    Session::forget("pageview");
                    Session::forget("pagenumber");
                @endphp
                @endif
              $.ajax({
                    type:"GET",
                    url:"/paginate-more-products-ajax/"+"?page="+pageNumber,
                  data:{},
                    success: function(data){
                      $('#product-view').html(data)
                    },

                  })
            }


            getMorePage(1);

        });

        </script>

    </body>

</html>
