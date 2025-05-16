<%-- 
    Document   : Product
    Created on : 11 Dec, 2024, 1:39:42 AM
    Author     : ramkr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products</title>
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
    <!-- lightbox popup -->
    <link rel="stylesheet" href="../Styles/Lightbox.css" />
    <!-- Bootstrap 5 cdn -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <!-- font awesome 5 cdn -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
      integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <!-- custom style -->
    <link rel="stylesheet" href="../Styles/Style.css" />
    <link rel="stylesheet" href="../Css/Responsive-style.css" />
    <link rel="stylesheet" href="../Styles/Login.css" />
</head>
<body>
    <!-- Navbar Section Start -->
    <header id="full_nav">
        <div class="header">
          <div class="container">
            <nav class="navbar navbar-expand-lg">
              <a class="navbar-brand" href="Home.html">
                <img decoding="async" src="../Images/00.00.png" alt="Logo" />
              </a>
              <button
                class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#main-nav"
                aria-controls="main-nav"
                aria-expanded="false"
                aria-label="Toggle navigation"
              >
                <!-- <span class="navbar-toggler-icon"></span> -->
                <i class="fas fa-stream navbar-toggler-icon"></i>
              </button>
  
              <div class="collapse navbar-collapse" id="main-nav">
                <ul class="navbar-nav mx-auto">
                  <li class="nav-item">
                    <a class="nav-link" href="Home.html">Home</a>
                  </li>
  
                  <li class="nav-item">
                    <a class="nav-link" href="Product.html">Product</a>
                  </li>
  
                  <li class="nav-item">
                    <a class="nav-link" href="Info.html">Info</a>
                  </li>
  
                  <li class="nav-item">
                    <a class="nav-link" href="Contact.html">Contact</a>
                  </li>
                  <li class="nav-item">
                      <a class="nav-link" href="Login.html">Login</a>
                    </li>
                </ul>
              </div>
            </nav>
          </div>
        </div>
      </header>
      <!-- Navbar Section Exit -->
    <!-- products Section -->
    
    <section class="landing_product_section">
        <div class="container">
            
      
            <div class="row mx-0">
                <div class="col-lg-3 col-sm-6 mb-5" >
                    <div class="card product-card">
                        <div class="product-img">
                            <img decoding="async" src="../Images/products/product-1.jpg" class="img-fluid" />
                        </div>
                        <div class="d-flex align-items-center justify-content-between">
                            <h3>Musk Melon</h3>
                            <span>$70 KG</span>
                        </div>
                        <div class="product-detail">
                            <a href="Product.html" class="btn main-btn">Add to cart</a>
                            <a href="Product.html" class="btn main-btn">Buy</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mb-5">
                    <div class="card product-card">
                        <div class="product-img">
                            <img decoding="async" src="../Images/products/product-2.jpg" class="img-fluid" />
                        </div>
                        <div class="d-flex align-items-center justify-content-between">
                            <h3>Orange</h3>
                            <span>$70 KG</span>
                        </div>
                        <div class="product-detail">
                            <a href="Product.html" class="btn main-btn">Add to cart</a>
                            <a href="Product.html" class="btn main-btn">Buy</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mb-5">
                    <div class="card product-card">
                        <div class="product-img">
                            <img decoding="async" src="../Images/products/product-3.jpg" class="img-fluid" />
                        </div>
                        <div class="d-flex align-items-center justify-content-between">
                            <h3>Apple</h3>
                            <span>$70 KG</span>
                        </div>
                        <div class="product-detail">
                            <a href="Product.html" class="btn main-btn">Add to cart</a>
                           <a href="Product.html" class="btn main-btn">Buy</a>
                        </div>
                    </div>
                </div>
                 <div class="col-lg-3 col-sm-6 mb-5">
                    <div class="card product-card">
                        <div class="product-img">
                            <img decoding="async" src="../Images/products/product-4.jpg" class="img-fluid" />
                        </div>
                        <div class="d-flex align-items-center justify-content-between">
                            <h3>Dragon</h3>
                            <span>$70 KG</span>
                        </div>
                        <div class="product-detail">
                            <a href="Product.html" class="btn main-btn">Add to cart</a>
                            <a href="Product.html" class="btn main-btn">Buy</a>
                        </div>
                    </div>
                </div> 
            </div>
            <div class="row mx-0">
                <div class="col-lg-3 col-sm-6 mb-5">
                    <div class="card product-card">
                        <div class="product-img">
                            <img decoding="async" src="../Images/products/product-1.jpg" class="img-fluid" />
                        </div>
                        <div class="d-flex align-items-center justify-content-between">
                            <h3>Musk Melon</h3>
                            <span>$70 KG</span>
                        </div>
                        <div class="product-detail">
                            <a href="Product.html" class="btn main-btn">Add to cart</a>
                            <a href="Product.html" class="btn main-btn">Buy</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mb-5">
                    <div class="card product-card">
                        <div class="product-img">
                            <img decoding="async" src="../Images/products/product-2.jpg" class="img-fluid" />
                        </div>
                        <div class="d-flex align-items-center justify-content-between">
                            <h3>Orange</h3>
                            <span>$70 KG</span>
                        </div>
                        <div class="product-detail">
                            <a href="Product.html" class="btn main-btn">Add to cart</a>
                            <a href="Product.html" class="btn main-btn">Buy</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mb-5">
                    <div class="card product-card">
                        <div class="product-img">
                            <img decoding="async" src="../Images/products/product-3.jpg" class="img-fluid" />
                        </div>
                        <div class="d-flex align-items-center justify-content-between">
                            <h3>Apple</h3>
                            <span>$70 KG</span>
                        </div>
                        <div class="product-detail">
                           <a href="Product.html" class="btn main-btn">Add to cart</a>
                           <a href="Product.html" class="btn main-btn">Buy</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mb-5">
                    <div class="card product-card">
                        <div class="product-img">
                            <img decoding="async" src="../Images/products/product-4.jpg" class="img-fluid" />
                        </div>
                        <div class="d-flex align-items-center justify-content-between">
                            <h3>Dragon</h3>
                            <span>$70 KG</span>
                        </div>
                        <div class="product-detail">
                            <a href="Product.html" class="btn main-btn">Add to cart</a>
                            <a href="Product.html" class="btn main-btn">Buy</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mx-0">
                <div class="col-lg-3 col-sm-6 mb-5">
                    <div class="card product-card">
                        <div class="product-img">
                            <img decoding="async" src="../Images/products/product-1.jpg" class="img-fluid" />
                        </div>
                        <div class="d-flex align-items-center justify-content-between">
                            <h3>Musk Melon</h3>
                            <span>$70 KG</span>
                        </div>
                        <div class="product-detail">
                            <a href="Product.html" class="btn main-btn">Add to cart</a>
                            <a href="Product.html" class="btn main-btn">Buy</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mb-5">
                    <div class="card product-card">
                        <div class="product-img">
                            <img decoding="async" src="../Images/products/product-2.jpg" class="img-fluid" />
                        </div>
                        <div class="d-flex align-items-center justify-content-between">
                            <h3>Orange</h3>
                            <span>$70 KG</span>
                        </div>
                        <div class="product-detail">
                            <a href="Product.html" class="btn main-btn">Add to cart</a>
                            <a href="Product.html" class="btn main-btn">Buy</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mb-5">
                    <div class="card product-card">
                        <div class="product-img">
                            <img decoding="async" src="./images/products/product-3.jpg" class="img-fluid" />
                        </div>
                        <div class="d-flex align-items-center justify-content-between">
                            <h3>Apple</h3>
                            <span>$70 KG</span>
                        </div>
                        <div class="product-detail">
                            <a href="Product.html" class="btn main-btn">Add to cart</a>
                            <a href="Product.html" class="btn main-btn">Buy</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6 mb-5">
                    <div class="card product-card">
                        <div class="product-img">
                            <img decoding="async" src="../Images/products/product-4.jpg" class="img-fluid" />
                        </div>
                        <div class="d-flex align-items-center justify-content-between">
                            <h3>Dragon</h3>
                            <span>$70 KG</span>
                        </div>
                        <div class="product-detail">
                            <a href="Product.html" class="btn main-btn">Add to cart</a>
                            <a href="Product.html" class="btn main-btn">Buy</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
      </section>
     <!-- Footer section Start-->
