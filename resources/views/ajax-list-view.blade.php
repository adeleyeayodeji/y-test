@if($products->count() > 0)




<div class="row " id="products">
    @foreach($products as $product)
    <div class="item col-md-3 mb-3">
        <div class="card">
            <div class="img-event">
                <img style="height: 100px;width:100%" src="{{asset('img/card-img.jpg')}}" alt="" />
            </div>
            <div class="card-body p-2">
                <h5>{{$product->name}}</h5>
                <p> {!! Str::limit($product->description, 50, '...') !!}</p>
                <P>Price: {{$product->price}}</P>
                <a href="{{route('product-main',$product->id)}}">View product</a>
            </div>
        </div>
    </div>
    @endforeach
</div>
<div class="row">
    <div class="col-12 mb-1">
        {!!$products->links()!!}
    </div>
</div>
@else
<div class="row" style="min-height: 50vh; ">
    <div class="col-12" style="display:flex;justify-content:center;align-items:center;">
        <h1>No Product Found</h1>
    </div>
</div>
@endif
