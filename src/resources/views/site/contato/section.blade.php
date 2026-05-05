    @php
        $bgcontact = asset('davilla/images/backgrounds/imgsobre-3.jpg')
    @endphp
    <!--Page Title-->
    <section class="page-title" style="background-image:url('{{$bgcontact}}')">
        <div class="auto-container">
            <h1>Contacts</h1>
            <ul class="page-breadcrumb">
                <li><a href="index.html">home</a></li>
                <li>Contacts</li>
            </ul>
        </div>
    </section>
    <!--End Page Title-->

    <!-- Contact Section -->
    <section class="contact-section">
        <div class="auto-container">
            <div class="sec-title text-center">
                <div class="divider"><img src="{{asset('davilla/images/icons/divider_1.png')}}" alt=""></div>
                <h2>Our Contacts</h2>
                <div class="text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse nisi et dolor ornare pellentesque. Nullam porttitor,<br> odio id facilisis, mauris dolor rhoncus elit, ultricies nulla eros at dui. In suscipit leo sagittis aliquam.</div>
            </div>

            <div class="row clearfix">
                <div class="column col-xl-3 col-lg-6 col-md-6 col-sm-12">
                    <div class="inner-column">
                        <div class="title">
                            <div class="icon"><img src="{{asset('davilla/images/icons/icon-devider-gray.png')}}" alt=""></div>
                            <h4>Opening Hours</h4>
                        </div>

                        <ul class="contact-info">
                            <li>Monday – Friday <br>08:00 – 17:30</li>
                            <li>Saturday <br>09:00 – 16:00</li>
                            <li>Sunday <br>CLOSED</li>
                        </ul>
                    </div>
                </div>

                <div class="column col-xl-3 col-lg-6 col-md-6 col-sm-12 order-3">
                    <div class="inner-column">
                        <div class="title">
                            <div class="icon"><img src="{{asset('davilla/images/icons/icon-devider-gray.png')}}" alt=""></div>
                            <h4>Our Contacts</h4>
                        </div>

                        <ul class="contact-info">
                            <li>785 Carriage Drive, Jacksonville Beach, FL</li>
                            <li><a href="tel:12032842818">+1 203-284-2818</a><br><a href="tel:12032842919">+1 203-284-2919</a></li>
                            <li><a href="mailto:info@your-site.com">info@your-site.com</a><br> <a href="mailto:sales@your-site.com">sales@your-site.com</a></li>
                        </ul>
                    </div>
                </div>

                <!-- Form Column -->
                <div class="column col-xl-6 col-lg-12 col-md-12 col-sm-12">
                    <div class="inner-column">
                        <div class="title">
                            <div class="icon"><img src="{{asset('davilla/images/icons/icon-devider-gray.png')}}" alt=""></div>
                            <h4>Send Message</h4>
                        </div>
                        <div class="contact-form">
                            <form action="#" method="post" id="email-form">

                                <div class="form-group">
                                    <div class="response"></div>
                                </div>

                                <div class="form-group">
                                    <input type="text" name="username" class="username" placeholder="Your Name *">
                                </div>

                                <div class="form-group">
                                    <input type="email" name="email" class="email" placeholder="Your Email *">
                                </div>
                                
                                <div class="form-group">
                                    <textarea name="contact_message" placeholder="Text Message"></textarea>
                                </div>
                                
                                <div class="form-group">
                                    <button class="theme-btn" type="button" id="submit" name="submit-form">Send</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End Contact Section -->

    <!-- Map Section -->
    <section class="map-section">
       <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3659.0275853702815!2d-46.4344330246719!3d-23.495515878845058!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce63dda7be6fb9%3A0xa74e7d5a53104311!2sSenac%20S%C3%A3o%20Miguel%20Paulista!5e0!3m2!1spt-BR!2sbr!4v1776864075592!5m2!1spt-BR!2sbr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
    </section>
    <!-- End Map Section -->
