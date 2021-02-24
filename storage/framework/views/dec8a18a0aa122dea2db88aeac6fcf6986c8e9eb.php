<?php
   function readMoreHelper($story_desc, $chars = 75) {
       $story_desc = substr($story_desc,0,$chars);
       $story_desc = substr($story_desc,0,strrpos($story_desc,' '));
       $story_desc = $story_desc."...";
       return $story_desc;
   }
   function headreadMoreHelper($story_desc, $chars =75) {
       $story_desc = substr($story_desc,0,$chars);
       $story_desc = substr($story_desc,0,strrpos($story_desc,' '));
       $story_desc = $story_desc;
       return $story_desc;
   }
   ?>
<!DOCTYPE html>
<html>
   <head>

       <title>The Munch Lab</title>

       <meta charset="UTF-8">
      <meta property="og:url" content="The Munch Lab"/>
       <meta property="og:title" content="The Munch Lab"/>
       <meta property="og:image" content="<?php echo e(asset('public/favicon.png')); ?>"/>
       <meta property="og:image:width" content="250px"/>
       <meta property="og:image:height" content="250px"/>
       <meta property="og:site_name" content="The Munch Lab"/>
       <meta property="og:description" content="<?php echo e(__('messages.metadescweb')); ?>"/>
       <meta property="og:keyword" content="<?php echo e(__('messages.metakeyboard')); ?>"/>
       <meta name="viewport" content="width=device-width, initial-scale=1">

     <link rel="shortcut icon" href="<?php echo e(asset('public/favicon.png')); ?>">
        <?php if(__('messages.rtl')=='0'): ?>

         <link rel="stylesheet" type="text/css" href="<?php echo e(asset('assets/css/style.css')); ?>">
         <?php else: ?>
           <link rel="stylesheet" type="text/css" href="<?php echo e(asset('assets/css/rtl.css')); ?>">
         <?php endif; ?>
        <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.7.1/slick.css'>
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <script type="text/javascript" src="<?php echo e(asset('assets/js/bootstrap.min.js')); ?>"></script>
      <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
      <link rel="stylesheet" type="text/css" href="<?php echo e(asset('assets/css/app.css')); ?>"/>
      <link rel="stylesheet" href="<?php echo e(asset('assets/css/font.css')); ?>">



      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


      <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
       <link rel="stylesheet" type="text/css" href="<?php echo e(asset('assets/css/bootstrap.min.css')); ?>">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>



      <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
      <script type="text/javascript" src="<?php echo e(asset('assets/js/dropdown.js')); ?>"></script>
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.5.5/slick.min.js"></script>
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/lightslider/1.1.6/js/lightslider.js"></script>
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.js"></script>
      <script type="text/javascript" src=""></script>
      <script type="text/javascript" src="<?php echo e(asset('assets/js/jquery.mixitup.min.js')); ?>"></script>
      <script type="text/javascript" src='https://maps.google.com/maps/api/js?key=AIzaSyC1JUHjsnQZtKx5eBOpG42E_CLoJ1s39AU&sensor=false&libraries=places'></script>
      <script src="<?php echo e(url('public/js/locationpicker.js')); ?>"></script>

   </head>

   <body>
      <?php echo $__env->make('cookieConsent::index', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
      <?php echo $__env->make('user.cssclass', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
      <div class="login-re-modal">
         <div class="modal" id="myModal1">
            <div class="modal-dialog">
               <div class="modal-content">
                    <div id="overlaychk">
                        <div class="cv-spinner">
                           <span class="spinner"></span>
                        </div>
                     </div>
                  <div class="modal-header">
                     <div class="login-modal-head">
                        <button type="button" class="close" data-dismiss="modal">
                        &times;
                        </button>
                     </div>
                  </div>
                  <div class="modal-body">

                     <div id="forgotbody" class="forgotbody">
                        <span class="for_success_msg" id="for_success_msg">
                        <?php echo e(__('messages.forgot_email_success')); ?>

                        </span>
                        <span class="for_error_msg" id="for_error_msg">
                        <?php echo e(__('messages.forgot_error')); ?>

                        </span>
                        <form>
                           <label class="for_label">
                           <?php echo e(__('messages.forgot_text')); ?>

                           <span class="requiredfield">*</span>
                           </label>
                           <input type="text" required name="phone_for" id="modal-text" placeholder="<?php echo e(__('messages.forgot_placeholder')); ?>" class="reuiredtextfields"/>
                        </form>
                        <div class="for_btn_div">
                           <div class="modal-login-button for_btn_div_model" >
                              <button type="button" onclick="forgotaccount()"class="for_button">
                                 <h6 class="for_button_value">
                                    <?php echo e(__('messages.forgot_pwd')); ?>

                                 </h6>
                              </button>
                           </div>
                        </div>
                        <div class="modal-forgot">
                           <a href="javascript:loginmodel()">
                           <?php echo e(__('messages.login')); ?>

                           </a>
                        </div>
                     </div>
                     <div class="login-modal" id="loginmodel">
                        <ul class="nav nav-tabs" role="tablist">
                           <li class="nav-item">
                              <a href="#tab1" class="nav-link active" data-toggle="tab">
                              <?php echo e(__('messages.login')); ?>

                              </a>
                           </li>
                           <li class="nav-item">
                              <a href="#tab2" class="nav-link" data-toggle="tab">
                              <?php echo e(__('messages.register')); ?>

                              </a>
                           </li>
                        </ul>
                        <div class="tab-content">
                           <div id="tab1" class="tab-pane show active">
                              <span id="login_error_msg" class="for_error_msg">
                              <?php echo e(__('messages.login_error')); ?>

                              </span>
                              <label class="for_button_value">
                              <?php echo e(__('messages.phone_no')); ?>

                              <span class="requiredfield">*</span>
                              </label>
                              <input type="text" required name="phone" id="modal-text" placeholder="<?php echo e(__('messages.phone_no')); ?>" value="<?php echo e(isset($_COOKIE['phone'])?$_COOKIE['phone']:''); ?>">
                              <label class="for_button_value">
                              <?php echo e(__('messages.password')); ?>

                              <span class="requiredfield">*</span>
                              </label>
                              <input type="password" required name="password" id="modal-text" placeholder="<?php echo e(__('messages.password')); ?>" value="<?php echo e(isset($_COOKIE['password'])?$_COOKIE['password']:''); ?>">
                              <div class="modal-re">
                                 <input type="checkbox" name="rem_me" value="1" <?php echo isset($_COOKIE[ 'rem_me'])? "checked": ''?>>
                                 <p><?php echo e(__('messages.rem_me')); ?></p>
                              </div>
                              <span class="modal-forgot">
                              <a href="javascript:forgotmodel()" ><?php echo e(__('messages.forgot_u')); ?></a>
                              </span>
                              <div class="modal-login-button ">
                                 <button type="button" onclick="loginaccount()" class="for_button">
                                    <h6 class="for_button_value"><?php echo e(__('messages.login')); ?></h6>
                                 </button>
                              </div>
                           </div>
                           <div id="tab2" class="tab-pane ">
                              <span class="for_success_msg" id="reg_success_msg">
                              <?php echo e(__('messages.register_suceess')); ?>

                              </span>
                              <span class="for_error_msg" id="reg_error_msg">
                              <?php echo e(__('messages.reg_error')); ?>

                              </span>
                              <form action="<?php echo e(url('userregister')); ?>" method="post">
                                 <?php echo e(csrf_field()); ?>

                                 <label class="for_button_value">
                                 <?php echo e(__('messages.name')); ?>

                                 <span class="requiredfield">*</span>
                                 </label>
                                 <input type="text" required name="name" id="modal-text" placeholder="<?php echo e(__('messages.name')); ?>">
                                 <label class="for_button_value">
                                 <?php echo e(__('messages.email')); ?>

                                 <span class="requiredfield">*</span>
                                 </label>
                                 <input type="text" required name="email" id="modal-text" placeholder="<?php echo e(__('messages.email')); ?>">
                                 <label class="for_button_value">
                                 <?php echo e(__('messages.phone_no')); ?>

                                 <span class="requiredfield">*</span>
                                 </label>
                                 <input type="text" required name="phone_reg" id="modal-text" placeholder="<?php echo e(__('messages.phone_no')); ?>">
                                 <label class="for_button_value">
                                 <?php echo e(__('messages.password')); ?>

                                 <span class="requiredfield">*</span>
                                 </label>
                                 <input type="password" required name="password_reg" id="modal-text" placeholder="<?php echo e(__('messages.password')); ?>">
                                 <label class="for_button_value">
                                 <?php echo e(__('messages.confirm_pwd')); ?>

                                 <span sclass="requiredfield">*</span>
                                 </label>
                                 <input type="password" required name="con_password_reg" id="modal-text" placeholder="<?php echo e(__('messages.confirm_pwd')); ?>" onchange="checkboth(this.value)">
                                 <div class="modal-rg-content">
                                    <p><?php echo e(__('messages.reg_fixed')); ?></p>
                                 </div>
                                 <div class="modal-login-button">
                                    <button type="button" onclick="registeruser()" class="for_button">
                                       <h6><?php echo e(__('messages.register')); ?></h6>
                                    </button>
                                 </div>
                              </form>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="modal model1my" id="myModal" >
         <div class="modal-dialog modal-1">
            <?php $cartCollection = Cart::getContent();
               if($cartCollection->count()==0){?>
            <div class="empty-box">
               <div class="modal-header cart-h">
                  <button type="button" class="close" data-dismiss="modal">
                  <img src='<?php echo e(asset("assets/images/close.png")); ?>'>
                  </button>
               </div>
               <div class="container">
                  <div class="cart-modal-empty col-md-8">
                     <img src='<?php echo e(asset("assets/images/empty-cart.png")); ?>'>
                     <h1><?php echo e(__('messages.nocart')); ?></h1>
                  </div>
               </div>
            </div>
            <?php }else{ ?>
            <div class="modal-content">
               <div class="modal-header cart-h">
                  <button type="button" class="close" data-dismiss="modal">
                  <img src="<?php echo e(asset('assets/images/close.png')); ?>">
                  </button>
               </div>
               <div class="container">
                  <div class="cart-modal col-md-8">
                     <div class="modal-body main-modal ">
                        <?php $cartCollection = Cart::getContent();$i=0;?>
                        <?php $__currentLoopData = $cartCollection; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $item): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <div class="portfolio por-1 col-md-12 row">
                           <div class="por-img">
                              <div class="b-img">
                                 <?php $__currentLoopData = $allmenu; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ai): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                 <?php if($item->name==$ai->menu_name): ?>
                                 <img src="<?php echo e(asset('public/upload/images/menu_item_icon/'.$ai->menu_image)); ?>" class="cartth">
                                 <?php endif; ?>
                                 <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                              </div>
                           </div>
                           <div class="b-text">
                              <div class="box-spa">
                                 <h1><?php echo e($item->name); ?></h1>

                                 <p><?php echo e($item->quantity); ?>

                                    <img src="<?php echo e(asset('assets/images/cross.png')); ?>">
                                    <?php echo e(Session::get("usercurrency").number_format($item->price, 2, '.', '')); ?>

                                 </p>
                              </div>
                              <span class="price">
                                 <?php $totalamount=(float)$item->quantity*(float)$item->price;?>
                                 <a href="<?php echo e(url('deletecartitem/'.$item->id)); ?>">
                                 <i class="fa fa-trash-o" aria-hidden="true">
                                 </i>
                                 </a>
                                 <h1>
                                    <?php echo e(Session::get("usercurrency")); ?><?php echo e(number_format($totalamount, 2, '.', '')); ?>

                                 </h1>
                              </span>
                           </div>
                        </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                     </div>
                     <div class="total">
                        <h1><?php echo e(__('messages.subtotal')); ?> :</h1>
                        <span>
                        <?php echo e(Session::get("usercurrency").number_format(Cart::getTotal(), 2, '.', '')); ?>

                        </span>
                     </div>
                     <?php if(Session::get("orderstatus")==1){ ?>
                     <div class="viewcart">
                        <h1>
                           <a href="<?php echo e(url('cartdetails')); ?>" class="viewcarta">
                           <?php echo e(__('messages.view_cart')); ?>

                           </a>
                        </h1>
                     </div>
                     <?php }?>
                     <?php if(Session::get("orderstatus")==0){ ?>
                     <div class="last-box">
                        <div class="Delivery">
                           <img src="<?php echo e(asset('assets/images/delivery.png')); ?>" style="width:50px">
                        </div>
                        <div class="last-text">
                           <h1><?php echo e(__('messages.offline_order')); ?></h1>
                           <p><?php echo e(__('messages.off_time')); ?></p>
                        </div>
                     </div>
                     <?php }?>
                  </div>
               </div>
            </div>
            <?php }?>
         </div>
      </div>
      
      <div class="row" style="margin: 14px;">
         <div class="kb-nav-logo">
            <a href="<?php echo e(url('/')); ?>">
            <img src="<?php echo e('public/upload/web/logo-color.svg'); ?>" class="img-fluid" style="width: 100px;" style="padding: 20px;">
            </a>
         </div>
         <div class="kb-menu">
            <ul class="p-0">
               <li><a href="<?php echo e(url('/')); ?>" class="for_button_value">Home</a></li>
               <li><a href="<?php echo e(url('menu')); ?>" class="for_button_value">Menu</a></li>
               <li><a href="<?php echo e(url('aboutus')); ?>" class="for_button_value">About</a></li>
               <li><a href="<?php echo e(url('contactus')); ?>" class="for_button_value">Contact</a></li>
               
            </ul>
         </div>
         <div class="kd-social">
            <div class="login">
               <?php if(empty(Session::get('login_user'))){?>
               <a href="#" data-toggle="modal" data-target="#myModal1">
               <i class="fa fa-user" aria-hidden="true"></i>
               </a>
               <?php }else{?>
               <a href="<?php echo e(url('myaccount')); ?>">
               <i class="fa fa-user" aria-hidden="true"></i>
               </a>
               <?php }?>
               <a href="#" data-toggle="modal" data-target="#myModal">
               <i class="fa fa-shopping-cart" aria-hidden="true">
               <span id="totalcart">
               <?php $cartCollection = Cart::getContent();
                  $carttotal=0;
                   if($cartCollection->count()!=0)
                       {
                           $carttotal=$cartCollection->count();
                           echo '<div class="cric">'.$cartCollection->count().'</div>';
                       }
                  ?>
               </span>
               <input type="hidden" id="carttotal" value="<?php echo e($carttotal); ?>">
               </i></a>
            </div>
            
            <a href="https://www.facebook.com/The-Munch-Lab-103312161804180"  target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a>
            <a href="https://www.instagram.com/danicairns/"  target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a>
         </div>
         <div class="tm">
            <div id="toggle" onclick="changetab()">
               <div class="one"></div>
               <div class="two"></div>
               <div class="three"></div>
            </div>
         </div>
         <div class="col-12">
            <div id="menu">
               <ul class="p-0">
                  <li><a href="<?php echo e(url('/')); ?>">Home</a></li>
                  <li><a href="<?php echo e(url('menu')); ?>">Menu</a></li>
                  <li><a href="<?php echo e(url('aboutus')); ?>">About</a></li>
                  <li><a href="<?php echo e(url('contactus')); ?>">Contact</a></li>
                  
               </ul>
            </div>
         </div>
      </div>
      <div id="main_content">
        <?php echo $__env->yieldContent('content'); ?>
     </div>
      <div class="footer-section">
         <div class="footer">
            <div class="container kb-footer">
               <div class="row">
                  <div class="col-md-3 about">
                     <img src="<?php echo e('public/upload/web/logo-white.svg'); ?>" style="width: 100px;">
                     <p>Nutritious Food For Sustained Energy</p>
                     <div class="footer-social">
                        <a href="https://www.facebook.com/The-Munch-Lab-103312161804180" target="_blank"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                        <a href="https://www.instagram.com/danicairns/" target="_blank"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                     </div>
                  </div>
                  <div class="col-md-3 info">
                     <div class="fo-text">
                        <h1>Pages</h1>
                     </div>
                     <ul class="textdata">
                        <li><a href="<?php echo e(url('/')); ?>" class="for_button_value">Home</a></li>
                        <li><a href="<?php echo e(url('menu')); ?>" class="for_button_value">Menu</a></li>
                        <li><a href="<?php echo e(url('aboutus')); ?>" class="for_button_value">About</a></li>
                        <li><a href="<?php echo e(url('contactus')); ?>" class="for_button_value">Contact</a></li>
                        
                     </ul>
                  </div>
                  <div class="col-md-3 info">
                     <div class="fo-text">
                        <h1>My Account</h1>
                     </div>
                     <ul class="textdata">
                        <?php if(empty(Session::get('login_user'))): ?>
                        <li><a href="#" data-toggle="modal" data-target="#myModal1"><?php echo e(__('messages.myorder')); ?></a></li>
                        <?php endif; ?>
                        <?php if(!empty(Session::get('login_user'))): ?>
                        <li><a href="<?php echo e(url('myaccount')); ?>"><?php echo e(__('messages.myorder')); ?></a></li>
                        <?php endif; ?>
                        <?php $cartCollection = Cart::getContent();?>
                        <?php if(count($cartCollection)!=0): ?>
                        <li><a href="<?php echo e(url('cartdetails')); ?>"><?php echo e(__('messages.checkout')); ?></a></li>
                        <?php endif; ?>
                        <?php if(count($cartCollection)==0): ?>
                        <li><a href="#" data-toggle="modal" data-target="#myModal"><?php echo e(__('messages.checkout')); ?></a></li>
                        <?php endif; ?>
                        <li><a  href="#" data-toggle="modal" data-target="#myModal"><?php echo e(__('messages.cart')); ?></a></li>
                        <li><a href="<?php echo e(url('termofuse')); ?>"><?php echo e(__('messages.terms')); ?></a></li>
                     </ul>
                  </div>
                  <div class="col-md-3 info">
                     <div class="fo-text">
                        <h1>Contact Us</h1>
                     </div>
                     <div class="f-location">
                        <img src="<?php echo e(asset('assets/images/location.png')); ?>">
                     </div>
                     <span>
                        13 Kearsney College Rd <br> Bothas Hill
                     </span>
                     <div class="f-location">
                        <img src="<?php echo e(asset('assets/images/email.png')); ?>">
                     </div>
                     <span>
                        <a class="email-footer" href="mailto:info@themunchlab.com">info@themunchlab.com</a>
                     </span>
                  </div>
               </div>
            </div>
            <div class="right">
               <div class="container">
                  <div class="row">
                     <div class="col-md-6">
                        <h1>Copyright © <?php echo e(Session::get('current_year')); ?> The Munch Lab. All rights reserved.</h1>
                     </div>
                     <div class="col-md-6 v-box">
                        <div class="v-img">
                           <a href="#"><img src="<?php echo e(asset('assets/images/v-1.png')); ?>"></a>
                        </div>
                        <div class="v-img">
                           <a href="#"><img src="<?php echo e(asset('assets/images/v-2.png')); ?>"></a>
                        </div>
                        <div class="v-img">
                           <a href="#"><img src="<?php echo e(asset('assets/images/v-3.png')); ?>"></a>
                        </div>
                        <div class="v-img">
                           <a href="#"><img src="<?php echo e(asset('assets/images/v-4.png')); ?>"></a>
                        </div>
                        <div class="v-img">
                           <a href="#"><img src="<?php echo e(asset('assets/images/v-5.png')); ?>"></a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div class="img-aa"></div>
   </body>
   <div class="modal modal-2" id="myModal2">
      <div class="modal-dialog">
         <div class="modal-content">
            <div class="modal-header logout">
               <h4 class="modal-title"><?php echo e(__('messages.register')); ?></h4>
               <p><?php echo e(Session::get('user_phone')); ?></p>
               <h1><?php echo e(__('messages.logout_msg')); ?></h1>
               <div class="logout-but">
                  <button type="button" class="btn btn-danger" data-dismiss="modal"><?php echo e(__('messages.cancel')); ?></button>
                  <button type="button" class="btn-1" data-dismiss="modal" onclick="logout()"><i class="fa fa-sign-out" aria-hidden="true"></i><?php echo e(__('messages.logout')); ?>

                  </button>
               </div>
            </div>
         </div>
      </div>
   </div>
   <input type="hidden" id="is_rtl" value="<?php echo e(__('messages.rtl')); ?>"/>
   <input type="hidden" id="currency" value='<?php echo e(Session::get("usercurrency")); ?>' />
   <input type="hidden" id="addcart" value='<?php echo e(__("messages.addcart")); ?>' />
   <input type="hidden" id="path_site" value="<?php echo e(url('/')); ?>" />
   <input type="hidden" id="forgot_error" value="<?php echo e(__('messages.forgot_error')); ?>"/>
   <input type="hidden" id="reg_error" value="<?php echo e(__('messages.reg_error')); ?>"/>
   <input type="hidden" id="pwdmatch" value="<?php echo e(__('messages.pwdmatch')); ?>" />
   <input type="hidden" id="login_error" value="<?php echo e(__('messages.login_error')); ?>" />
   <input type="hidden" id="required_field" value="<?php echo e(__('messages.required_field')); ?>" />
   <input type="hidden" id="login_error" value="<?php echo e(__('messages.login_error')); ?>" />
   <input type="hidden" id="forgot_error_2" value="<?php echo e(__('messages.forgot_error_2')); ?>">

   <script type="text/javascript" src="<?php echo e(URL::to('public/js/code.js').'?version=965326'); ?>"></script>


   <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
   <script type="text/javascript" src="<?php echo e(URL::to('public/demo/button.js')); ?>"></script>
   <script src="<?php echo e(URL::to('public/demo/script.js')); ?>"></script>
   <script type="text/javascript">
      function changecategory(cat_id,id){
           var total=$("#totalcategory").val();
           console.log(id);
           for(var i=0;i<total;i++){
               document.getElementById("category"+i).style.display="none";
               $("#box"+i).removeClass('King_script_active');
           }
           document.getElementById("category"+id).style.display="block";
           $("#box"+id).addClass('King_script_active');
      }
   </script>
</html>
<?php /**PATH C:\laragon\www\themunchlab\resources\views/user/indexnew.blade.php ENDPATH**/ ?>