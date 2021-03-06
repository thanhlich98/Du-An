<%-- 
    Document   : contact
    Created on : Nov 2, 2018, 9:59:23 AM
    Author     : ThanhLich
--%>


<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shoppers &mdash; Colorlib e-Commerce Template</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
        <link rel="stylesheet" href="../fonts/icomoon/style.css">

        <link rel="stylesheet" href="../css/bootstrap.min.css">
        <link rel="stylesheet" href="../css/magnific-popup.css">
        <link rel="stylesheet" href="../css/jquery-ui.css">
        <link rel="stylesheet" href="../css/owl.carousel.min.css">
        <link rel="stylesheet" href="../css/owl.theme.default.min.css">
        <link rel="stylesheet" href="../css/aos.css">
        <link rel="stylesheet" href="../css/style.css">
        <style>

            .easyPaginateNav{
                width: 100% !important;
                text-align: center;
            }
            .easyPaginateNav a {
                padding: 2vh 3vh 2vh 3vh;
                color: #727a7a;
                border: 1px solid #e9e9e9;
            }
            .easyPaginateNav a.current {
                font-weight:bold;
                background-color: #e9ecef; ;
                color: #0315ff;
            }
            .col-md-2 column productbox {
                background-color:#ffffff;
                padding:10px;
                margin-bottom:10px;
                -webkit-box-shadow: 0 8px 6px -6px  #999;
                -moz-box-shadow: 0 8px 6px -6px  #999;
                box-shadow: 0 8px 6px -6px #999;

            }

            .producttitle {
                font-weight:bold;
                padding:5px 0 5px 0;
            }

            .productprice {
                border-top:1px solid #dadada;
                padding-top:5px;
            }

            .pricetext {
                font-weight:bold;
                font-size:1.4em;
            }

        </style>
    </head>
    <body>
        <div class="site-wrap">
            <jsp:include page="header.jsp"/>
        </div>
        <div class="bg-light py-3">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 mb-0"><a href="../product/index.htm">Home</a> <span class="mx-2 mb-0">/</span> <strong class="text-black">Shop</strong></div>
                </div>
            </div>
        </div>
        <div class="site-section">
            <div class="container">

                <div class="row mb-5">
                    <div class="row">
                        <div class="col-md-12 mb-5">
                            <div class="float-md-left mb-4"><h2 class="text-black h5">Shop All</h2></div>
                            <div class="d-flex">
                                <div class="dropdown mr-1 ml-md-auto">
                                    <button type="button" class="btn btn-secondary btn-sm dropdown-toggle" id="dropdownMenuOffset" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Latest
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuOffset">
                                        <a class="dropdown-item" href="#">Men</a>
                                        <a class="dropdown-item" href="#">Women</a>
                                        <a class="dropdown-item" href="#">Children</a>
                                    </div>
                                </div>
                                <div class="btn-group">
                                    <button type="button" class="btn btn-secondary btn-sm dropdown-toggle" id="dropdownMenuReference" data-toggle="dropdown">Reference</button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuReference">
                                        <a class="dropdown-item" href="#">Relevance</a>
                                        <a class="dropdown-item" href="#">Name, A to Z</a>
                                        <a class="dropdown-item" href="#">Name, Z to A</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#">Price, low to high</a>
                                        <a class="dropdown-item" href="#">Price, high to low</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-9 order-2">



                        </div>
                        <div class="row mb-5">
                            <div class="col-md-9 order-2">
                                <div id="easyPaginate" class="row">
                                    <c:forEach var="items" items="${sessionScope.listProducts}">
                                        <div class="col-sm-6 col-lg-4 mb-4" data-aos="fade-up" >

                                            <div class="block-4 text-center border">
                                                <figure class="block-4-image">
                                                    <a href="<s:url value="../product_detail/${items.id}.htm"/>"><img src="../images/${items.image}" alt="Image placeholder" class="img-fluid" width="700px" height="700px"></a>
                                                </figure>
                                                <div class="block-4-text p-4">
                                                    <h3><a href="<s:url value="../product_detail/${items.id}.htm"/>">${items.name}</a></h3>
                                                    <p class="mb-0">${items.tag}</p>
                                                    <p class="text-primary font-weight-bold">${items.price}&#8363</p>
                                                    <a href="<s:url value="/cartbean/${items.id}.htm"/>">Add to cart</a>
                                                </div>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </div>
                            </div>
                            <div class="col-md-3 order-1 mb-5 mb-md-0">
                                <div class="border p-4 rounded mb-4">
                                    <h3 class="mb-3 h6 text-uppercase text-black d-block">Categories</h3>
                                    <ul class="list-unstyled mb-0">
                                        <li class="mb-1"><a href="#" class="d-flex"><span>Men</span> <span class="text-black ml-auto">(2,220)</span></a></li>
                                        <li class="mb-1"><a href="#" class="d-flex"><span>Women</span> <span class="text-black ml-auto">(2,550)</span></a></li>
                                        <li class="mb-1"><a href="#" class="d-flex"><span>Children</span> <span class="text-black ml-auto">(2,124)</span></a></li>
                                    </ul>
                                </div>

                                <div class="border p-4 rounded mb-4">
                                    <div class="mb-4">
                                        <h3 class="mb-3 h6 text-uppercase text-black d-block">Filter by Price</h3>
                                        <div id="slider-range" class="border-primary"></div>
                                        <input type="text" name="text" id="amount" class="form-control border-0 pl-0 bg-white" disabled="" />
                                    </div>
                                    <div class="mb-4">
                                        <h3 class="mb-3 h6 text-uppercase text-black d-block">Size</h3>
                                        <label for="s_sm" class="d-flex">
                                            <input type="checkbox" id="s_sm" class="mr-2 mt-1"> <span class="text-black">Small (2,319)</span>
                                        </label>
                                        <label for="s_md" class="d-flex">
                                            <input type="checkbox" id="s_md" class="mr-2 mt-1"> <span class="text-black">Medium (1,282)</span>
                                        </label>
                                        <label for="s_lg" class="d-flex">
                                            <input type="checkbox" id="s_lg" class="mr-2 mt-1"> <span class="text-black">Large (1,392)</span>
                                        </label>
                                    </div>
                                    <div class="mb-4">
                                        <h3 class="mb-3 h6 text-uppercase text-black d-block">Color</h3>
                                        <a href="#" class="d-flex color-item align-items-center" >
                                            <span class="bg-danger color d-inline-block rounded-circle mr-2"></span> <span class="text-black">Red (2,429)</span>
                                        </a>
                                        <a href="#" class="d-flex color-item align-items-center" >
                                            <span class="bg-success color d-inline-block rounded-circle mr-2"></span> <span class="text-black">Green (2,298)</span>
                                        </a>
                                        <a href="#" class="d-flex color-item align-items-center" >
                                            <span class="bg-info color d-inline-block rounded-circle mr-2"></span> <span class="text-black">Blue (1,075)</span>
                                        </a>
                                        <a href="#" class="d-flex color-item align-items-center" >
                                            <span class="bg-primary color d-inline-block rounded-circle mr-2"></span> <span class="text-black">Purple (1,075)</span>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
        <!--Pagination-->
        <script src="http://code.jquery.com/jquery-latest.js"></script>
        <script src="../js/jquery.easyPaginate.js"></script>
        <script>
            $('#easyPaginate').easyPaginate({
                paginateElement: 'div.mb-4',
                elementsPerPage: 6,
                effect: 'default'
            });
        </script>
        <script src="../js/jquery-3.3.1.min.js"></script>
        <script src="../js/jquery-ui.js"></script>
        <script src="../js/popper.min.js"></script>
        <script src="../js/bootstrap.min.js"></script>
        <script src="../js/owl.carousel.min.js"></script>
        <script src="../js/jquery.magnific-popup.min.js"></script>
        <script src="../js/aos.js"></script>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="../js/main.js"></script>
    </body>
</html>
