<?php
function time_elapsed_string($ptime){
    $etime = time() - $ptime;

    if ($etime < 1)
    {
        return '0 seconds';
    }

    $a = array(365 * 24 * 60 * 60 => 'year',
        30 * 24 * 60 * 60 => 'month',
        24 * 60 * 60 => 'day',
        60 * 60 => 'hour',
        60 => 'minute',
        1 => 'second'
    );
    $a_plural = array('year' => 'years',
        'month' => 'months',
        'day' => 'days',
        'hour' => 'hours',
        'minute' => 'minutes',
        'second' => 'seconds'
    );

    foreach ($a as $secs => $str)
    {
        $d = $etime / $secs;
        if ($d >= 1)
        {
            $r = round($d);
            return $r . ' ' . ($r > 1 ? $a_plural[$str] : $str) . ' ago';
        }
    }
}

if(!empty($active_interview)){
    foreach($active_interview AS $interview){
        if($interview->jbid_id != " "){
            continue;
        }
        $a++;
    }
    if(count($active_interview) > 0){
        $declined = count($active_interview);
        $msg_declined = $declined." Declined Jobs";
    } else {
        $declined = count($active_interview);
        $msg_declined = "No Declined Jobs";
    }
}


if(!empty($active_offer)){
    $aoffer = 0;
    foreach($active_offer as $offer){
            $aoffer++;
    }
    $_offers = $aoffer;
    $msg_offers = $_offers." Pending Job Offers";
}else{
    $_offers = 0;
    $msg_offers = "No Pending Job Offers";
}

if(!empty($active_interview)){
    $a = 1;
    foreach($active_interview as $interview){
        if($interview->jbid_id !=""){
                continue;
        }
        $a++;
    }
    if($a != 1){
            $interview_cnt = $a;
            $msg = $a." Interview Available";
    } else {
            $interview_cnt = 0;
            $msg = "No Interview Available";
    }
}else{
    $interview_cnt = 0;
    $msg = "No Interview Available";
}

?>


<link rel="stylesheet" href="<?php echo base_url() ?>assets/css/rating.css" />

<section id="big_header" class="custom_declined_interview" style="margin-top: 40px; margin-bottom: 40px; height: auto;">

    <div class="container white-box-feed">
        <?php if ($this->session->flashdata('msg'))
        { ?>
            <div class="row alert alert-success"><?php echo $this->session->flashdata('msg'); ?></div>
<?php } ?>
        <div class="row">
            <div class="col-md-9 bottom-blue-border padding-2">
                <span><b>My Offers (<?= $_offers; ?>)</b></span>
            </div>
            <div class="col-md-9 text-center bordered-alert margin-top" style="background: rgb(240, 240, 240) none repeat scroll 0% 0%; padding: 10px 0px; width: 779px;">
               <?= $msg_offers  ?>
            </div>
        </div>
        <div class="row margin-top-15">
            <div class="col-md-2">
                <label>Applied Date</label>
            </div>

            <div style="margin-left: -38px;" class="col-md-8">
                <label>Job Title</label>
            </div>
        </div>

        <div class="row">
            <div class="col-md-9 margin-top-15">
                <?php foreach($active_offer as $offer){?>
                <div class="row">
                    <div class="col-md-12 custom_declined_list_border">
                        <div class="row">
                            <div class="col-md-2"><?php  echo date(' M j, Y ', strtotime($offer->bid_created)); ?></div>
                            <div class="col-md-10 blue-text">
                                <a href="<?php echo base_url() ?>jobs/accept_hourly?fmJob=<?php echo base64_encode($offer->job_id);?>"> 
                                 <?php echo $offer->title;?> 
                                 </a>
                            </div>
                        </div>

                         <div class="row margin-top-1">
                            <div class="col-md-2"><?php 
                            $timeDate = strtotime($offer->bid_created);
                            $dateInLocal = date("Y-m-d H:i:s", $timeDate);
                            
                            echo time_elapsed_string(strtotime($dateInLocal)); ?></div>
                            <div class="col-md-10 ">
                               <?php echo $offer->webuser_company;?>
                            </div>
                        </div>

                    </div>
                </div>
               <?php } ?>
            </div>
        </div>
            
		<div class="custom_interview_border"></div>
	
            
        <div class="row"  style="margin-top: 22px;">
            <div class="col-md-9 bottom-blue-border  padding-2">
                
                <span style="margin-right: 45px;"><a href="<?php echo site_url('Active_interview'); ?>"><b>Active Interview (<?= $interview_cnt ?>)</b></a></span>&nbsp <span><a href="<?php echo site_url('Active_interview/declined_interview'); ?>"><b>Declined (<?= $declined ?>)</b></a></span>

            </div>
            <div class="col-md-9 text-center bordered-alert margin-top" style="background: rgb(240, 240, 240) none repeat scroll 0% 0%; padding: 10px 0px; width: 779px;">
                <?= $msg_declined; ?>
            </div>
        </div>
        <div class="row margin-top-3">
            <div class="col-md-2 ">
                <label>Applied Date</label>
            </div>

            <div class="col-md-8">
                <label>Job Title</label>
            </div>
        </div>

        <div class="row">
            <div class="col-md-9 margin-top-15">
                <?php foreach($active_interview as $interview){
                  
                    
                    if($interview->jbid_id !=""){
                    ?>
                <div class="row">
                    <div class="col-md-12 custom_declined_list_border">
                        <div class="row">
                            <div class="col-md-2"><?php  echo date(' M j, Y ', strtotime($interview->bid_created)); ?></div>
                            <div class="col-md-10 blue-text">
                                <a href="<?php echo base_url() ?>Freelancerinvite?fmJob=<?php echo base64_encode($interview->job_id);?>"> <?php echo $interview->title;?></a>
                            </div>
                        </div>

                        <div class="row margin-top-1">
                            <div class="col-md-2"><?php echo time_elapsed_string(strtotime($interview->bid_created)); ?></div>
                            <div class="col-md-10 ">
                               <?php echo $interview->webuser_company;?><br>
                                <?php 
                                // added by jahid start 
                                if($interview->withdrawn_by == '2'){
                                    echo 'Declined by Client';
                                }else{
                                    echo 'Declined by you';
                                }
                                
                                
                                ?>
                            </div>
                        </div>

                    </div>
                </div>
                  <?php } } ?>
           
            </div>
        </div>

    </div>

</section>

</div>

</section>
<!-- big_header-->

<!-- <hr> -->

</div>

</section>

<script src="<?php echo base_url() ?>assets/js/dropzone.js"></script>
<script>

</script>