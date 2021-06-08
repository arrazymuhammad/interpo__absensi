<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta charset="utf-8" />
    <title>ABSENSI UGM</title>
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, shrink-to-fit=no" />
    <meta name="csrf-token" content="<?php echo e(csrf_token()); ?>">
    <meta content="ABSENSI UGM" name="description" />
    <meta content="Ar-Razy Muhammad" name="author" />
    <link href="https://simaster.ugm.ac.id/ugmfw-assets/images/favicon.ico" rel="shortcut icon">
    <link href="<?php echo e(url('/')); ?>/assets/plugins/pace/pace-theme-flash.css" rel="stylesheet" type="text/css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css" rel="stylesheet"
        type="text/css" />
    <link href="<?php echo e(url('/')); ?>/assets/plugins/font-awesome/css/font-awesome.css" rel="stylesheet"
        type="text/css" />
    <link href="<?php echo e(url('/')); ?>/assets/plugins/jquery-scrollbar/jquery.scrollbar.css" rel="stylesheet"
        type="text/css" media="screen" />
    <link href="<?php echo e(url('/')); ?>/assets/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css"
        media="screen" />
    <link href="<?php echo e(url('/')); ?>/assets/plugins/switchery/css/switchery.min.css" rel="stylesheet" type="text/css"
        media="screen" />
    <link href="<?php echo e(url('/')); ?>/pages/css/pages-icons.css" rel="stylesheet" type="text/css">
    <link class="main-stylesheet" href="<?php echo e(url('/')); ?>/pages/css/pages.css" rel="stylesheet" type="text/css" />
    <link class="main-stylesheet" href="<?php echo e(url('/')); ?>/assets/css/style.css" rel="stylesheet" type="text/css" />
    <?php echo $__env->yieldPushContent('style'); ?>
    <?php if($extendable('datatable')): ?>
        <link href="<?php echo e(url('https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css')); ?>"
            rel="stylesheet" type="text/css" />
    <?php endif; ?>
    <?php if($extendable('select2')): ?>
        <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
    <?php endif; ?>
</head>

<body class="fixed-header menu-behind menu-pin">
    <nav class="page-sidebar" data-pages="sidebar">
        <?php if (isset($component)) { $__componentOriginal5692a8a73324ab6947bf8c645fcb6fa70224d90e = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\Layout\Menu::class, []); ?>
