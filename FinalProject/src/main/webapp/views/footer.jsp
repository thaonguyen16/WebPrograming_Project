<%--
  Created by IntelliJ IDEA.
  User: THU THAO
  Date: 10/12/2022
  Time: 2:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="footer">
  <!-- Begin Footer Static Top Area -->
  <div class="footer-static-top">
    <div class="container">
      <!-- Begin Footer Shipping Area -->
      <div class="footer-shipping pt-60 pb-25">
        <div class="row">
          <!-- Begin Li's Shipping Inner Box Area -->
          <div class="col-lg-3 col-md-6 col-sm-6 pb-sm-55 pb-xs-55">
            <div class="li-shipping-inner-box" style="border-left: 1px solid #e1e1e1">
              <div class="shipping-icon">
                <img src="<%=request.getContextPath()%>/assets/images/shipping-icon/1.png" alt="Shipping Icon">
              </div>
              <div class="shipping-text">
                <h2>Free Delivery</h2>
                <p>And free returns. See checkout for delivery dates.</p>
              </div>
            </div>
          </div>
          <!-- Li's Shipping Inner Box Area End Here -->
          <!-- Begin Li's Shipping Inner Box Area -->
          <div class="col-lg-3 col-md-6 col-sm-6 pb-sm-55 pb-xs-55">
            <div class="li-shipping-inner-box">
              <div class="shipping-icon">
                <img src="<%=request.getContextPath()%>/assets/images/shipping-icon/2.png" alt="Shipping Icon">
              </div>
              <div class="shipping-text">
                <h2>Safe Payment</h2>
                <p>Pay with the world's most popular and secure payment methods.</p>
              </div>
            </div>
          </div>
          <!-- Li's Shipping Inner Box Area End Here -->
          <!-- Begin Li's Shipping Inner Box Area -->
          <div class="col-lg-3 col-md-6 col-sm-6 pb-xs-30">
            <div class="li-shipping-inner-box">
              <div class="shipping-icon">
                <img src="<%=request.getContextPath()%>/assets/images/shipping-icon/3.png" alt="Shipping Icon">
              </div>
              <div class="shipping-text">
                <h2>Shop with Confidence</h2>
                <p>Our Buyer Protection covers your purchasefrom click to delivery.</p>
              </div>
            </div>
          </div>
          <!-- Li's Shipping Inner Box Area End Here -->
          <!-- Begin Li's Shipping Inner Box Area -->
          <div class="col-lg-3 col-md-6 col-sm-6 pb-xs-30">
            <div class="li-shipping-inner-box">
              <div class="shipping-icon">
                <img src="<%=request.getContextPath()%>/assets/images/shipping-icon/4.png" alt="Shipping Icon">
              </div>
              <div class="shipping-text">
                <h2>24/7 Help Center</h2>
                <p>Have a question? Call a Specialist or chat online.</p>
              </div>
            </div>
          </div>
          <!-- Li's Shipping Inner Box Area End Here -->
        </div>
      </div>
      <!-- Footer Shipping Area End Here -->
    </div>
  </div>
  <!-- Footer Static Top Area End Here -->
  <!-- Begin Footer Static Middle Area -->
  <div class="footer-static-middle">
    <div class="container">
      <div class="footer-logo-wrap pt-50 pb-35">
        <div class="row">
          <!-- Begin Footer Logo Area -->
          <div class="col-lg-4 col-md-6">
            <div class="footer-logo">
              <img src="<%=request.getContextPath()%>/assets/images/logo.png" width="200" height="100" alt="Footer Logo">
              <p class="info">
                We are a team of designers and developers. This is web final project for study at school. All information and image just preference and not value reality
              </p>
            </div>
            <ul class="des">
              <li>
                <span>Address: </span>
                No 1, VO Van Ngan, Linh Chieu, Thu Duc City, TP.HCM city
              </li>
              <li>
                <span>Phone: </span>
                <a href="/Tel:0868286420" style="color: white">(+84) 868 286 420</a>
              </li>
              <li>
                <span>Email: </span>
                <a style="color: white" href="mailto://19110460@student.hcmute.edu.vn">19110460@student.hcmute.edu.vn</a>
              </li>
            </ul>
          </div>
          <!-- Footer Logo Area End Here -->
          <!-- Begin Footer Block Area -->
          <div class="col-lg-2 col-md-3 col-sm-6">
            <div class="footer-block">
              <h3 class="footer-block-title">Product</h3>
              <ul>
                <li><a href="#">Prices drop</a></li>
                <li><a href="#">New products</a></li>
                <li><a href="#">Best sales</a></li>
                <li><a href="#">Contact us</a></li>
              </ul>
            </div>
          </div>
          <!-- Footer Block Area End Here -->
          <!-- Begin Footer Block Area -->
          <div class="col-lg-2 col-md-3 col-sm-6">
            <div class="footer-block">
              <h3 class="footer-block-title">Our company</h3>
              <ul>
                <li><a href="#">Delivery</a></li>
                <li><a href="#">Legal Notice</a></li>
                <li><a href="#">About us</a></li>
                <li><a href="#">Contact us</a></li>
              </ul>
            </div>
          </div>
          <!-- Footer Block Area End Here -->
          <!-- Begin Footer Block Area -->
          <div class="col-lg-4">
            <div class="footer-block">
              <h3 class="footer-block-title">Follow Us</h3>
              <ul class="social-link">
                <li class="twitter">
                  <a href="https://twitter.com/" data-toggle="tooltip" target="_blank"
                     title="Twitter">
                    <i class="fa fa-twitter"></i>
                  </a>
                </li>
                <li class="rss">
                  <a href="https://rss.com/" data-toggle="tooltip" target="_blank"
                     title="RSS">
                    <i class="fa fa-rss"></i>
                  </a>
                </li>
                <li class="google-plus">
                  <a href="https://www.plus.google.com/discover" data-toggle="tooltip"
                     target="_blank" title="Google +">
                    <i class="fa fa-google-plus"></i>
                  </a>
                </li>
                <li class="facebook">
                  <a href="https://www.facebook.com/" data-toggle="tooltip" target="_blank"
                     title="Facebook">
                    <i class="fa fa-facebook"></i>
                  </a>
                </li>
                <li class="youtube">
                  <a href="https://www.youtube.com/" data-toggle="tooltip" target="_blank"
                     title="Youtube">
                    <i class="fa fa-youtube"></i>
                  </a>
                </li>
                <li class="instagram">
                  <a href="https://www.instagram.com/" data-toggle="tooltip" target="_blank"
                     title="Instagram">
                    <i class="fa fa-instagram"></i>
                  </a>
                </li>
              </ul>
            </div>
            <!-- Begin Footer Newsletter Area -->
            <div class="footer-newsletter">
              <h4>Sign up to newsletter</h4>
              <form action="#" method="post" id="mc-embedded-subscribe-form"
                    name="mc-embedded-subscribe-form" class="footer-subscribe-form validate"
                    target="_blank" novalidate>
                <div id="mc_embed_signup_scroll">
                  <div id="mc-form" class="mc-form subscribe-form form-group">
                    <label for="mc-email"></label><input id="mc-email" type="email" autocomplete="off"
                                                         placeholder="Enter your email" style="color: white"/>
                    <button class="btn" id="mc-submit">Subscribe</button>
                  </div>
                </div>
              </form>
            </div>
            <!-- Footer Newsletter Area End Here -->
          </div>
          <!-- Footer Block Area End Here -->
        </div>
      </div>
    </div>
  </div>
</div>