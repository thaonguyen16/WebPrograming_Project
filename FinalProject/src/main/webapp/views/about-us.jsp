<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<jsp:include page="head.jsp" />

<body>
<div class="body-wrapper">
    <jsp:include page="header.jsp" />
 
    <div class="about-us-wrapper pt-60 pb-40">
        <div class="container">
            <div class="row">
                <!-- About Text Start -->
                <div class="col-lg-6 order-last order-lg-first">
                    <div class="about-text-wrap">
                        <h2><span>Provide Best</span>Product For You</h2>
                        <p>We provide the best Beard oil all over the world. We are the world best store in indie
                            for Beard Oil. You can buy our product without any hesitation because they trust us and
                            buy our product without any agitation because they believe and always happy buy our
                            product.</p>
                        <p>Some of our customer say’s that they trust us and buy our product without any agitation
                            because they believe us and always happy to buy our product.</p>
                        <p>We provide to be shat they trusted us and buy our product without any agitation because
                            they believe us and always happy to buy.</p>
                    </div>
                </div>
                <!-- About Text End -->
                <!-- About Image Start -->
                <div class="col-lg-5 col-md-10">
                    <div class="about-image-wrap">
                        <img class="img-full" src="https://th.bing.com/th/id/R.0812c97bfad733a5ef4e8c0e175dc771?rik=MMeEprobU35MjQ&pid=ImgRaw&r=0" alt="About Us"/>
                    </div>
                </div>
                <!-- About Image End -->
            </div>
        </div>
    </div>
    <!-- about wrapper end -->
    <!-- Begin Counterup Area -->
    <div class="counterup-area">
        <div class="container-fluid p-0">
            <div class="row no-gutters">
                <div class="col-lg-3 col-md-6">
                    <!-- Begin Limupa Counter Area -->
                    <div class="limupa-counter white-smoke-bg">
                        <div class="container">
                            <div class="counter-img">
                                <img src="<%=request.getContextPath()%>/assets/images/about-us/icon/1.png" alt="">
                            </div>
                            <div class="counter-info">
                                <div class="counter-number">
                                    <h3 class="counter">10000</h3>
                                </div>
                                <div class="counter-text">
                                    <span>HAPPY CUSTOMERS</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- limupa Counter Area End Here -->
                </div>
                <div class="col-lg-3 col-md-6">
                    <!-- Begin limupa Counter Area -->
                    <div class="limupa-counter gray-bg">
                        <div class="counter-img">
                            <img src="<%=request.getContextPath()%>/assets/images/about-us/icon/2.png" alt="">
                        </div>
                        <div class="counter-info">
                            <div class="counter-number">
                                <h3 class="counter">1000</h3>
                            </div>
                            <div class="counter-text">
                                <span>AWARDS WINNED</span>
                            </div>
                        </div>
                    </div>
                    <!-- limupa Counter Area End Here -->
                </div>
                <div class="col-lg-3 col-md-6">
                    <!-- Begin limupa Counter Area -->
                    <div class="limupa-counter white-smoke-bg">
                        <div class="counter-img">
                            <img src="<%=request.getContextPath()%>/assets/images/about-us/icon/3.png" alt="">
                        </div>
                        <div class="counter-info">
                            <div class="counter-number">
                                <h3 class="counter">400</h3>
                            </div>
                            <div class="counter-text">
                                <span>HOURS WORKED</span>
                            </div>
                        </div>
                    </div>
                    <!-- limupa Counter Area End Here -->
                </div>
                <div class="col-lg-3 col-md-6">
                    <!-- Begin limupa Counter Area -->
                    <div class="limupa-counter gray-bg">
                        <div class="counter-img">
                            <img src="<%=request.getContextPath()%>/assets/images/about-us/icon/4.png" alt="">
                        </div>
                        <div class="counter-info">
                            <div class="counter-number">
                                <h3 class="counter">2</h3>
                            </div>
                            <div class="counter-text">
                                <span>COMPLETE PROJECTS</span>
                            </div>
                        </div>
                    </div>
                    <!-- limupa Counter Area End Here -->
                </div>
            </div>
        </div>
    </div>
    <!-- Counterup Area End Here -->
    <!-- team area wrapper start -->
    <div class="team-area pt-60 pt-sm-44">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="li-section-title capitalize mb-25">
                        <h2><span>our team</span></h2>
                    </div>
                </div>
            </div> <!-- section title end -->
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="team-member mb-60 mb-sm-30 mb-xs-30">
                        <div class="team-thumb">
                            <img src="<%=request.getContextPath()%>/assets/images/team/thiennhan.jpg" alt="Our Team Member" width="200px" height="300px">
                        </div>
                        <div class="team-content text-center">
                            <h3>Nguyễn Hữu Thiện Nhân</h3>
                            <p>Java Developer</p>
                            <a href="#">19110415@student.hcmute.edu.vn</a>
                            <div class="team-social">
                                <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                                <a href="#"><i class="fa-brands fa-twitter"></i></a>
                                <a href="#"><i class="fa-brands fa-linkedin"></i></a>
                                <a href="#"><i class="fa-brands fa-google-plus-g"></i></a>
                            </div>
                        </div>
                    </div>
                </div> <!-- end single team member -->
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="team-member mb-60 mb-sm-30 mb-xs-30">
                        <div class="team-thumb">
                            <img src="<%=request.getContextPath()%>/assets/images/team/2.jpg" alt="Our Team Member" width="200px" height="300px">
                        </div>
                        <div class="team-content text-center">
                            <h3>Nguyễn Thị Thu Thảo</h3>
                            <p>Java Developer</p>
                            <a href="#">19110460@student.hcmute.edu.vn</a>
                            <div class="team-social">
                                <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                                <a href="#"><i class="fa-brands fa-twitter"></i></a>
                                <a href="#"><i class="fa-brands fa-linkedin"></i></a>
                                <a href="#"><i class="fa-brands fa-google-plus-g"></i></a>
                            </div>
                        </div>
                    </div>
                </div> <!-- end single team member -->
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="team-member mb-30 mb-sm-60">
                        <div class="team-thumb">
                            <img src="<%=request.getContextPath()%>/assets/images/team/3.jpg" alt="Our Team Member" width="200px" height="300px">
                        </div>
                        <div class="team-content text-center">
                            <h3>Lê Nguyễn Thế Linh</h3>
                            <p>Java Developer</p>
                            <a href="#">19110389@student.hcmute.edu.vn</a>
                           <div class="team-social">
                                <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                                <a href="#"><i class="fa-brands fa-twitter"></i></a>
                                <a href="#"><i class="fa-brands fa-linkedin"></i></a>
                                <a href="#"><i class="fa-brands fa-google-plus-g"></i></a>
                            </div>
                        </div>
                    </div>
                </div> <!-- end single team member -->
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="team-member mb-30 mb-sm-60 mb-xs-60">
                        <div class="team-thumb">
                            <img src="<%=request.getContextPath()%>/assets/images/team/4.jpg" alt="Our Team Member" width="200px" height="300px">
                        </div>
                        <div class="team-content text-center">
                            <h3>Phan Văn Thành</h3>
                            <p>Java Developer</p>
                            <a href="#">20133088@student.hcmute.edu.vn</a>
                            <div class="team-social">
                                <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                                <a href="#"><i class="fa-brands fa-twitter"></i></a>
                                <a href="#"><i class="fa-brands fa-linkedin"></i></a>
                                <a href="#"><i class="fa-brands fa-google-plus-g"></i></a>
                            </div>
                        </div>
                    </div>
                </div> <!-- end single team member -->
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp" />
</div>
<jsp:include page="script.jsp" />
</body>
</html>