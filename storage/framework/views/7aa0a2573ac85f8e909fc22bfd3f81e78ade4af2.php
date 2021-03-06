<div class="d-flex align-items-center">
    <div class="pull-left p-r-10 fs-14 font-heading d-lg-block d-none">
        <span class="semi-bold"><?php echo e(auth()->user()->nama_gelar ?? 'Please Login'); ?></span>
    </div>
    <div class="dropdown pull-right d-lg-block d-none">
        <button class="profile-dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false">
            <span class="thumbnail-wrapper d32 circular inline">
                <img src="<?php echo e(url(auth()->user()->foto_profile ?? 'public/assets/img/avatar.jfif')); ?>" width="32"
                    height="32">
            </span>
        </button>
        <div class="dropdown-menu dropdown-menu-right profile-dropdown" role="menu">
            <a href="<?php echo e(url('logout')); ?>" class="clearfix bg-master-lighter dropdown-item">
                <span class="pull-left">Logout</span>
                <span class="pull-right"><i class="pg-power"></i></span>
            </a>
        </div>
    </div>
</div>
<?php /**PATH D:\web_public\absensi\resources\views/components/layout/account.blade.php ENDPATH**/ ?>