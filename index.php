<?php

require 'authentication.php'; 


if(isset($_SESSION['admin_id'])){
  $user_id = $_SESSION['admin_id'];
  $user_name = $_SESSION['admin_name'];
  $security_key = $_SESSION['security_key'];
  if ($user_id != NULL && $security_key != NULL) {
    header('Location: task-info.php');
  }
}


if(isset($_POST['login_btn'])){
 $info = $obj_admin->admin_login_check($_POST);
}

$page_name="Login";
include("include/login_header.php");

?>

<div class="row">
    <div class="col-md-5 col-md-offset-3">
        <div class="well" style="position:relative;top:20vh;">
            <center>
                <h3 style="margin-top:1px;"> Student Task Management System</h3>
            </center>
            <br>
            <form class="form-horizontal form-custom-login" action="" method="POST">
                

                
                <?php if(isset($info)){ ?>
                <h5 class="alert alert-danger"><?php echo $info; ?></h5>
                <?php } ?>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Username" name="username" required />
                </div>
                <div class="form-group" ng-class="{'has-error': loginForm.password.$invalid && loginForm.password.$dirty, 'has-success': loginForm.password.$valid}">
                    <input type="password" class="form-control" placeholder="Password" name="admin_password" required />
                </div>
                <div style="display: flex; justify-content: center; align-items: center; ">
        <button type="submit" name="login_btn" class="btn btn-info">Login</button>
    </div>
            </form>


        </div>

    </div>

</div>


