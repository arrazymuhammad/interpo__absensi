<div class="card card-<?php echo e($type); ?>">
    <div class="card-header">
        <div class="float-right" style="margin-top:-10px">
            <div class="btn-group">
                <?php if($createTitle): ?>
                    <a href="<?php echo e(url($createUrl)); ?>" class="btn btn-info"><i class="fa fa-plus"></i>
                        <?php echo e($createTitle); ?>

                    </a>
                <?php endif; ?>
                <?php echo e($actions); ?>

            </div>
        </div>
        <div class="card-title">
            <?php echo e($title); ?>

        </div>
    </div>
    <hr>
    <div class="card-body">
        <?php echo e($slot); ?>

    </div>
</div>
<?php /**PATH D:\web_public\absensi\resources\views/components/component/card.blade.php ENDPATH**/ ?>