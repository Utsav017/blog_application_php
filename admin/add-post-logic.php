<?php
require 'config/database.php';
if (isset($_POST['submit'])) {
    $author_id = $_SESSION['user-id'];
    $title = filter_var($_POST['title'],  FILTER_SANITIZE_SPECIAL_CHARS);
    $body = filter_var($_POST['body'],  FILTER_SANITIZE_SPECIAL_CHARS);
    $category_id = filter_var($_POST['category'],  FILTER_SANITIZE_NUMBER_INT);
    $is_featured = filter_var($_POST['is_featured'],  FILTER_SANITIZE_NUMBER_INT);
    $thumbnail = $_FILES['thumbnail'];
    //set is_featured to 0 if unchecked
    $is_featured = $is_featured == 1 ?: 0;
    //validate form data
    if (!$title) {
        $_SESSION['add-post'] = "Enter post title";
    } elseif (!$category_id) {
        $_SESSION['add-post'] = "Select post category";
    } elseif (!$body) {
        $_SESSION['add-post'] = "Enter post body";
    } elseif (!$thumbnail['name']) {
        $_SESSION['add-post'] = "Choose post thumbnail";
    } else {
        //work on thumbnail
        //rename avatar to persist on DB
        $time = time(); //name need unique using current timestamp
        $thumbnail_name = $time . $thumbnail['name'];
        $thumbnail_tmp_name = $thumbnail['tmp_name'];
        $thumbnail_destination_path = '../images/' . $thumbnail_name;
        //check file is image
        $allowed_files = ['png', 'jpg', 'jpeg'];
        $extention = explode('.', $thumbnail_name);
        $extention  = end($extention);
        if (in_array($extention, $allowed_files)) {
            //check limited size of images
            if ($thumbnail['size'] < 2000000) {
                //upload
                move_uploaded_file($thumbnail_tmp_name, $thumbnail_destination_path);
            } else {
                $_SESSION['signup'] = "File size too long, Should be less than 2MB";
            }
        } else {
            $_SESSION['signup'] = "File should be png, jpg, jpeg";
        }
    }
    //redirect back (with form data) to add-post page if there is any problem
    if (isset($_SESSION['add-post'])) {
        //pass form data back to sign up page
        $_SESSION['add-post-data'] = $_POST;
        header('location: ' . ROOT_URL . 'admin/add-post.php');
        die();
    } else {
        if ($is_featured == 1) {
            $zero_all_is_featured_query = "UPDATE posts SET is_featured=0";
            $zero_all_is_featured_result = mysqli_query($connection, $zero_all_is_featured_query);
        }
        //Insert post into DB
        $query = "INSERT INTO posts (title, body, thumbnail, category_id, author_id, is_featured) VALUES ('$title', '$body', '$thumbnail_name', $category_id, $author_id, $is_featured)";
        $result = mysqli_query($connection, $query);
        if (!mysqli_errno($connection)) {
            $_SESSION['add-post-success'] = "New post added successfully.";
            header('location: ' . ROOT_URL . 'admin/');
            die();
        }
    }
}
header('location: ' . ROOT_URL . 'admin/add-post.php');
die();
