<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Biztime EduERP</title>
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,600" rel="stylesheet" type="text/css">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/leftmenu.css" rel="stylesheet" type="text/css">   
    <link rel="stylesheet" href="css/header.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/footer.css" type="text/css" media="screen" />

<!--	<link rel="stylesheet" href="css/bootstrap.css" type="text/css" media="screen" />-->
	

    <script type="text/javascript" src="js/jquery.left.js" charset="utf-8"></script> 
    <!-- <script type="text/javascript" src="js/nagging-menu.js" charset="utf-8"></script> -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="js/jquery.ssd-leftl-navigation.min.js"></script>
    <script src="js/leftmain.js"></script>

</head>

<body>
<form name="form1" method="post" action="">

<div id="contentWrapper">
<!--app.css-->
    <div id="contentLeft">
      <div>
<img src="img/Biztime_Logo.png" width="250" height="80">     </div>
     <!-- <div>
<img src="images/bizedu.png" width="250" height="50">
     </div>-->
        <ul id="leftNavigation">
     
            <li class="active">
                <a href="#"><i class="fa fa-coffee leftNavIcon"></i> Masters</a>
                <ul>
                    <li>
                        <a href="ad_department.html"><i class="fa fa-angle-right leftNavIcon"></i> Department</a>                    </li>
                    <li>
                        <a href="ad_course.html"><i class="fa fa-angle-right leftNavIcon"></i> Course </a>                    </li>
                      <li>
                        <a href="ad_subject.html"><i class="fa fa-angle-right leftNavIcon"></i> Subjects</a>                    </li>
                      <li>
                        <a href="ad_fees.html"><i class="fa fa-angle-right leftNavIcon"></i> Fees</a>                    </li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="fa fa-flask leftNavIcon"></i> Products</a>
                <ul>
                    <li>
                        <a href="#"><i class="fa fa-angle-right leftNavIcon"></i> Garden</a>                    </li>
                    <li>
                        <a href="#"><i class="fa fa-angle-right leftNavIcon"></i> Office</a>                    </li>
                    <li>
                        <a href="#"><i class="fa fa-angle-right leftNavIcon"></i> Home</a>                    </li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="fa fa-truck leftNavIcon"></i> Services</a>
                <ul>
                    <li>
                        <a href="#"><i class="fa fa-angle-right leftNavIcon"></i> Garden</a>                    </li>
                    <li>
                        <a href="#"><i class="fa fa-angle-right leftNavIcon"></i> Office</a>                    </li>
                    <li>
                        <a href="#"><i class="fa fa-angle-right leftNavIcon"></i> Home</a>                    </li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="fa fa-envelope-o leftNavIcon"></i> Contact us</a>
                <ul>
                    <li>
                        <a href="#"><i class="fa fa-angle-right leftNavIcon"></i> Find Us</a>                    </li>
                    <li>
                        <a href="#"><i class="fa fa-angle-right leftNavIcon"></i> Contact Details</a>                    </li>
                </ul>
            </li>
        </ul>
    </div>
<!--    <div id="menu" class="default">-->
	<div id="header" class="header">
<ul>
<li><a href="#">Current Academic Year</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Version </a></li>
				<li><a href="#">DashBroad</a></li>
				<li><a href="#">Options</a></li>
</ul>
</div>

  
  
  <div id="contentRight">

        <h1 id="heading">&nbsp;</h1>
      <h1>&nbsp;</h1>
        <h1>Department Details</h1>

		
		<table width="1000" border="3" cellspacing="5" cellpadding="5">
  <tr bgcolor="#FFFFFF">
    <td><strong>Sl No.</strong></td>
	 <td><strong>Department ID</strong></td>
     <td><strong>Department Name</strong></td>
	 <td><strong>Building Name</strong></td>
	 <td><strong>Location</strong></td>
	<td><strong>Action</strong></td>
  </tr>
  
   <c:forEach items="${DEPT}" var="dept">
  
  <tr>
  <td></td>
  
    <td><c:out value="${dept.dept_id}"/></td>
    <td><c:out value="${dept.departmentt_name}"/></td>
     <td><c:out value="${dept.building_name}"/></td>
	<td><c:out value="${dept.location}"/></td>
<td>     
    <a href="editdept.html?dept_id=${dept.dept_id}">Edit</a> | 
<a href="deletedept.html?dept_id=${dept.dept_id}">Delete</a></td>
</td>
  </tr>
</c:forEach>
</table>
        <p>&nbsp;</p>
        <p><a href="ad_add_department.html"><strong>Add</strong></a></p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
  </div>



<footer>
		<section id="footer">


					<aside class="footer-segment">
							<h4>Contact</h4>
                            <p>support@biztimeit.com</p>
					</aside><!-- end of #second footer segment -->

					<aside class="footer-segment">
							<h4>helpLine</h4>
								<p>080 - 41529697</p>
					</aside><!-- end of #third footer segment -->
					
					<aside class="footer-segment">
							<h4>blahblah</h4>
								<p>blahblahblah</p>
					</aside><!-- end of #fourth footer segment -->
                    
                    <aside class="footer-segment">
							<h4>CopyRight</h4>
							<p>2014-2018</p>
					</aside>
			</section><!-- end of footer-outer-block -->
		</section>
		<!-- end of footer-area -->
</footer>


</div>

</form>
</body>
</html>
