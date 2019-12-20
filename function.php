	<?php
    function dispcategories() 
    {
		include ('config.php');
        $select = mysqli_query($con, "SELECT * FROM tbl_category");
        while ($row = mysqli_fetch_assoc($select)) 
        {
			echo "<div class='card'>";
            echo "<div class='card-header'>".$row['cat_Name']."</div>";
            dispsubcategories($row['id']);
        }
    }
	
    function dispsubcategories($parent_id) 
    {
        include ('config.php');
        // $defaultSubId=getlowestsubcat_id($parent_id);
        // $sql = mysqli_query($con,"select id,sub_cat from tbl_subcat where cat_id = ".$parent_id." group by cat_id");
        // while($row = mysqli_fetch_assoc($sql))
        // {
        //     echo "<ul class='list-group' >";
        //     echo "<li class='list-group-item'
        //      ><a" ;
        //     if(($row['id']==$defaultSubId)) 
        //     {
        //     }
        //     else
        //      {
        //          echo "class='not-active'";
        //       } 
        //         echo " href='http://www.google.com'>".$row['sub_cat']."</a></li></ul>";
        // }

        $select = mysqli_query($con, "SELECT t1.subcat_id as sub_id,t2.sub_cat as sub_cat FROM tbl_result AS t1 INNER JOIN tbl_subcat AS t2 WHERE t2.cat_id=".$parent_id." and t1.cat_id=".$parent_id." AND t1.subcat_id=t2.id AND t1.percentage>=0 group by t1.subcat_id");
        while ($row = mysqli_fetch_assoc($select)) 
        {
            $con_value=getnumcontents($parent_id, $row['sub_id']);
            $target_num_contents = number_format($con_value);
            $students_finished_contents=getcontentspercentage($parent_id, $row['sub_id']);
            $defaultSubId=getlowestsubcat_id($parent_id);
		    echo "<ul class='list-group' >";
		    echo "<li class='list-group-item'
             ><a" ;
             if( $students_finished_contents>=$target_num_contents) //$row['sub_id']==$defaultSubId) ||
            {
                   
            }
            else
            {
                echo "class='not-active'";
            } 
            echo " href='http://www.google.com'>".$row['sub_cat']."</a></li></ul>";
        }
    }
    
    function getnumcontents($cat_id, $subcat_id)
     {
		include ('config.php');
		$select = mysqli_query($con, "SELECT cat_id, subcat_id FROM tbl_contents WHERE ".$cat_id." = cat_id AND ".$subcat_id." = subcat_id");
        return mysqli_num_rows($select)/2;
    }

    function getcontentspercentage($cat_id, $subcat_id) {
        include ('config.php');
        $select = mysqli_query($con, "SELECT percentage FROM tbl_result WHERE ".$cat_id." = cat_id AND ".$subcat_id." = subcat_id AND percentage>=0 ");
        return mysqli_num_rows($select);
    }
    
    function getlowestsubcat_id($parent_id) 
    {
        include ('config.php');
        $select = mysqli_query($con, "SELECT Min(id) As `lowest`,sub_cat FROM tbl_subcat where tbl_subcat.cat_id = ".$parent_id );
        //$defaultSubId = [];
        while ($row = mysqli_fetch_assoc($select)) 
        {
            return $row['lowest'];
        }
        return 0;
    }
    


    