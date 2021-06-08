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
</head>

<body class="fixed-header ">
    <div class="login-wrapper ">
        <div class="bg-pic">
            <img src="https://simaster.ugm.ac.id/ugmfw-assets/images/bgs/1.jpg"
                data-src="https://simaster.ugm.ac.id/ugmfw-assets/images/bgs/1.jpg"
                data-src-retina="https://simaster.ugm.ac.id/ugmfw-assets/images/bgs/1.jpg" alt="" class="lazy">
            <div class="bg-caption pull-bottom sm-pull-bottom text-white p-l-20 m-b-20"
                style="background:rgba(36,66,68,.4)">
                <h4 class="bold text-white" style="opacity: 1">
                    ABSENSI UGM<br>
                    Sistem Absensi Terintegrasi <br>Universitas Gadjah Mada
                </h4>
            </div>
        </div>
        <div class="login-container bg-white">
            <div class="p-l-50 m-l-20 p-r-50 m-r-20 p-t-50 m-t-30 sm-p-l-15 sm-p-r-15 sm-p-t-40">
                <h3><b>ABSENSI </b> <br>UGM</h3>
                <form class="p-t-15" role="form" action="" method="post">
                    <?php echo csrf_field(); ?>
                    <?php if(session()->has('msg_error')): ?>
                        <div class="alert alert-danger"><?php echo session()->get('msg_error'); ?></div>
                    <?php endif; ?>
                    <div class="form-group form-group-default">
                        <label>Login</label>
                        <div class="controls">
                            <input type="text" name="username" placeholder="username" class="form-control" required>
                        </div>
                    </div>
                    <div class="form-group form-group-default">
                        <label>Password</label>
                        <div class="controls">
                            <input type="password" class="form-control" name="password" placeholder="password" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 no-padding sm-p-l-10">
                            <div class="checkbox ">
                                <input type="checkbox" name="remember_me" id="checkbox1">
                                <label for="checkbox1">Keep Me Signed in</label>
                            </div>
                        </div>
                    </div>
                    <button class="btn btn-primary btn-cons m-t-10" type="submit">Sign in</button>
                </form>
            </div>
        </div>
    </div>
</body>

</html>
<?php /**PATH D:\web_public\absensi\resources\views/login.blade.php ENDPATH**/ ?>