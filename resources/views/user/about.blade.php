












@extends('user.indexnew')
@section('content')
<div class="container">
    <div class="about-heading">
        <h2>Our Story</h2>
        <p>Hi my name is Danielle. As The founder of “The Munch Lab” it is such a joy to be able to share my
            journey with you. I believe that making a conscious decision to adopt a Nutritious Lifestyle is one
            of the most valuable decisions we can make.</p>
    </div>
    <div class="about-history-1">
        <div class="row">
            <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
                {{-- <div class="about-history">
                     <h2>{{ __('messages.aboutusdesch') }}</h2>
            </div> --}}
            <div class="about-content-1">
                <p>I have always been fanatical when it comes to
                    <span>diet and exercise</span>
                    . After graduating with a degree in Sport Science I went on to pursue
                    my passion in Diet and Nutrition, and obtained two postgraduate diplomas.
                    My love for Children lead me to specialize in Child Nutrition, which motivated
                    me to follow my dream of helping kids get the dietary nourishment they need for
                    sustained energy and growth.</p>
            </div>
            <div class="about-content-1">
                <p>What we put into our bodies will impact what we get out of our bodies. Food is the fuel
                    our bodies need to function efficiently which is why it is so important to fuel our bodies
                    with the right food. Diet can play a huge part in helping us to feel good and perform effectively,
                    especially when it comes to kids maintaining an active lifestyle. Kids can be very impressionable,
                    and parents can be very influential in helping their child to adopt healthy habits from a young age.
                    When explaining Diet to kids, I like to use the analogy of a car. Our diet is the fuel the car needs
                    to operate efficiently. The
                    <span>wrong fuel can be extremely detrimental</span>
                    . When it comes to our bodies, adopting a poor diet, or a diet deficient in nutrients and minerals
                    can cause our bodies to perform inefficiently, and pose many long term health risks.</p>
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
            <img src="{{ 'public/upload/web/about1.jpeg' }}" class="about-image-1 img-responsive">
        </div>
    </div>
</div>
<div class="about-history-1">
    <div class="row">
        <div class="col-lg-4 col-md-4">
            <img src="{{ 'public/upload/web/sec-img.png' }}" width="100%">
        </div>
        <div class="col-lg-8 col-md-8">
            <div class="about-content-1">
                <p>As a parent, I can imagine that one always wants what’s best for your child. These days,
                    packing your child’s school lunch can become something that parents might find challenging
                    for reasons such as lack of innovation, lack of time, lack of knowledge or maybe lack of skill.
                    That’s why “The Munch Lab” is here to help!! Providing you with the goodies your child needs every
                    day, at your convenience, will ensure that packing your child’s lunchbox has never been easier!
                    <span>“The Munch Lab” </span>
                    ensures balanced and Nutritious “ready-to-go” lunches that taste delicious! No stress attached!</p>
            </div>
            <div class="about-content-1">
                <p><span>Remember, we are what we eat! </span>
                    My goal is to help parents educate their kids to realize the importance of a healthy lifestyle, and
                    fuelling
                    our bodies with nutritious foods. The sooner we realize this, the greater the long-term benefits.
                    Kids learn
                    so much from their parents, so let’s work together in adopting healthy habits so that your kiddies
                    can do the same!
                </p>
            </div>
        </div>
    </div>
</div>
</div>
@stop
