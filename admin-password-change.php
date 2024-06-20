<?php

require 'authentication.php'; 

$user_id = $_SESSION['admin_id'];
$user_name = $_SESSION['name'];
$security_key = $_SESSION['security_key'];
if ($user_id == NULL || $security_key == NULL) {
    header('Location: index.php');
}

$user_role = $_SESSION['user_role'];


$admin_id = $_GET['admin_id'];
if(isset($_POST['btn_admin_password'])){
    $error = $obj_admin->admin_password_change($_POST,$admin_id);
}

             
$page_name="Admin";
include("include/sidebar.php");


?>



<script>
function validate(admin_new_password, admin_cnew_password) {
    var a = document.getElementById(admin_new_password).value;
    var b = document.getElementById(admin_cnew_password).value;
    if (a != b) {
        alert("Passwords do not match");

    }
    return false;
}
</script>




<div class="row">
    <div class="col-md-12">
        <div class="well well-custom">
            <ul class="nav nav-tabs nav-justified nav-tabs-custom">
                <li class="active"><a href="manage-admin.php">Manage Admin</a></li>
                <li><a href="admin-manage-user.php">Manage User</a></li>
            </ul>
            <div class="gap"></div>
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="well">
                        <h3 class="text-center bg-primary">Admin - Change Password</h3><br>


                        <div class="row">
                            <div class="col-md-8 col-md-offset-2">

                                <?php 

                        if(isset($error)){
                          ?>
                                <div class="alert alert-danger">
                                    <strong>Oopps!!</strong> <?php echo $error; ?>
                                </div>
                                <?php
                          
                        }
                        ?>


                             