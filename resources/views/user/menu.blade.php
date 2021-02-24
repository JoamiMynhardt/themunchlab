@extends('user.indexnew')
@section('content')
<div class="container">
    
    <div class="heading">
        <h1>Our Delicious Menu</h1>         
     </div>    

        <div class="main-pizza-sb">
           <div class="container">
              <div class="carousel">
                 <?php $i=0;?>
                 @foreach($category as $ca)
                 @if($i==0)
                 <div class="box King_script_active" id="box{{$i}}" onclick="changecategory('{{$ca->id}}','{{$i}}')">
                    @else
                    <div class="box" id="box{{$i}}" onclick="changecategory('{{$ca->id}}','{{$i}}')">
                    @endif
                    <button class="pizza-category-menu">
                       <?php $img=asset('public/upload/images/menu_cat_icon/').'/'.$ca->cat_icon; ?>
                       <div class="pizza-content-box">
                          <div class="pizza-content-imgb">
                             <img src="{{asset($img)}}" alt="img">
                          </div>
                          <div class="pizza-content-textb">
                             <h3>{{$ca->cat_name}}</h3>
                          </div>
                       </div>
                    </button>
                 </div>
                 <?php $i++;?>
                 @endforeach                  
              </div>
           </div>
        </div>
        <input type="hidden" id="totalcategory" value="{{$i}}">
     </div>
     <div class="container">
        <div class="portfolist_sb_b" id="portfoliolist">
           <div class="row">
              <?php $i=0;?>
              @foreach($category as $ca)
                 @if($i==0)
                   <div id="category{{$i}}" class="mtcat" >
                 @else
                    <div id="category{{$i}}" style="display: none" class="mtcat">
                 @endif
              @foreach($items as $it)
                @if($it->category==$ca->id)
              <div class="portfolio {{$it->categoryitem->id}} col-md-6 assets w3-container  w3-animate-zoom portfoliocat" data-cat="{{$it->categoryitem->id}}" data-bound>
                 <div class="items">
                    <div class="b-img">
                       <a href="{{url('detailitem/'.$it->id)}}"><img src="{{asset('public/upload/images/menu_item_icon/'.$it->menu_image)}}"></a>
                    </div>
                    <div class="bor">
                       <div class="b-text">
                          <h1><a href="{{url('detailitem/'.$it->id)}}">{{$it->menu_name}}</a></h1>
                          <p>
                             {{substr($it->description,0,75)}}
                          </p>
                       </div>
                       <div class="price">
                          <h1>{{Session::get("usercurrency")}} {{$it->price}}</h1>
                          <div class="cart">
                             <a href="{{url('detailitem/'.$it->id)}}">{{__('messages.addcart')}}</a>
                          </div>
                       </div>
                    </div>
                 </div>
              </div>
              @endif
              @endforeach
              <?php $i++;?>
           </div>
              @endforeach
           </div>
        </div>
     </div>  
</div>
@stop