<?php $component->withName('layout.menu'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php if (isset($__componentOriginal5692a8a73324ab6947bf8c645fcb6fa70224d90e)): ?>
<?php $component = $__componentOriginal5692a8a73324ab6947bf8c645fcb6fa70224d90e; ?>
<?php unset($__componentOriginal5692a8a73324ab6947bf8c645fcb6fa70224d90e); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
    </nav>
    <div class="page-container ">
        <div class="header">
            <a href="#" class="btn-link toggle-sidebar d-lg-none pg pg-menu" data-toggle="sidebar"></a>
            <div class="">
                <div class="brand inline" style="width: 250px; text-align: center; padding-left: 0;">
                    <h4>
                        ABSENSI UGM
                    </h4>
                </div>
            </div>
            <?php if (isset($component)) { $__componentOriginaldd2cf5905d1cad12744571c3104de06c9db48f23 = $component; } ?>
<?php $component = $__env->getContainer()->make(App\View\Components\Layout\Account::class, []); ?>
<?php $component->withName('layout.account'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php if (isset($__componentOriginaldd2cf5905d1cad12744571c3104de06c9db48f23)): ?>
<?php $component = $__componentOriginaldd2cf5905d1cad12744571c3104de06c9db48f23; ?>
<?php unset($__componentOriginaldd2cf5905d1cad12744571c3104de06c9db48f23); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
        </div>
        <div class="page-content-wrapper ">
            <div class="content">
                <div class="jumbotron sm-p-l-30 sm-p-r-30 xs-p-l-30" data-pages="parallax">
                    <div class="<?php echo e($container); ?>">
                        <div class="inner">
                            <h2><?php echo e($pageTitle); ?></h2>
                        </div>
                    </div>
                </div>
                <div class="<?php echo e($container); ?> container-fixed-lg">
                    <?php if (isset($component)) { $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4 = $component; } ?>
<?php $component = $__env->getContainer()->make(Illuminate\View\AnonymousComponent::class, ['view' => 'components.layout.flash-notification','data' => []]); ?>
<?php $component->withName('layout.flash-notification'); ?>
<?php if ($component->shouldRender()): ?>
<?php $__env->startComponent($component->resolveView(), $component->data()); ?>
<?php $component->withAttributes([]); ?>
<?php if (isset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4)): ?>
<?php $component = $__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4; ?>
<?php unset($__componentOriginalc254754b9d5db91d5165876f9d051922ca0066f4); ?>
<?php endif; ?>
<?php echo $__env->renderComponent(); ?>
<?php endif; ?>
                    <?php echo e($slot); ?>

                </div>
            </div>
            <div class="container-fluid container-fixed-lg footer">
                <div class="copyright sm-text-center">
                    <p class="small no-margin pull-left sm-pull-reset">
                        <span class="hint-text">All rights reserved.</span>
                    </p>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </div>
    <script src="<?php echo e(url('/')); ?>/assets/plugins/pace/pace.min.js" type="text/javascript"></script>
    <script src="<?php echo e(url('/')); ?>/assets/plugins/jquery/jquery-3.2.1.min.js" type="text/javascript"></script>
    <script src="<?php echo e(url('/')); ?>/assets/plugins/modernizr.custom.js" type="text/javascript"></script>
    <script src="<?php echo e(url('/')); ?>/assets/plugins/jquery-ui/jquery-ui.min.js" type="text/javascript"></script>
    <script src="<?php echo e(url('/')); ?>/assets/plugins/popper/umd/popper.min.js" type="text/javascript"></script>
    <script src="<?php echo e(url('/')); ?>/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="<?php echo e(url('/')); ?>/assets/plugins/jquery/jquery-easy.js" type="text/javascript"></script>
    <script src="<?php echo e(url('/')); ?>/assets/plugins/jquery-unveil/jquery.unveil.min.js" type="text/javascript">
    </script>
    <script src="<?php echo e(url('/')); ?>/assets/plugins/jquery-ios-list/jquery.ioslist.min.js" type="text/javascript">
    </script>
    <script src="<?php echo e(url('/')); ?>/assets/plugins/jquery-actual/jquery.actual.min.js"></script>
    <script src="<?php echo e(url('/')); ?>/assets/plugins/jquery-scrollbar/jquery.scrollbar.min.js"></script>
    <script src="<?php echo e(url('/')); ?>/assets/plugins/select2/js/select2.full.min.js"></script>
    <script src="<?php echo e(url('/')); ?>/assets/plugins/classie/classie.js"></script>
    <script src="<?php echo e(url('/')); ?>/assets/plugins/switchery/js/switchery.min.js" type="text/javascript"></script>
    <?php if($extendable('datatable')): ?>
        <script src="//cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>
        <script>
            $(".table-datatable").DataTable();

        </script>
    <?php endif; ?>
    <?php if($extendable('livewire')): ?> @livewireScripts  <?php endif; ?>
    <?php if($extendable('select2')): ?>
        <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    <?php endif; ?>
    <script src="<?php echo e(url('/')); ?>/pages/js/pages.js" defer></script>
    <script src="<?php echo e(url('/')); ?>/assets/js/laravel.js"></script>
    <script>
        const BASE_URL = "<?php echo e(url('/')); ?>";
        const CURRENT_URL = '<?php echo e(url()->current()); ?>'
        const CSRF_TOKEN = '<?php echo e(csrf_token()); ?>';

    </script>
    <script src="<?php echo e(url('/')); ?>/assets/js/script.js"></script>
    <?php echo $__env->yieldPushContent('script'); ?>
</body>

</html>
<?php /**PATH D:\web_public\absensi\resources\views/components/app.blade.php ENDPATH**/ ?>