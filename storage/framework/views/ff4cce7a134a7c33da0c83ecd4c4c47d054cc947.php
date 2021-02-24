<?php $__env->startSection('content'); ?>
<div class="container">
    
    <div class="heading">
        <h1>Our Delicious Menu</h1>         
     </div>    

        <div class="main-pizza-sb">
           <div class="container">
              <div class="carousel">
                 <?php $i=0;?>
                 <?php $__currentLoopData = $category; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ca): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                 <?php if($i==0): ?>
                 <div class="box King_script_active" id="box<?php echo e($i); ?>" onclick="changecategory('<?php echo e($ca->id); ?>','<?php echo e($i); ?>')">
                    <?php else: ?>
                    <div class="box" id="box<?php echo e($i); ?>" onclick="changecategory('<?php echo e($ca->id); ?>','<?php echo e($i); ?>')">
                    <?php endif; ?>
                    <button class="pizza-category-menu">
                       <?php $img=asset('public/upload/images/menu_cat_icon/').'/'.$ca->cat_icon; ?>
                       <div class="pizza-content-box">
                          <div class="pizza-content-imgb">
                             <img src="<?php echo e(asset($img)); ?>" alt="img">
                          </div>
                          <div class="pizza-content-textb">
                             <h3><?php echo e($ca->cat_name); ?></h3>
                          </div>
                       </div>
                    </button>
                 </div>
                 <?php $i++;?>
                 <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>                  
              </div>
           </div>
        </div>
        <input type="hidden" id="totalcategory" value="<?php echo e($i); ?>">
     </div>
     <div class="container">
        <div class="portfolist_sb_b" id="portfoliolist">
           <div class="row">
              <?php $i=0;?>
              <?php $__currentLoopData = $category; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $ca): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                 <?php if($i==0): ?>
                   <div id="category<?php echo e($i); ?>" class="mtcat" >
                 <?php else: ?>
                    <div id="category<?php echo e($i); ?>" style="display: none" class="mtcat">
                 <?php endif; ?>
              <?php $__currentLoopData = $items; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $it): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <?php if($it->category==$ca->id): ?>
              <div class="portfolio <?php echo e($it->categoryitem->id); ?> col-md-6 assets w3-container  w3-animate-zoom portfoliocat" data-cat="<?php echo e($it->categoryitem->id); ?>" data-bound>
                 <div class="items">
                    <div class="b-img">
                       <a href="<?php echo e(url('detailitem/'.$it->id)); ?>"><img src="<?php echo e(asset('public/upload/images/menu_item_icon/'.$it->menu_image)); ?>"></a>
                    </div>
                    <div class="bor">
                       <div class="b-text">
                          <h1><a href="<?php echo e(url('detailitem/'.$it->id)); ?>"><?php echo e($it->menu_name); ?></a></h1>
                          <p>
                             <?php echo e(substr($it->description,0,75)); ?>

                          </p>
                       </div>
                       <div class="price">
                          <h1><?php echo e(Session::get("usercurrency")); ?> <?php echo e($it->price); ?></h1>
                          <div class="cart">
                             <a href="<?php echo e(url('detailitem/'.$it->id)); ?>"><?php echo e(__('messages.addcart')); ?></a>
                          </div>
                       </div>
                    </div>
                 </div>
              </div>
              <?php endif; ?>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
              <?php $i++;?>
           </div>
              <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
           </div>
        </div>
     </div>  
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('user.indexnew', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\laragon\www\themunchlab\resources\views/user/menu.blade.php ENDPATH**/ ?>