<?php
$Conversation = new Conversation();
$notification = $Conversation->index();
$notification_details = $Conversation->details();
$job_alert_count = $Conversation->job_alert();


$freelancerend = $Conversation->freelancerend();
$clientend = $Conversation->clientend();
?></head>
<body  ng-app="app" ng-controller="Ctrl">
    <section class="container-fluid top_header "> 
        <nav class="navbar navbar-default">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
<?php
if ($this->session->userdata('type') == '1') {
    ?>
                        <a class="navbar-brand" href="<?php echo site_url('jobs-home'); ?>">WINJOB</a>
                    <?php
                    } else if ($this->session->userdata('type') == '2') {
                        ?>
                        <a class="navbar-brand" href="<?php echo site_url('find-jobs'); ?>">WINJOB</a>
                    <?php } else {
                        ?>
                        <a class="navbar-brand" href="<?php echo site_url(); ?>">WINJOB</a>
                    <?php } ?>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
<?php
if ($this->session->userdata('loggedx')) {
    if ($this->session->userdata('type') == '1') {
        ?>
                                <li><a href="<?php echo site_url('jobs-home'); ?>"><i class="fa fa-briefcase" aria-hidden="true"></i> Hire </a></li>
                                <li><a href="<?php echo site_url('jobs/mystaff'); ?>">  <img src="/assets/img/version1/cup.png"  style="height:20px; width:10px; margin-top:0px;"/> My Freelancers  </a></li> 
                                <li><a href="<?php echo site_url('pay/clientpay'); ?>"><i class="fa fa-cc-discover" aria-hidden="true"></i>  Pay </a></li>

    <?php } else if ($this->session->userdata('type') == '2') { ?>
                                <li><a href="<?php echo site_url('find-jobs'); ?>"><i class="fa fa-briefcase" aria-hidden="true"></i> Find Job  </a></li>
                                <li><a href="<?php echo site_url('winsjob'); ?>">  <img src="/assets/img/version1/cup.png"  style="height:20px; width:10px; margin-top:0px;"/> Win Jobs  </a></li> 
                                <li><a href="<?php echo site_url('pay/freelancerbalance'); ?>"><i class="fa fa-cc-discover" aria-hidden="true"></i>  Balance </a></li>

    <?php } ?>
    <?php
} else {
    ?>
                            <li><a href="#">Hire Freelancers </a></li>
                            <li><a href="#"> How it Works</a></li>
                            <li><a href="#">  Find Jobs</a></li>
                        <?php } ?>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
