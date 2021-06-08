<?php if (isset($component)) { $__componentOriginal7bcb47133ab1e04b8b45962d47c0583745930df8 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\App::class, ['pageTitle' => 'Kelas Perkuliahan']); ?>
<?php $component->withName('app'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
    <?php if (isset($component)) { $__componentOriginalccf5220c6cd47014732b2e42c41a8cd4f04a9093 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\Component\Card::class, ['title' => 'Kelas Perkuliahan']); ?>
<?php $component->withName('component.card'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
         <?php $__env->slot('actions'); ?> 
            <a href="<?php echo e(url('admin/kehadiran-perkuliahan/klaim-presensi')); ?>" class="btn btn-info">
                <i class="fa fa-calendar"></i> Daftar Klaim Presensi
            </a>
         <?php $__env->endSlot(); ?>
        <?php if (isset($component)) { $__componentOriginal7e1994348a691ae5a4f043c6175b4e1daeb32c99 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\Component\Table::class, ['header' => 'No|Aksi{width=90px}|Nama Kelas|Nama Dosen|Jumlah Mahasiswa|Jumlah Pertemuan','noAction' => true]); ?>
<?php $component->withName('component.table'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
            <?php $__currentLoopData = $list_kelas; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $kelas): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                    <td><?php echo e($loop->iteration); ?></td>
                    <td>
                        <a href="<?php echo e(url('admin/kehadiran-perkuliahan', $kelas->uuid)); ?>" class="btn btn-info">
                            <i class="fa fa-info"></i> Detail
                        </a>
                    </td>
                    <td><?php echo e($kelas->matakuliah->nama); ?></td>
                    <td><?php echo e($kelas->dosen->pegawai->nama_gelar); ?></td>
                    <td class="text-center"><?php echo e($kelas->peserta_count); ?></td>
                    <td class="text-center"><?php echo e($kelas->pertemuan_count); ?></td>
                </tr>
            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
         <?php if (isset($__componentOriginal7e1994348a691ae5a4f043c6175b4e1daeb32c99)): ?>
<?php $component = $__componentOriginal7e1994348a691ae5a4f043c6175b4e1daeb32c99; ?>
<?php unset($__componentOriginal7e1994348a691ae5a4f043c6175b4e1daeb32c99); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
     <?php if (isset($__componentOriginalccf5220c6cd47014732b2e42c41a8cd4f04a9093)): ?>
<?php $component = $__componentOriginalccf5220c6cd47014732b2e42c41a8cd4f04a9093; ?>
<?php unset($__componentOriginalccf5220c6cd47014732b2e42c41a8cd4f04a9093); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
 <?php if (isset($__componentOriginal7bcb47133ab1e04b8b45962d47c0583745930df8)): ?>
<?php $component = $__componentOriginal7bcb47133ab1e04b8b45962d47c0583745930df8; ?>
<?php unset($__componentOriginal7bcb47133ab1e04b8b45962d47c0583745930df8); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
<?php /**PATH D:\web_public\absensi\resources\views/admin/kelas/index.blade.php ENDPATH**/ ?>