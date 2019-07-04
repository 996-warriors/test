<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="productList.Product" %>
<%@ page import="productList.sql" %>
<%@ page import="java.sql.*" %>

<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <title>welcome to cashier page</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!--
Ramayana CSS Template
https://templatemo.com/tm-529-ramayana
-->

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-style.css">
    <link rel="stylesheet" href="assets/css/owl.css">

  </head>

<body class="is-preload">

    <!-- Wrapper -->
    <div id="wrapper">

      <!-- Main -->
        <div id="main">
          <div class="inner">

            <!-- Header -->
            <header id="header">
              <div class="logo">
                <a href="header.jsp">ZYHD</a>
              </div>
            </header>
            
            <!-- Tables -->
            <section class="tables">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-md-12">
                    <div class="default-table">
                      <table>
                        <thead>
                          <tr>
                            <th>名称</th>                            
                            <th>类别</th>
                            <th>描述</th>
                            <th>数量</th>
                            <th>价格</th>
                            
                          </tr>
                        </thead>
                         <%
                     //获取商品集合
                     List<Product> list = (List<Product>)request.getAttribute("list");
                         //判断集合是否有效
                         if(list == null||list.size()<1){
                      	   out.print("没有数据！");
                         }else{
                    //遍历商品集合中的数据
    	             for(Product product:list){
                     %>
              
                     <tbody>
                          <tr>
                            <td><%=product.getID() %></td>
                            <td><%=product.getName() %></td>
                            <td><%=product.getType() %></td>
                            <td><%=product.getNumber() %></td>
                            <td><%=product.getDescrption() %></td>   
                          </tr> 
                                                   
                      </tbody>
                         <% 
    	         }
                         }
             
            %>
                      </table>
                      
                    </div>
                    
                  </div>
                </div>
              </div>
        
            </section>
            <section class="buttons">
            <div class="container-fluid">
              <div class="row">
            <div class="col-md-6">
                <div class="border-radius-button">
                       <a href="#">Border Button</a>
                </div>
            </div>
            <div class="col-md-6">
                 <div class="filled-rounded-button">
                       <a href="#">Filled Button</a>
                 </div>
             </div>
             </div>
             </div>
             </section>
          </div>
        </div>

      <!-- Sidebar -->
        <div id="sidebar">

          <div class="inner">

            <!-- Search Box -->
            <section id="search" class="alt">
              <form method="get" action="#">
                <input type="text" name="search" id="search" placeholder="Search..." />
              </form>
            </section>
              
            <!-- Menu -->
           <nav id="menu">
              <ul>
                <li><a href="header.jsp">购物车</a></li>
                <li><a href="simple_page.jsp">Simple Page</a></li>
                <li><a href="shortcodes.jsp">商品列表</a></li>
                <li>
                  <span class="opener">Dropdown One</span>
                  <ul>
                    <li><a href="#">First Sub Menu</a></li>
                    <li><a href="#">Second Sub Menu</a></li>
                    <li><a href="#">Third Sub Menu</a></li>
                  </ul>
                </li>
                <li>
                  <span class="opener">Dropdown Two</span>
                  <ul>
                    <li><a href="#">Sub Menu #1</a></li>
                    <li><a href="#">Sub Menu #2</a></li>
                    <li><a href="#">Sub Menu #3</a></li>
                  </ul>
                </li>
                <li><a href="https://www.google.com">External Link</a></li>
              </ul>
            </nav>

            <!-- Featured Posts -->
            <div class="featured-posts">
              <div class="heading">
                <h2>Featured Posts</h2>
              </div>
              <div class="owl-carousel owl-theme">
                <a href="#">
                  <div class="featured-item">
                    <img src="assets/images/featured_post_01.jpg" alt="featured one">
                    <p>Aliquam egestas convallis eros sed gravida. Curabitur consequat sit.</p>
                  </div>
                </a>
                <a href="#">
                  <div class="featured-item">
                    <img src="assets/images/featured_post_01.jpg" alt="featured two">
                    <p>Donec a scelerisque massa. Aliquam non iaculis quam. Duis arcu turpis.</p>
                  </div>
                </a>
                <a href="#">
                  <div class="featured-item">
                    <img src="assets/images/featured_post_01.jpg" alt="featured three">
                    <p>Suspendisse ac convallis urna, vitae luctus ante. Donec sit amet.</p>
                  </div>
                </a>
              </div>
            </div>

            <!-- Footer -->
            <footer id="footer">
              <p class="copyright">Copyright &copy; 2019 Company Name
              <br>Designed by <a rel="nofollow" href="https://www.facebook.com/templatemo">Template Mo</a></p>
            </footer>
            
          </div>
        </div>

    </div>

  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/browser.min.js"></script>
    <script src="assets/js/breakpoints.min.js"></script>
    <script src="assets/js/transition.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/custom.js"></script>
</body>

</html>
