<table class="table table-striped table-bordered <?php if($datatable): ?> table-datatable <?php endif; ?>">
    <thead>
        <?php if($withAction): ?>
            <th width="50px">No</th>
            <th width="150px">Aksi</th>
        <?php endif; ?>
        <?php $__currentLoopData = $header; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $h): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <?php if(is_array($h)): ?>
                <th <?php echo e($h['param']); ?>><?php echo e($h['text']); ?></th>
            <?php else: ?>
                <th><?php echo e($h); ?></th>
            <?php endif; ?>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </thead>
    <tbody>
        <?php echo e($slot); ?>

    </tbody>
</table>
<?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.component.modal.delete','data' => []]); ?>
<?php $component->withName('component.modal.delete'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php /**PATH D:\web_public\absensi\resources\views/components/component/table.blade.php ENDPATH**/ ?>