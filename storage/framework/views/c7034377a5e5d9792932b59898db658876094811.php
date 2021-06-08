<div class="sidebar-header m-b-30">
    ABSENSI
</div>
<div class="sidebar-menu">
    <ul class="menu-items">
        <li class="<?php echo e($isActive(2, 'dashboard')); ?>">
            <a href="<?php echo e(url('admin/dashboard')); ?>">
                <span class="">DASHBOARD</span>
            </a>
            <span class="<?php echo e($isActiveIcon(2, 'dashboard')); ?>"><i class="fa fa-home"></i></span>
        </li>
        <?php if(auth()->user()->is_admin): ?>
            <li class="<?php echo e($isActive(2, 'kehadiran-perkuliahan')); ?>">
                <a href="<?php echo e(url('admin/kehadiran-perkuliahan')); ?>">
                    <span class="">Kehadiran Perkuliahan</span>
                </a>
                <span class="<?php echo e($isActiveIcon(2, 'kehadiran-perkuliahan')); ?>"><i class="fa fa-calendar"></i></span>
            </li>
            <li class="<?php echo e($isActive(2, 'sync')); ?>">
                <a href="<?php echo e(url('admin/sync')); ?>">
                    <span class="">Sinkronisasi Data</span>
                </a>
                <span class="<?php echo e($isActiveIcon(2, 'sync')); ?>"><i class="fa fa-refresh"></i></span>
            </li>
        <?php endif; ?>

        <?php if(auth()->user()->is_dosen): ?>
            <li class="<?php echo e($isActive(2, 'kehadiran-perkuliahan')); ?>">
                <a href="<?php echo e(url('dosen/kehadiran-perkuliahan')); ?>">
                    <span class="">Kehadiran Perkuliahan</span>
                </a>
                <span class="<?php echo e($isActiveIcon(2, 'kehadiran-perkuliahan')); ?>"><i class="fa fa-calendar"></i></span>
            </li>
        <?php endif; ?>
    </ul>
    <div class="clearfix"></div>
</div>
<?php /**PATH D:\web_public\absensi\resources\views/components/layout/menu/pegawai.blade.php ENDPATH**/ ?>