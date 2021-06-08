<?php if (isset($component)) { $__componentOriginal7bcb47133ab1e04b8b45962d47c0583745930df8 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\App::class, ['pageTitle' => 'Perkuliahan','extends' => 'datatable']); ?>
<?php $component->withName('app'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
    <?php if (isset($component)) { $__componentOriginalccf5220c6cd47014732b2e42c41a8cd4f04a9093 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\Component\Card::class, ['title' => 'Detail Kehadiran Perkuliahan '.e($kelas->nama).'']); ?>
<?php $component->withName('component.card'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
         <?php $__env->slot('actions'); ?> 
            <div class="btn-group">
                <a href="<?php echo e(url('admin/kehadiran-perkuliahan', $kelas->uuid)); ?>" class="btn btn-info"><i
                        class="fa fa-arrow-left"></i> Kembali </a>
            </div>
         <?php $__env->endSlot(); ?>
        <dl>
            <dt>Nama Mahasiswa</dt>
            <dd><?php echo e($peserta->mahasiswa->nama); ?></dd>
            <dt>Nama Matakuliah</dt>
            <dd><?php echo e($kelas->matakuliah->nama); ?></dd>
            <dt>Dosen Pengampu</dt>
            <dd><?php echo e($kelas->dosen->pegawai->nama_gelar); ?></dd>
            <dt>Jumlah Pertemuan</dt>
            <dd><?php echo e($kelas->pertemuan->count()); ?></dd>
            <dt>Persentase Kehadiran</dt>
            <dd><?php echo e($kelas->persentaseKehadiran($peserta->mahasiswa->uuid)); ?></dd>
        </dl>
     <?php if (isset($__componentOriginalccf5220c6cd47014732b2e42c41a8cd4f04a9093)): ?>
<?php $component = $__componentOriginalccf5220c6cd47014732b2e42c41a8cd4f04a9093; ?>
<?php unset($__componentOriginalccf5220c6cd47014732b2e42c41a8cd4f04a9093); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
    <?php if (isset($component)) { $__componentOriginalccf5220c6cd47014732b2e42c41a8cd4f04a9093 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\Component\Card::class, ['title' => 'Peseta Kelas']); ?>
<?php $component->withName('component.card'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
         <?php $__env->slot('actions'); ?> 

         <?php $__env->endSlot(); ?>
        <?php if (isset($component)) { $__componentOriginal7e1994348a691ae5a4f043c6175b4e1daeb32c99 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\Component\Table::class, ['header' => 'No|Tanggal|Pertemuan Ke|Status','noAction' => true]); ?>
<?php $component->withName('component.table'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
            <?php $__currentLoopData = $list_pertemuan->sortBy('pertemuan_ke'); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pertemuan): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                <tr>
                    <td><?php echo e($loop->iteration); ?></td>
                    <td><?php echo e($pertemuan->tanggal_pelaksanaan_string); ?></td>
                    <td><?php echo e($pertemuan->pertemuan_ke); ?></td>
                    <td><?php echo $pertemuan->checkStatus($peserta->mahasiswa->uuid); ?></td>
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
<?php /**PATH D:\web_public\absensi\resources\views/admin/kelas/detail-kehadiran.blade.php ENDPATH**/ ?>