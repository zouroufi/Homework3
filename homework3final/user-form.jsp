<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Product</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Main CSS-->
  <link href="/css/main.css" rel="stylesheet" type="text/css" media="all">
  
</head>

<body>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Registrer Product</h2>
                    <c:if test="${product != null}">
			<form action="update" method="post">
        </c:if>
        <c:if test="${product == null}">
			<form action="insert" method="post">
        </c:if>
                    <form action="insert"" method="post">
						<div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Barcode</label>
                                    <input class="input--style-4" type="text" name="pbar" required size="45"
                						value="<c:out value='${product.pbar}' />"
                						/>
                                </div>
                            </div>
							 <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Name</label>
                                    <input class="input--style-4" type="text" name="pname" required size="45"
                						value="<c:out value='${product.pname}' />"
                						/>

                                </div>
                            </div>
							</div>
							<div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Color</label>
                                    <input class="input--style-4" type="text" name="pcolor" required size="45"
                						value="<c:out value='${product.pcolor}' />"
                						/>
                                </div>
                            </div>


                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Description</label>
                                    <div class="input-group-icon">
                                        <input class="input--style-4" type="text" name="pdesc" required size="15"
                							value="<c:out value='${product.pdesc}' />"
                							/>
                                    </div>
                                </div>
                            </div>
							</div>
                        <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="submit">Submit</button>
							
                        </div>
                    </form>
					<br>
					<a class="btn btn--radius-2 btn--blue" href="list" role="button" align="right">List Products</a>
                </div>
            </div>
        </div>
    </div>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->
