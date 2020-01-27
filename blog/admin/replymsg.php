<?php  include("inc/header.php");?>
<?php include ("inc/sidebar.php");?>

    <?php

    if (!isset($_GET['msgid']) || $_GET['msgid'] == NULL) {
        echo "<script>window.location='inbox.php'</script>";
       // header("Location:catlist.php");
    }else{
        $id = $_GET['msgid'];
    }

    ?>
        <div class="grid_10">
		
            <div class="box round first grid">
                <h2>View Message</h2>
                 <div class="block"> 

                <?php

            if ($_SERVER['REQUEST_METHOD']== 'POST') {
                $to = $fm->validation($_POST['toEmail']);
                $from = $fm->validation($_POST['fromEmail']);
                $subject = $fm->validation($_POST['subject']);
                $message = $fm->validation($_POST['message']);

                $sendmail = mail($to, $subject, $message,$from);
                if ($sendmail) {
                    echo "<span class='success'>Message Send Successfully.
             </span>";
                }else{
                    echo "<span class='error'>Something went Wrong!</span>";
                }
            }
        ?>              
                 <form action="" method="post">

                    <?php 
                        $query = "SELECT * FROM tbl_contact where id = '$id'";
                        $msg = $db->select($query);
                        if ($msg) {
                            while ($result = $msg->fetch_assoc()) {
                        ?>

                    <table class="form"> 
                       
                        <tr>
                            <td>
                                <label>Email</label>
                            </td>
                            <td>
                                <input type="text" readonly name="toEmail" value="<?php echo $result['email'];?>" class="medium" />
                            </td>
                        </tr>
                         <tr>
                            <td>
                                <label>Email</label>
                            </td>
                            <td>
                                <input type="text" name="fromEmail" placeholder="Please Emter Your Email address" class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Subject</label>
                            </td>
                            <td>
                                <input type="text" name="subject" placeholder="Please Emter Your subject" class="medium" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>Message</label>
                            </td>
                            <td>
                                <textarea  name="message" class="tinymce" ></textarea>
                            </td>
                        </tr>  
						<tr>
                            <td></td>
                            <td>
                                <input type="submit" name="submit" Value="Reply" />
                            </td>
                        </tr>
                    </table>
                    <?php } } ?>
                    </form>
                </div>
            </div>
        </div>
        <div class="clear">
        </div>
    </div>
      <script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            setupTinyMCE();
            setDatePicker('date-picker');
            $('input[type="checkbox"]').fancybutton();
            $('input[type="radio"]').fancybutton();
        });
    </script>

   <?php  include("inc/footer.php");?>