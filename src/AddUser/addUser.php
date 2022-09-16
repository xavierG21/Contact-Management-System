<?php

// Authentication
session_start();
require_once("./../contactHandler.php");
require_once("./../db_models.php");

$contactManager = new ContactManager();
if(isset($_POST['firstName']) && isset($_POST['lastName'])
    && isset($_POST['email']) && isset($_POST['password'])) {

    $contact = new Contact;
    $contact->firstName      = $_POST['firstName'];
    $contact->lastName       = $_POST['lastName'];
    $contact->emailAddress   = $_POST['email'];
    
    if( ($_POST['password']) == ($_POST['confirmpassword'])){
    $contact->password       = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $contact->confirmpassword       = password_hash($_POST['confirmpassword'], PASSWORD_DEFAULT);
    
    $contactManager->saveUser($contact);
    //echo $contact->password;
    header("Location: ./../Login/login.php");
    //header("Location: ./../allContacts/allContacts.php");
    //exit();
    //echo "atay!";
    }else{
    echo "not the same password!";    
    }
} 
?>

<!DOCTYPE html>
<html>
	<head>
		<title>Contact Manager</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	</head>
	<body>

    <div class="ms-auto me-auto" style="min-width: 300px; max-width: 500px">
        <div class="mx-4">

            <div class="my-4">
                <h1>Registration</h1>
            </div>

            <form action="addUser.php" method="post">
                    <div class="form-group mt-2">
                        <label class="form-label" for="firstName">First Name</label>
                        <input class="form-control" type="text" name="firstName" maxlength=100 required>
                    </div>

                    <div class="form-group mt-2">
                        <label class="form-label" for="lastName">Last Name</label>
                        <input class="form-control" type="text" name="lastName" maxlength=100 required>
                    </div>

                    <div class="form-group mt-2">
                        <label class="form-label" for="email">Email</label>
                        <input class="form-control" type="email" name="email" maxlength=255 required>
                    </div>

                    
                    <div class="form-group mt-2">
                        <label class="form-label" for="password">Password</label>
                        <input class="form-control" type="password" name="password" maxlength=100 required>
                    </div>

                    <div class="form-group mt-2">
                        <label class="form-label" for="confirmpassword">Confirm Password</label>
                        <input class="form-control" type="password" name="confirmpassword" maxlength=100 required>
                    </div>


                    <div class="form-group my-3">
                        <input class="btn btn-success" type="submit" value="Submit">
                        <a class="btn btn-danger" href="./../Login/login.php">Cancel</a>
                    </div>
                </form>
            </div>
        </div>  
    </body>
</html>