<?php
if ($this->session->userdata('loggedx')) {
    ?>

                            <li>
                                <a href="<?php echo site_url("messageboard"); ?>	" class="show_notification" <?php if ($notification) { ?>style="color: #e84c3d !important;"<?php } ?>>
                            <?php if ($notification) { ?><span style="color: #e84c3d;padding: 0 5px;"><?= $notification ?></span><?php } ?><i class="fa fa-envelope-o " aria-hidden="true"></i>
                                </a>

    <?php
    if ($notification_details) {
        echo '<div class="notification" style="display: none;" >';
        foreach ($notification_details as $data) {
            ?>		
                                        <p class="noti-block">
                                            <a href="/messageboard?bid_id=<?= base64_encode($data->bid_id) ?>">
                                                <span class="name">
                                        <?php if (($data->webuser_picture) == "") { ?>
                                                        <img src="<?php echo site_url("assets/user.png"); ?>">
            <?php } else { ?>
                                                        <img src="<?php echo base_url() ?><?php echo $data->webuser_picture; ?>">
                                                    <?php } ?>
                                                    <?= $data->webuser_fname ?> <?= $data->webuser_lname ?>
                                                </span>
                                                <span class="details"><?= substr($data->message_conversation, 0, 80) ?>...</span>
                                            </a>
                                        </p>	


            <?php
        }
        echo '</div>';
    }
    ?>


                            </li>
                            <script>
                            //$(document).ready(function(){
                            //    $(".show_notification").mouseenter(function(){
                            //        $(".notification").slideDown( "slow" );
                            //    });
                            //	$(".show_notification").mouseleave(function(){
                            //        $(".notification").slideUp( "slow" );
                            //    });
                            //});

                            //$(document).mouseup(function (e)
                            //{
                            //    var container = $(".notification");

                            //    if (!container.is(e.target) 
                            //        && container.has(e.target).length === 0)
                            //    {
                            //        container.hide();
                            //    }
                            //});
                            </script>
                            <style>
                                .notification {
                                    background: #35adda none repeat scroll 0 0;
                                    color: #fff;
                                    height: auto;
                                    left: -6px;
                                    min-width: 250px;
                                    padding: 10px;
                                    position: absolute;
                                    top: 110px;
                                    width: 100%;
                                    z-index: 99999;
                                }

                                .notification p.noti-block {
                                    background-color: rgba(0, 0, 0, 0.18);
                                    padding: 6px;
                                }
                                .notification p span.details {
                                    display: block;
                                    color: #fff;
                                    font-size: 13px;
                                }
                                .notification p span.name {
                                    display: block;
                                    text-transform: capitalize;
                                    color: #fff;
                                }
                                .notification p span.name img {
                                    width: 28px;
                                    margin-bottom: 3px;
                                    border-radius: 50%;
                                }
                                .notification p.noti-block a {
                                    text-decoration: none;
                                }
                            </style>

    <?php
    $user_id = $this->session->userdata('id');
    $this->db->select('*');
    $this->db->from('notification'); 
    $this->db->where('user_id', $user_id);
    $this->db->where('read_status', 0);
    $query = $this->db->get();
    $result = $query->result();
   // var_dump($result);die();
    $notif_count = count($result);
    ?>
                            <li>    <a href="javascript:void(0);" data-toggle="dropdown"> <i class="fa fa-bell-o" aria-hidden="true" ></i> </a><div class="<?php if($notif_count>0){echo 'notif-alert';}?>"><span><?php if($notif_count>0){echo $notif_count;}?></span></div>
                                <ul class="dropdown-menu notif-dropdown">
                                    <?php
                                    if($notif_count > 0){
                                    foreach($result as $notif){ 
                                    ?>
                                    <li><a href="<?php echo site_url('notification/check/'.$notif->id_notification); ?>"><?php echo $notif->description; ?></a></li> 
                                    <?php
                                    }
                                    }else{
                                        echo "<li>You have no notification</li>";
                                    }
                                    ?>
                                    
                                </ul>
                            </li>
                            <li><a href="javascript:void(0);" data-toggle="dropdown"> HI <?php echo strtoupper($this->session->userdata('fname')); ?> <i class="fa fa-caret-down" aria-hidden="true" ></i></a>
                                <ul class="dropdown-menu">
    <?php if ($this->session->userdata('type') == '2') { ?>
                                        <li><a href="<?php echo site_url("profile-settings") ?>">My Profile</a></li>
    <?php } ?>
                                    <li><a href="<?php echo site_url("profile-settings") ?>">Settings</a></li>
                                    <li><a href="<?php echo site_url("logout/") ?>">Logout</a></li>
                                </ul>
                            </li>

                                    <?php
                                } else {
                                    ?>
                            <li><a href="<?php echo site_url("signin/") ?>">Log In</a></li>
                            <li><a href="<?php echo site_url("signup/") ?>">Sign Up</a></li>
<?php }
?>
                    </ul>

                </div><!-- /.navbar-collapse -->
            </div><!-- /.container-fluid -->
        </nav>
    </section><!-- top_header-->
<?php
if ($this->session->userdata('loggedx')) {
    if ($this->session->userdata('type') == '1') {
        ?>
            <div id="next_header">
                <div class="container">
                    <div class="row"> 
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="menu">
                                <ul>  
                                    <li><a href="<?php echo site_url("post-job/") ?>" class="current">Post a Job</a></li>      
                                    <li><a href="<?php echo site_url("jobs/activecontracts") ?>"> My Contracts </a></li>			
                                    <li><a href="#"> Work History</a></li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>    
        <?php
    } else if ($this->session->userdata('type') == '2') {
        
        $user_id = $this->session->userdata('id');
       // var_dump($user_id);die();
        $this->db->select('*');
        $this->db->from('webuser');
        $this->db->where('webuser.webuser_id',$user_id); 
        $query= $this->db->get();
        $webuser = $query->row();
        
      //  var_dump($query);die();
        
        
        ?>
            <div id="next_header">
                <div class="container">
                    <div class="row"> 
                        <div class="col-xs-12 col-sm-12 col-md-12">
                            <div class="menu">
                                <ul>  
                                    <li><a class="first-menu" href="<?php echo site_url('find-jobs'); ?>" class="current"> Find Jobs  </a></li>      
                                    <li><a href="<?php echo site_url('profile/'.$webuser->webuser_username); ?>"> My Profile </a></li>			
                                    <li><a href="<?php echo site_url('jobs/bids_list'); ?>"> My Bids</a></li>
                                    <li><a href="<?php echo site_url('withdraw'); ?>"> Withdraw</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>   
    <?php }
    ?>

<?php }
?>
    <section class="main_area"  id="mid_contant"  >
<?php
if ($this->session->userdata('loggedx')) {
    ?>

<?php }
?>
        <div class="container">
