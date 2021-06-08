<?php $__currentLoopData = ['success', 'warning', 'danger', 'info']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $class): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <?php if($message = Session::get($class)): ?>
        <div class="alert alert-<?php echo e($class); ?> alert-block">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <strong><?php echo e($message); ?></strong>
        </div>
    <?php endif; ?>
<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
<?php /**PATH D:\web_public\absensi\resources\views/components/layout/flash-notification.blade.php ENDPATH**/ ?>