<section class="footer_wrapper mt-3 mt-md-0">
    <div class="container px-5 px-lg-0">
        <div class="row">
            <div class="col-lg-3 col-sm-6 mb-5 mb-lg-0">
                <h5>Support</h5>
                <div class="contact-info">
                    <ul class="list-unstyled">
                        <li><a href="#"><i class="fa fa-home me-3"></i> Kolkata, India</a></li>
                        <li><a href="#"><i class="fa fa-phone me-3"></i>+91 74395 41204</a></li>
                        <li><a href="#"><i class="fa fa-envelope me-3"></i>amailtoshuvam@gmail.com</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6 mb-5 mb-lg-0">
                <h5>Top agricultural country Govt. link</h5>
                <ul class="link-widget p-0">
                    <li><a href="https://agriwelfare.gov.in/">India Govt. Agriculture Dept.</a></li>
                    <li><a href="https://www.usda.gov/">United State Govt. Agriculture Dept.</a></li>
                    <li><a href="https://www.government.nl/ministries/ministry-of-agriculture-fisheries-food-security-and-nature">Netherlands Govt. Agriculture Dept.</a></li>
                    <li><a href="https://www.bmel.de/EN/Home/home_node.html">Germany Govt. Agriculture Dept.</a></li>
                    <li><a href="https://www.abc.gov.br/training/informacoes/InstituicaoMAPA_en.aspx">Brazil Govt. Agriculture Dept.</a></li>
                </ul>
            </div>
            <div class="col-lg-3 col-sm-6 mb-5 mb-lg-0">
                <h5>Top agricultural institute</h5>
                <ul class="link-widget p-0">
                    <li><a href="https://icar.org.in/institutes">ICAR</a></li>
                    <li><a href="https://www.wur.nl/en.htm">WAGENINGEN</a></li>
                    <li><a href="https://www.harvard.edu/">HARVARD</a></li>
                    <li><a href="https://www.ox.ac.uk/">OXFORD</a></li>
                    <li><a href="https://www.cam.ac.uk/">CAMBRIDGE</a></li>
                </ul>
            </div>
            <div class="col-lg-3 col-sm-6 mb-5 mb-lg-0">
              <h5>Stay Connected</h5>
              <ul class="social-network d-flex align-items-center p-0">
                  <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                  <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                  <li><a href="#"><i class="fab fa-linkedin-in"></i></a></li>
                  <li><a href="#"><i class="fab fa-youtube"></i></a></li>
              </ul>
          </div>
        </div>
    </div>
    <div class="container-fluid copyright-section">
      <marquee bgcolor="#212f3c" direction="left" behavior="alternate">
          <b><i><font size="4" color="white">~THANK YOU -- VISIT AGAIN -- HAVE A GOOD DAY~</font></i></b>
      </marquee>
    </div>
  </section>
  <!-- Footer Section Exit  -->
       <!-- jQuery CDN -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
      integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
      integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
      crossorigin="anonymous"
    ></script>
    <script src="https://cdn.jsdelivr.net/npm/bs5-lightbox@1.8.3/dist/index.bundle.min.js"></script>
    <!-- custom js -->
     <script src="../Scripts/main.js"></script>
</body>
</html>

