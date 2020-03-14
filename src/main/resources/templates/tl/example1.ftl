<#import "../fragments/page.ftl" as p>

<@p.page true "Exapmle1">

<div class="bg-alt py-5">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1>Elements</h1>
                <p class="lead">
                    Kickstart your project with a variety of reusable, stylish, modular widgets. These widgets utilize the core <span class="font-weight-bold">Bootstrap</span> components,
                    so they <em>don&apos;t</em> require extra libraries or scripts to function.
                </p>
            </div>
        </div>
    </div>
</div>

<a class="anchor" id="tabs"></a>
<section class="container">
    <div class="row">
        <div class="col-md-12">

            <h2 class="text-center">Tabs</h2>
            <hr class="accent mb-3">

            <!-- tabs -->
            <!--tabs-->
            <ul id="tabsJustified" class="nav nav-tabs">
                <li class="nav-item">
                    <a href="" data-target="#home1" data-toggle="tab" class="nav-link small text-uppercase">Home</a>
                </li>
                <li class="nav-item">
                    <a href="" data-target="#profile1" data-toggle="tab" class="nav-link small text-uppercase active">Profile</a>
                </li>
                <li class="nav-item">
                    <a href="" data-target="#messages1" data-toggle="tab" class="nav-link small text-uppercase">Messages</a>
                </li>
            </ul>
            <!--/tabs-->
            <br>
            <div id="tabsJustifiedContent" class="tab-content">
                <div class="tab-pane fade" id="home1">
                    <div class="list-group">
                        <a href="" class="list-group-item d-inline-block"><span class="float-right badge badge-pill badge-dark">51</span> Home Link</a>
                        <a href="" class="list-group-item d-inline-block"><span class="float-right badge badge-pill badge-dark">8</span> Link 2</a>
                        <a href="" class="list-group-item d-inline-block"><span class="float-right badge badge-pill badge-dark">23</span> Link 3</a>
                        <a href="" class="list-group-item d-inline-block text-muted">Link n..</a>
                    </div>
                </div>
                <div class="tab-pane fade active show" id="profile1">
                    <div class="row pb-2">
                        <div class="col-md-7">
                            <p>Tabs can be used to contain a variety of content &amp; elements. They are a good way to group <a href="" class="link">relevant content</a>.
                                Display initial content in context to the user. Enable the user to flow through <a href="" class="link">more</a> information as needed.
                            </p>
                        </div>
                        <div class="col-md-5">
                            <img src="./assets/images/sample5.jpg" class="float-right img-fluid img-rounded">
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="messages1">
                    <div class="list-group">
                        <a href="" class="list-group-item d-inline-block"><span class="float-right badge badge-pill badge-dark">44</span> Message 1</a>
                        <a href="" class="list-group-item d-inline-block"><span class="float-right badge badge-pill badge-dark">8</span> Message 2</a>
                        <a href="" class="list-group-item d-inline-block"><span class="float-right badge badge-pill badge-dark">23</span> Message 3</a>
                        <a href="" class="list-group-item d-inline-block text-muted">Message n..</a>
                    </div>
                </div>
            </div>
            <!--/tabs content-->
            <!-- /tabs -->

        </div>

    </div>
    <!-- /row -->
</section>

<a class="anchor" id="progress"></a>
<section class="bg-alt">
    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <h2 class="text-center">Progress Bars</h2>
                <hr class="accent mb-3">

                <!-- progress bars -->
                <div id="card_stats">
                    <div class="card-body p-0">
                        <div class="row">
                            <div class="col-lg-6 my-2">
                                <div class="card card-body p-3"> <span class="text-primary"><span class="badge badge-primary float-right">+ 13%</span> Sign-ups </span>
                                    <div class="progress mt-4">
                                        <div class="progress-bar w-25 bg-primary wow slideInLeft"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 my-2">
                                <div class="card card-body p-3"> <span class="text-primary"><span class="badge badge-primary float-right">80%</span> Usage </span>
                                    <div class="progress mt-4">
                                        <div class="progress-bar w-75 wow slideInLeft"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 my-2">
                                <div class="card card-body p-3"> <span class="text-primary"><span class="badge badge-primary float-right">78</span> Bursts </span>
                                    <div class="progress mt-4">
                                        <div class="progress-bar bg-primary w-75 wow slideInLeft"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 my-2">
                                <div class="card card-body p-3"> <span class="text-success"><span class="badge badge-success float-right">+ 26%</span> Returning </span>
                                    <div class="progress mt-4">
                                        <div class="progress-bar bg-success w-25 wow slideInLeft"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 my-2">
                                <div class="card card-body p-3"> <span class="text-primary"><span class="badge badge-primary float-right">201</span> Sales </span>
                                    <div class="progress mt-4">
                                        <div class="progress-bar w-50 bg-primary wow slideInLeft"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 my-2">
                                <div class="card card-body p-3"> <span class="text-success"><span class="badge badge-success float-right">+ 74%</span> Pageviews </span>
                                    <div class="progress mt-4">
                                        <div class="progress-bar bg-success w-75 wow slideInLeft"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /progress bars -->

            </div>
        </div>
    </div>
</section>

<span class="anchor" id="forms"></span>
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="text-center">Forms</h2>
                <hr class="accent mb-3">

                <div class="row">
                    <div class="col-md-3"><!--offset--></div>
                    <div class="col-md-6 mr-md-auto">
                        <span class="anchor" id="formLogin"></span>

                        <!-- form card login -->
                        <div class="card border-secondary">
                            <div class="card-header">
                                <h3 class="mb-0 my-2">Login</h3>
                            </div>
                            <div class="card-body">
                                <form class="form" role="form" autocomplete="off" id="formLogin">
                                    <div class="form-group">
                                        <label>Username</label>
                                        <input type="text" class="form-control" required>
                                    </div>
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input type="password" class="form-control" required>
                                    </div>
                                    <div class="form-check small">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input"> <span>Remember me on this computer</span>
                                        </label>
                                    </div>
                                    <button type="button" class="btn btn-success btn-lg float-right">Login</button>
                                </form>
                            </div>
                            <!--/card-body-->
                        </div>
                        <!-- /form card login -->

                    </div>
                    <div class="w-100"></div>
                    <div class="col-md-3"><!--offset--></div>
                    <div class="col-md-6 mr-md-auto">
                        <span class="anchor" id="formRegister"></span>
                        <hr>

                        <!-- form card register -->
                        <div class="card border-secondary">
                            <div class="card-header">
                                <h3 class="mb-0 my-2">Sign Up</h3>
                            </div>
                            <div class="card-body">
                                <form class="form" role="form" autocomplete="off">
                                    <div class="form-group">
                                        <label for="inputName">Name</label>
                                        <input type="text" class="form-control" id="inputName" placeholder="full name">
                                    </div>
                                    <div class="form-group">
                                        <label for="inputEmail3">Email</label>
                                        <input type="email" class="form-control" id="inputEmail3" placeholder="email@gmail.com" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3">Password</label>
                                        <input type="password" class="form-control" id="inputPassword3" placeholder="password" title="At least 6 characters with letters and numbers" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputVerify3">Verify</label>
                                        <input type="password" class="form-control" id="inputVerify3" placeholder="password (again)" required>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-success btn-lg float-right">Register</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- /form card register -->

                    </div>
                    <div class="w-100"></div>
                    <div class="col-md-3"><!--offset--></div>
                    <div class="col-md-6 mr-md-auto">
                        <span class="anchor" id="formChangePassword"></span>
                        <hr>

                        <!-- form card change password -->
                        <div class="card border-secondary">
                            <div class="card-header">
                                <h3 class="mb-0 my-2">Change Password</h3>
                            </div>
                            <div class="card-body">
                                <form class="form" role="form" autocomplete="off">
                                    <div class="form-group">
                                        <label for="inputPasswordOld">Current Password</label>
                                        <input type="password" class="form-control" id="inputPasswordOld" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPasswordNew">New Password</label>
                                        <input type="password" class="form-control" id="inputPasswordNew" required>
                                        <span class="form-text small text-muted">
                                            The password must be 8-20 characters, and must <em>not</em> contain spaces.
                                        </span>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPasswordNewVerify">Verify</label>
                                        <input type="password" class="form-control" id="inputPasswordNewVerify" required>
                                        <span class="form-text small text-muted">
                                            To confirm, type the new password again.
                                        </span>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-success btn-lg float-right">Save</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- /form card change password -->

                    </div>
                    <div class="w-100"></div>
                    <div class="col-md-3"><!--offset--></div>
                    <div class="col-md-6 mr-md-auto">
                        <span class="anchor" id="formResetPassword"></span>
                        <hr>

                        <!-- form card reset password -->
                        <div class="card border-secondary">
                            <div class="card-header">
                                <h3 class="mb-0 my-2">Password Reset</h3>
                            </div>
                            <div class="card-body">
                                <form class="form" role="form" autocomplete="off">
                                    <div class="form-group">
                                        <label for="inputResetPasswordEmail">Email</label>
                                        <input type="email" class="form-control" id="inputResetPasswordEmail" required>
                                        <span id="helpResetPasswordEmail" class="form-text small text-muted">
                                            Password reset instructions will be sent to this email address.
                                        </span>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-success btn-lg float-right">Reset</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- /form card reset password -->

                    </div>
                    <div class="w-100"></div>
                    <div class="col-md-3"><!--offset--></div>
                    <div class="col-md-6 mr-md-auto">
                        <span class="anchor" id="formPayment"></span>
                        <hr>

                        <!-- form card cc payment -->
                        <div class="card border-secondary">
                            <div class="card-body">
                                <h3 class="text-center">Credit Card Payment</h3>
                                <hr>
                                <div class="alert alert-info">
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                        <span aria-hidden="true">&#xD7;</span>
                                    </button>
                                    CVC code is required.
                                </div>
                                <form class="form" role="form" autocomplete="off">
                                    <div class="form-group">
                                        <label for="cc_name">Card Holder&apos;s Name</label>
                                        <input type="text" class="form-control" id="cc_name" pattern="\w+ \w+.*" title="First and last name" required="required">
                                    </div>
                                    <div class="form-group">
                                        <label>Card Number</label>
                                        <input type="text" class="form-control" autocomplete="off" maxlength="20" pattern="\d{16}" title="Credit card number" required>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-md-12">Card Exp. Date</label>
                                        <div class="col-md-4">
                                            <select class="form-control" name="cc_exp_mo" size="">
                                                <option value="01">01</option>
                                                <option value="02">02</option>
                                                <option value="03">03</option>
                                                <option value="04">04</option>
                                                <option value="05">05</option>
                                                <option value="06">06</option>
                                                <option value="07">07</option>
                                                <option value="08">08</option>
                                                <option value="09">09</option>
                                                <option value="10">10</option>
                                                <option value="11">11</option>
                                                <option value="12">12</option>
                                            </select>
                                        </div>
                                        <div class="col-md-4">
                                            <select class="form-control" name="cc_exp_yr" size="">
                                                <option>2016</option>
                                                <option>2017</option>
                                                <option>2018</option>
                                                <option>2019</option>
                                                <option>2020</option>
                                                <option>2021</option>
                                                <option>2022</option>
                                            </select>
                                        </div>
                                        <div class="col-md-4">
                                            <input type="text" class="form-control" autocomplete="off" maxlength="3" pattern="\d{3}" title="Three digits at back of your card" required placeholder="CVC">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <label class="col-md-12">Amount</label>
                                    </div>
                                    <div class="form-inline">
                                        <div class="input-group">
                                            <div class="input-group-prepend"><span class="input-group-text border-top-0 border-right-0 border-left-0">$</span></div>
                                            <input type="text" class="form-control text-right" id="exampleInputAmount" placeholder="39">
                                            <div class="input-group-append"><span class="input-group-text border-top-0 border-right-0 border-left-0">.00</span></div>
                                        </div>
                                    </div>
                                    <hr>
                                    <div class="form-group row">
                                        <div class="col-md-6">
                                            <button type="reset" class="btn btn-outline-secondary btn-lg btn-block">Cancel</button>
                                        </div>
                                        <div class="col-md-6">
                                            <button type="submit" class="btn btn-success btn-lg btn-block">Submit</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- /form card cc payment -->

                    </div><!--/col-->
                    <div class="w-100"></div>
                    <div class="col-md-8 mx-auto">
                        <span class="anchor" id="formUserEdit"></span>
                        <hr>

                        <!-- form user info -->
                        <div class="card border-secondary">
                            <div class="card-header">
                                <h3 class="mb-0 my-2">User Information</h3>
                            </div>
                            <div class="card-body">
                                <form class="form" role="form" autocomplete="off">
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label">First name</label>
                                        <div class="col-lg-9">
                                            <input class="form-control" type="text" value="Jane">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label">Last name</label>
                                        <div class="col-lg-9">
                                            <input class="form-control" type="text" value="Bishop">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label">Email</label>
                                        <div class="col-lg-9">
                                            <input class="form-control" type="email" value="email@gmail.com">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label">Company</label>
                                        <div class="col-lg-9">
                                            <input class="form-control" type="text" value="">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label">Website</label>
                                        <div class="col-lg-9">
                                            <input class="form-control" type="url" value="">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label">Time Zone</label>
                                        <div class="col-lg-9">
                                            <select id="user_time_zone" class="form-control" size="0">
                                                <option value="Hawaii">(GMT-10:00) Hawaii</option>
                                                <option value="Alaska">(GMT-09:00) Alaska</option>
                                                <option value="Pacific Time (US &amp; Canada)">(GMT-08:00) Pacific Time (US &amp; Canada)</option>
                                                <option value="Arizona">(GMT-07:00) Arizona</option>
                                                <option value="Mountain Time (US &amp; Canada)">(GMT-07:00) Mountain Time (US &amp; Canada)</option>
                                                <option value="Central Time (US &amp; Canada)" selected="selected">(GMT-06:00) Central Time (US &amp; Canada)</option>
                                                <option value="Eastern Time (US &amp; Canada)">(GMT-05:00) Eastern Time (US &amp; Canada)</option>
                                                <option value="Indiana (East)">(GMT-05:00) Indiana (East)</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label">Username</label>
                                        <div class="col-lg-9">
                                            <input class="form-control" type="text" value="janeuser">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label">Password</label>
                                        <div class="col-lg-9">
                                            <input class="form-control" type="password" value="11111122333">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label">Confirm</label>
                                        <div class="col-lg-9">
                                            <input class="form-control" type="password" value="11111122333">
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <label class="col-lg-3 col-form-label form-control-label"></label>
                                        <div class="col-lg-9">
                                            <input type="reset" class="btn btn-secondary" value="Cancel">
                                            <input type="button" class="btn btn-primary" value="Save Changes">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- /form user info -->

                    </div><!--/col-->
                    <div class="w-100"></div>
                    <div class="col-md-6 mx-auto">
                        <span class="anchor" id="formContact"></span>
                        <hr>

                        <!-- form user info -->
                        <div class="card border-secondary">
                            <div class="card-header">
                                <h3 class="mb-0 my-2">Contact</h3>
                            </div>
                            <div class="card-body">
                                <form class="form" role="form" autocomplete="off">
                                    <fieldset>
                                        <label for="name2" class="mb-0">Name</label>
                                        <div class="row mb-1">
                                            <div class="col-lg-12">
                                                <input type="text" name="name2" id="name2" class="form-control" required>
                                            </div>
                                        </div>
                                        <label for="email2" class="mb-0">Email</label>
                                        <div class="row mb-1">
                                            <div class="col-lg-12">
                                                <input type="text" name="email2" id="email2" class="form-control" required>
                                            </div>
                                        </div>
                                        <label for="message2" class="mb-0">Message</label>
                                        <div class="row mb-1">
                                            <div class="col-lg-12">
                                                <textarea rows="6" name="message2" id="message2" class="form-control" required></textarea>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-secondary btn-lg float-right mt-3">Send Message</button>
                                    </fieldset>
                                </form>
                            </div>
                        </div>
                        <!-- /form user info -->

                    </div><!--/col-->
                </div><!--/row-->

            </div><!--/col-->
        </div><!--/row-->
    </div><!--/container-->
</section>

<span class="anchor" id="lists"></span>
<section class="bg-alt">
    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <h2 class="text-center">Lists</h2>
                <hr class="accent mb-3">

                <!-- contacts card -->
                <div class="card card-default" id="card_contacts">
                    <div id="contacts" class="panel-collapse collapse show" aria-expanded="true" role="tabpanel">
                        <!-- contacts list -->
                        <ul class="list-group" id="contact-list">
                            <li class="list-group-item d-block">
                                <div class="row">
                                    <div class="col-12 col-sm-6 col-md-2">
                                        <img src="./assets/images/users/m101.jpg" alt="Mike Anamendolla" class="img-fluid rounded-circle mx-auto d-block">
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-10 text-center text-sm-left">
                                        <span class="fa fa-mobile fa-2x text-success float-right pulse" title="online now"></span>
                                        <label class="name">Mike Anamenda</label>
                                        <br>
                                        <span class="fa fa-map-marker text-muted" data-toggle="tooltip" title="" data-original-title="5842 Hillcrest Rd"></span>
                                        <span class="text-muted">5842 Hillcrest Rd</span>
                                        <br>
                                        <span class="fa fa-phone text-muted" data-toggle="tooltip" title="" data-original-title="(870) 288-4149"></span>
                                        <span class="text-muted small">(870) 288-4149</span>
                                        <br>
                                        <span class="fa fa-envelope text-muted" data-toggle="tooltip" data-original-title="" title=""></span>
                                        <a href="" class="link small text-truncate">mike.ana@example.com</a>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item d-block">
                                <div class="row">
                                    <div class="col-12 col-sm-6 col-md-2">
                                        <img src="./assets/images/users/m105.jpg" alt="Seth Frazier" class="img-fluid rounded-circle mx-auto d-block">
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-10 text-center text-sm-left">
                                        <label class="name">Seth Frazier</label>
                                        <br>
                                        <span class="fa fa-map-marker text-muted" data-toggle="tooltip" title="" data-original-title="7396 E North St"></span>
                                        <span class="text-muted">7396 E North St</span>
                                        <br>
                                        <span class="fa fa-phone text-muted" data-toggle="tooltip" title="" data-original-title="(560) 180-4143"></span>
                                        <span class="text-muted small">(560) 180-4143</span>
                                        <br>
                                        <span class="fa fa-envelope text-muted" data-toggle="tooltip" title="" data-original-title="seth.frazier@example.com"></span>
                                        <a href="" class="link small text-truncate">seth.frazier@example.com</a>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item d-block">
                                <div class="row">
                                    <div class="col-12 col-sm-6 col-md-2">
                                        <img src="./assets/images/users/w102.jpg" alt="Rosemary Porter" class="img-fluid rounded-circle mx-auto d-block">
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-10 text-center text-sm-left">
                                        <span class="fa fa-envelope fa-lg text-danger float-right" title="left you a message"></span>
                                        <label class="name">Rosemary Porter</label>
                                        <br>
                                        <span class="fa fa-map-marker text-muted" data-toggle="tooltip" title="" data-original-title="5267 Cackson St"></span>
                                        <span class="text-muted">5267 Cackson St</span>
                                        <br>
                                        <span class="fa fa-phone text-muted" data-toggle="tooltip" title="" data-original-title="(497) 160-9776"></span>
                                        <span class="text-muted small">(497) 160-9776</span>
                                        <br>
                                        <span class="fa fa-envelope text-muted" data-toggle="tooltip" title="" data-original-title="rosemary.porter@example.com"></span>
                                        <a href="" class="link small text-truncate">rosemary.porter@example.com</a>
                                    </div>
                                </div>
                            </li>
                            <li class="list-group-item d-block">
                                <div class="row">
                                    <div class="col-12 col-sm-6 col-md-2">
                                        <img src="./assets/images/users/w104.jpg" alt="Debbie Schmidt" class="img-fluid rounded-circle mx-auto d-block">
                                    </div>
                                    <div class="col-12 col-sm-6 col-md-10 text-center text-sm-left">
                                        <label class="name">Debbie Schmidt</label>
                                        <br>
                                        <span class="text-muted" data-toggle="tooltip" title="" data-original-title="3903 W Alexander Rd"></span>
                                        <span class="text-muted">3903 W Alexander Rd</span>
                                        <br>
                                        <span class="text-muted" data-toggle="tooltip" title="" data-original-title="(867) 322-1852"></span>
                                        <span class="text-muted small">(867) 322-1852</span>
                                        <br>
                                        <span class="text-muted" data-toggle="tooltip" title="" data-original-title="debbie.schmidt@example.com"></span>
                                        <a href="" class="link small text-truncate">debbie.schmidt@example.com</a>
                                    </div>
                                </div>
                            </li>
                        </ul><!--/contacts list-->
                    </div><!--/collapse-->
                </div>
                <!-- /contacts card -->

                <hr>
                <div class="row">
                    <div class="col-sm-6">

                        <!-- list card -->
                        <div class="card card-default" id="card_list">

                            <!-- list -->
                            <div class="list-group">
                                <a href="#" class="list-group-item">
                                    <p class="list-group-item-text m-0">Grapes</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <p class="list-group-item-text m-0 d-inline">Milk</p>
                                    <span class="float-right"><i class="ion-ios-star-outline"></i></span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <p class="list-group-item-text m-0">Apple Chips</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <p class="list-group-item-text m-0">Fried Dough</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <p class="list-group-item-text m-0">Berries</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <p class="list-group-item-text m-0">Salad</p>
                                </a>
                                <a href="#" class="list-group-item">
                                    <p class="list-group-item-text m-0">Cookies &amp; Crackers</p>
                                </a>
                                <div class="list-group-item p-0">
                                    <button type="button" class="btn btn-primary btn-lg btn-block">View All</button>
                                </div>
                            </div>
                            <!-- /list -->

                        </div>
                        <!-- /list card -->

                    </div><!-- /col -->
                    <div class="col-sm-6">

                        <!-- /accordion -->
                        <div id="accordion" class="accordion">
                            <div class="card card-default panel">
                                <a href="" class="card-header text-white bg-dark" data-toggle="collapse" data-target="#collapseOne">
                                    <span class="card-title">
                                        Accordion Item 1
                                    </span>
                                </a>
                                <div id="collapseOne" class="card-body collapse show" data-parent="#accordion">
                                    <p>Food truck quinoa nesciunt laborum for labo lucn. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Leggings occaecat
                                        craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven&apos;t heard of them accusamus labore sustainable VHS.
                                    </p>
                                </div>
                                <a href="" class="card-header text-white bg-dark collapsed" data-toggle="collapse" data-target="#collapseTwo">
                                    <span class="card-title">
                                       Accordion Item 2
                                    </span>
                                </a>
                                <div id="collapseTwo" class="card-body collapse" data-parent="#accordion">
                                    <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt
                                        cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat
                                        craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven&apos;t heard of them accusamus labore sustainable VHS.
                                    </p>
                                </div>
                                <a href="" class="card-header text-white bg-dark collapsed" data-toggle="collapse" data-target="#collapseThree">
                                    <span class="card-title">
                                      Accordion Item 3
                                    </span>
                                </a>
                                <div id="collapseThree" class="card-body collapse" data-parent="#accordion">
                                    <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt
                                        aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. samus labore sustainable VHS.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- /accordion -->

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<span class="anchor" id="jumbotron"></span>
<section class="d-flex align-items-center h-100">
    <div class="container">
        <div class="row">
            <div class="col mb-4">
                <div class="jumbotron mb-0 d-flex align-items-center flex-column justify-content-center p-5" id="header">
                    <h1 class="display-4">Jumbotron</h1>
                    <p>Some perfectly centered content goes here</p>
                    <p class="lead">
                        <a class="btn btn-secondary btn-lg" href="#" role="button">Learn more</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>

<span class="anchor" id="cards"></span>
<section class="bg-alt">
    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <h2 class="text-center">Cards</h2>
                <hr class="accent mb-3">

                <!-- count blocks -->
                <div class="p-0" id="card_counts">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="card text-white bg-dark text-center pt-2">
                                <div class="card-body card-title">
                                    <h1 class="mb-2"><i class="ion-social-facebook-outline display-2"></i></h1>
                                    <h6 class="text-light">56 Likes</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="card text-white bg-primary text-center pt-2">
                                <div class="card-body card-title">
                                    <h1 class="mb-2"><i class="ion-social-twitter-outline display-2"></i></h1>
                                    <h6 class="text-light">209 Followers</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="card text-white bg-success text-center pt-2">
                                <div class="card-body card-title">
                                    <h1 class="mb-2"><i class="ion-social-snapchat-outline display-2"></i></h1>
                                    <h6 class="text-light">20 Snaps</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 clearfix pt-4"> </div>
                        <div class="col-sm-4">
                            <div class="card text-white bg-danger text-center pt-2">
                                <div class="card-body card-title">
                                    <h1 class="mb-2"><i class="ion-social-youtube-outline display-2"></i></h1>
                                    <h6 class="text-light">1,110 Views</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="card text-white bg-info text-center pt-2">
                                <div class="card-body card-title">
                                    <h1 class="mb-2"><i class="ion-social-reddit-outline display-2"></i></h1>
                                    <h6 class="text-light">90 Views</h6>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="card text-white bg-warning text-center pt-2">
                                <div class="card-body card-title">
                                    <h1 class="mb-2"><i class="ion-social-chrome display-2"></i></h1>
                                    <h6 class="text-light">44 Apps</h6>
                                </div>
                            </div>
                        </div>
                    </div><!--/row-->
                </div>
                <!-- /count blocks -->

                <div class="row pt-4"><!-- this row should be used within a container -->
                    <div class="col-lg-4 col-sm-6 py-3 wow fadeIn">

                        <!-- card -->
                        <div class="card card-default h-100">
                            <div class="card-img-top">
                                <img src="./assets/images/pr-sample2.jpg" class="grayscale img-fluid mx-auto d-block" alt="card image 1">
                            </div>
                            <div class="card-body d-flex flex-column">
                                <p class="text-justify">Ovi lipsim diro? Wi, wi, garius azdipiscing elit. Duis pha codeply.</p>
                                <a href="" data-target="#profileModal" data-toggle="modal" data-caption="Tammy" data-image="./assets/images/pr-sample2.jpg" class="btn btn-outline-secondary btn-lg btn-block text-truncate mt-auto">View Profile</a>
                            </div>
                        </div>
                        <!-- card -->

                    </div>
                    <div class="col-lg-4 col-sm-6 py-3 wow fadeIn">

                        <!-- card -->
                        <div class="card card-default h-100">
                            <div class="card-img-top">
                                <img src="./assets/images/pr-sample1.jpg" class="grayscale img-fluid mx-auto d-block" alt="card image 3">
                            </div>
                            <div class="card-body d-flex flex-column">
                                <p class="text-justify">Shiny, shiny, shiny.</p>
                                <a href="" data-target="#profileModal" data-toggle="modal" data-caption="Marcus" data-image="./assets/images/pr-sample1.jpg" class="btn btn-outline-secondary btn-lg btn-block text-truncate mt-auto">View Profile</a>
                            </div>
                        </div>
                        <!-- card -->

                    </div>
                    <div class="col-lg-4 col-sm-6 mx-auto py-3 wow fadeIn">

                        <!-- card -->
                        <div class="card card-default h-100">
                            <div class="card-img-top">
                                <img src="./assets/images/pr-sample7.jpg" class="grayscale img-fluid mx-auto d-block" alt="card image 3">
                            </div>
                            <div class="card-body d-flex flex-column">
                                <p class="text-justify">Varius azdipiscing elit. Duis pharetra, ovi lipsim diro?</p>
                                <a href="" data-target="#profileModal" data-toggle="modal" data-caption="Carry" data-image="./assets/images/pr-sample7.jpg" class="btn btn-outline-secondary btn-lg btn-block text-truncate mt-auto">View Profile</a>
                            </div>
                        </div>
                        <!-- card -->

                    </div>
                </div><!-- /row -->

            </div>
        </div>
    </div>
</section>

<span class="anchor" id="carousels"></span>
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <h2 class="text-center">Carousels</h2>
                <hr class="accent mb-5">

                <!-- carousel -->

                <!-- carousel -->
                <div id="myCarousel" class="carousel slide full-screen-max" data-ride="carousel">
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item active">
                            <img class="first-slide mx-auto d-block img-fluid" src="./assets/images/interior3_1600.jpg" alt="slide">
                            <div class="carousel-caption pb-3">
                                <h2 class="text-white">Slide Caption</h2>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="third-slide mx-auto d-block img-fluid" src="./assets/images/interior1_1600.jpg" alt="slide">
                            <div class="carousel-caption pb-3">
                                <h2 class="text-white">Add Real Photos</h2>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img class="third-slide mx-auto d-block img-fluid" src="./assets/images/interior2_1600.jpg" alt="slide">
                            <div class="carousel-caption pb-3">
                                <h2 class="text-white">Flip, Flip, ...</h2>
                            </div>
                        </div>
                    </div>
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                        <span class="ion-ios-arrow-left text-white display-3" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                        <span class="ion-ios-arrow-right text-white display-3" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                <!-- /carousel -->
                <!-- /carousel -->

                <hr class="my-5">

                <h3>Content Slider</h3>
                <!-- multi slider content cards-->
                <div class="card card-default">
                    <div class="pt-5">
                        <!-- carousel -->
                        <div id="myCarousel2" class="carousel pt-2" data-ride="carousel" data-interval="2500">
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item row text-center text-info active">
                                    <div class="col-md-3 col-6">
                                        <h1><i class="ion-ios-sunny-outline display-3"></i></h1>
                                        <label>Today</label>
                                    </div>
                                    <div class="col-md-3 col-6">
                                        <h1><i class="ion-ios-sunny display-3"></i></h1>
                                        <label>Tomorrow</label>
                                    </div>
                                    <div class="col-md-3 col-6">
                                        <h1><i class="ion-ios-partlysunny display-3"></i></h1>
                                        <label>Day 3</label>
                                    </div>
                                    <div class="col-md-3 col-6">
                                        <h1><i class="ion-ios-cloudy display-3"></i></h1>
                                        <label>Day 4</label>
                                    </div>
                                </div>
                                <div class="carousel-item row text-center text-info">
                                    <div class="col-md-3 col-6">
                                        <h1><i class="ion-ios-rainy-outline display-3"></i></h1>
                                        <label>Day 5</label>
                                    </div>
                                    <div class="col-md-3 col-6">
                                        <h1><i class="ion-ios-thunderstorm-outline display-3"></i></h1>
                                        <label>Day 6</label>
                                    </div>
                                    <div class="col-md-3 col-6">
                                        <h1><i class="ion-ios-rainy-outline display-3"></i></h1>
                                        <label>Day 7</label>
                                    </div>
                                    <div class="col-md-3 col-6">
                                        <h1><i class="ion-ios-partlysunny display-3"></i></h1>
                                        <label>Day 8</label>
                                    </div>
                                </div>
                                <div class="carousel-item row text-center text-info">
                                    <div class="col-md-3 col-6">
                                        <h1><i class="ion-ios-partlysunny display-3"></i></h1>
                                        <label>Day 9</label>
                                    </div>
                                    <div class="col-md-3 col-6">
                                        <h1><i class="ion-ios-partlysunny display-3"></i></h1>
                                        <label>Day 10</label>
                                    </div>
                                    <div class="col-md-3 col-6">
                                        <h1><i class="ion-ios-sunny display-3"></i></h1>
                                        <label>Day 11</label>
                                    </div>
                                    <div class="col-md-3 col-6">
                                        <h1><i class="ion-ios-sunny display-3"></i></h1>
                                        <label>Day 12</label>
                                    </div>
                                </div>
                            </div>
                            <ol class="carousel-indicators relative mt-5">
                                <li data-target="#myCarousel2" data-slide-to="0" class="active bg-info"></li>
                                <li data-target="#myCarousel2" data-slide-to="1" class="bg-info"></li>
                                <li data-target="#myCarousel2" data-slide-to="2" class="bg-info"></li>
                            </ol>
                        </div>
                        <!-- /carousel -->
                    </div>
                </div>
                <!-- /multi slider content cards-->

                <div class="w-100">
                    <hr class="my-5">
                </div>

                <h3 class="mt-3">Card Slider</h3>
                <div class="row">
                    <!--cards carousel slider-->
                    <div class="carousel slide w-100 mb-5" data-ride="carousel" data-interval="10000" id="postsCarousel">
                        <div class="carousel-inner pb-2">
                            <!-- three (3) sildes per carousel item -->
                            <div class="carousel-item active flex-column flex-sm-row align-items-stretch">
                                <div class="col-md-4">
                                    <div class="card card-default h-100">
                                        <div class="card-img-top card-img-top-200 card-zoom">
                                            <a href="./blog-detail.html"><img class="img-fluid mx-auto d-block" src="./assets/images/sample16.jpg" alt="Carousel 1"></a>
                                        </div>
                                        <div class="card-body pt-2 pl-1">
                                            <h6 class="small text-wide text-truncate pb-1">Insight</h6>
                                            <h2>
                                                <a href="./blog-detail.html">Why Stuff Happens Every Year.</a>
                                            </h2>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card card-default h-100">
                                        <div class="card-img-top card-img-top-200 card-zoom">
                                            <a href="./blog-detail.1.html"><img class="img-fluid mx-auto d-block" src="./assets/images/sample20.jpg" alt="Carousel 2"></a>
                                        </div>
                                        <div class="card-body pt-2 pl-1">
                                            <h6 class="small text-wide text-truncate pb-1">Development</h6>
                                            <h2>
                                                <a href="./blog-detail.html">How to Make Every Line Count.</a>
                                            </h2>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card card-default h-100">
                                        <div class="card-img-top card-img-top-200 card-zoom">
                                            <a href="./blog-detail.html"><img class="img-fluid mx-auto d-block" src="./assets/images/sample5.jpg" alt="Carousel 3"></a>
                                        </div>
                                        <div class="card-body pt-2 pl-1">
                                            <h6 class="small text-wide text-truncate pb-1">Design</h6>
                                            <h2>
                                                <a href="./blog-detail.html">Why Responsive is Essential.</a>
                                            </h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item flex-column flex-sm-row align-items-stretch">
                                <div class="col-md-4">
                                    <div class="card card-default h-100">
                                        <div class="card-img-top card-img-top-200 card-zoom">
                                            <a href="./blog-detail.1.html"><img class="img-fluid mx-auto d-block" src="./assets/images/sample10.jpg" alt="Carousel 4"></a>
                                        </div>
                                        <div class="card-body pt-2 pl-1">
                                            <h6 class="small text-wide text-truncate pb-1">Another</h6>
                                            <h2>
                                                <a href="./blog-detail.html">Tagline or call-to-action.</a>
                                            </h2>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card card-default h-100">
                                        <div class="card-img-top card-img-top-200 card-zoom">
                                            <a href="./blog-detail.html"><img class="img-fluid mx-auto d-block" src="./assets/images/sample40.jpg" alt="Carousel 5"></a>
                                        </div>
                                        <div class="card-body pt-2 pl-1">
                                            <h6 class="small text-wide text-truncate pb-1">Category 1</h6>
                                            <h2>
                                                <a href="./blog-detail.html">Here&apos;s my Story Title.</a>
                                            </h2>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="card card-default h-100">
                                        <div class="card-img-top card-img-top-200 card-zoom">
                                            <a href="./blog-detail.html"><img class="img-fluid mx-auto d-block" src="./assets/images/sample54.jpg" alt="Carousel 6"></a>
                                        </div>
                                        <div class="card-body pt-2 pl-1">
                                            <h6 class="small text-wide text-truncate pb-1">Category 3</h6>
                                            <h2>
                                                <a href="./blog-detail.1.html">Catchy Title of a Blog Post.</a>
                                            </h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="row">
                                <div class="col-12 text-md-right text-center lead">
                                    <a class="prev pr-2" data-target="#postsCarousel" data-slide="prev" href="" title="Newer"><i class="fa fa-chevron-left ion-ios-arrow-left"></i></a>
                                    <a class="next pl-2" data-target="#postsCarousel" data-slide="next" href="" title="Older"><i class="fa fa-chevron-right ion-ios-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/multi cards carousel slider-->

                </div>
            </div>
        </div>

    </div>
</section>

<span class="anchor" id="comments"></span>
<section class="bg-alt">
    <div class="container">
        <div class="comments row" id="comments">
            <div class="col-12 mb-4">
                <h3 class="mb-4">Comments</h3>
                <!-- comment -->
                <div class="comment mb-3 row">
                    <div class="comment-avatar col-lg-1 ml-lg-auto col-md-2 ml-md-0 col-4 ml-auto text-center">
                        <a href=""><img class="mx-auto rounded-circle img-fluid" src="./assets/images/users/m103.jpg" alt="avatar"></a>
                    </div>
                    <div class="comment-content col-lg-11 col-md-10 col-12">
                        <h6 class="small comment-meta"><a href="#">admin</a> | Today, 2:38</h6>
                        <div class="comment-body">
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod <a href="">link to a page</a> tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.
                                <br>
                                <a href="" class="text-right small"><i class="ion-reply"></i> Reply</a>
                            </p>
                        </div>
                    </div>
                    <!-- reply is indented -->
                    <div class="comment-reply col-lg-11 ml-lg-auto col-md-10 ml-md-auto col-12">
                        <div class="row">
                            <div class="comment-avatar col-lg-1 col-md-2 text-center">
                                <a href=""><img class="mx-auto rounded-circle img-fluid" src="./assets/images/users/m101.jpg" alt="avatar"></a>
                            </div>
                            <div class="comment-content col-lg-11 col-md-10 col-12">
                                <h6 class="small comment-meta"><a href="#">phildownney</a> | Today, 12:31</h6>
                                <div class="comment-body">
                                    <p>Really?? Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitat.
                                        <br>
                                        <a href="" class="text-right small"><i class="ion-reply"></i> Reply</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /reply is indented -->
                </div>
                <!-- /comment -->
                <!-- comment -->
                <div class="comment mb-3 row">
                    <div class="comment-avatar col-lg-1 ml-lg-auto col-md-2 ml-md-0 col-4 ml-auto text-center">
                        <a href=""><img class="mx-auto rounded-circle img-fluid" src="./assets/images/users/w102.jpg" alt="avatar"></a>
                    </div>
                    <div class="comment-content col-lg-11 col-md-10 col-12">
                        <h6 class="small comment-meta"><a href="#">maslarino</a> | Yesterday, 5:03 PM</h6>
                        <div class="comment-body">
                            <p>Sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo.
                                <br>
                                <a href="" class="text-right small"><i class="ion-reply"></i> Reply</a>
                            </p>
                        </div>
                    </div>
                </div>
                <!-- /comment -->
                <div class="row pt-2">
                    <div class="col-12">
                        <a href="" class="btn btn-sm btn-primary">Comment</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<span class="anchor" id="alerts"></span>
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="text-center">Alerts &amp; Notifications</h2>
                <hr class="accent my-4">
                <div class="row">
                    <div class="col-md-12">
                        <div class="alert alert-success" role="alert">
                            <h4 class="alert-heading">Yes!</h4>
                            Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content. Imagine the content here.
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6">
                        <!-- standard alerts -->
                        <div class="mt-1 alert alert-info alert-dismissible fade show" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&#xD7;</span>
                            </button>
                            <span class="font-weight-bold">Heads up!</span> Vestibulum tincidunt ullamcorper eros eget luctus. Nulla <a href="#" class="alert-link">info</a> porttitor libero.
                        </div>

                        <div class="mt-1 alert alert-danger alert-dismissible fade show" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&#xD7;</span>
                            </button>
                            <span class="font-weight-bold">Yo there!</span> You should check <a href="#" class="alert-link">danger</a> in on some of those fields below.
                        </div>

                        <div class="mt-1 alert alert-warning alert-dismissible fade show" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&#xD7;</span>
                            </button>
                            Food truck fixie locavore Exercitation, blog <a href="#" class="alert-link">warning</a> sartorial PBR leggings.
                        </div>
                        <!-- /standard alerts -->
                    </div>
                    <div class="col-sm-6">
                        <!-- inverse background alerts -->
                        <div class="mt-1 alert alert-primary bg-primary text-white alert-dismissible fade show" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&#xD7;</span>
                            </button>
                            <span class="font-weight-bold">Womp!</span> Vestibulum tincidunt ullamcorper eros eget luctus. Nulla porttitor libero.
                        </div>

                        <div class="mt-1 alert alert-danger bg-danger text-white alert-dismissible fade show" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&#xD7;</span>
                            </button>
                            <span class="font-weight-bold">Danger!</span> Vestibulum tincidunt ullamcorper eros eget luctus. Nulla porttitor libero.
                        </div>

                        <div class="mt-1 alert alert-success bg-success alert-dismissible fade show" role="alert">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&#xD7;</span>
                            </button>
                            <span class="font-weight-bold">Success!</span> Vestibulum tincidunt ullamcorper eros eget luctus. Nulla porttitor libero.
                        </div>
                        <!-- /inverse background alerts -->
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

<span class="anchor" id="imageGrids"></span>
<section class="bg-alt">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="text-center">Thumbnails &amp; Image Grids</h2>
                <hr class="accent my-4">
                <p class="lead text-center">There are endless, responsive layout options with gutterless, spaced, rounded or circular images.</p>

                <!-- row of thumnnail cards -->
                <div class="row wow slideInUp my-4">
                    <div class="col-lg-2 col-md-4 col-sm-6 col-12 text-center">
                        <div class="card card-default">
                            <div class="card-img-top">
                                <a href="#galleryModal" data-toggle="modal" data-image="./assets/images/sample10.jpg" data-caption="Camera 7700"><img src="./assets/images/sample10.jpg" class="mx-auto img-fluid grayscale" alt="image"></a>
                            </div>
                            <div class="card-body">
                                <h3 class="card-title">Uno.</h3>
                                <h1 class="text-accent">1</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-6 col-12 text-center">
                        <div class="card card-default">
                            <div class="card-img-top">
                                <a href="#galleryModal" data-toggle="modal" data-image="./assets/images/sample5.jpg" data-caption="Camera 9200"><img src="./assets/images/sample5.jpg" class="mx-auto img-fluid grayscale" alt="image"></a>
                            </div>
                            <div class="card-body">
                                <h3 class="card-title">Dos.</h3>
                                <h1 class="text-accent">2</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-6 col-12 text-center">
                        <div class="card card-default">
                            <div class="card-img-top">
                                <a href="#galleryModal" data-toggle="modal" data-image="./assets/images/sample20.jpg" data-caption="Camera 290"><img src="./assets/images/sample20.jpg" class="mx-auto img-fluid grayscale" alt="image"></a>
                            </div>
                            <div class="card-body">
                                <h3 class="card-title">Tres.</h3>
                                <h1 class="text-accent">3</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-6 col-12 text-center">
                        <div class="card card-default">
                            <div class="card-img-top">
                                <a href="#galleryModal" data-toggle="modal" data-image="./assets/images/sample16.jpg" data-caption="Camera 550"><img src="./assets/images/sample16.jpg" class="mx-auto img-fluid grayscale" alt="image"></a>
                            </div>
                            <div class="card-body">
                                <h3 class="card-title">Quatro.</h3>
                                <h1 class="text-accent">4</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-6 col-12 text-center">
                        <div class="card card-default">
                            <div class="card-img-top">
                                <a href="#galleryModal" data-toggle="modal" data-image="./assets/images/sample54.jpg" data-caption="Camera 920"><img src="./assets/images/sample54.jpg" class="mx-auto img-fluid grayscale" alt="image"></a>
                            </div>
                            <div class="card-body">
                                <h3 class="card-title">Cinco.</h3>
                                <h1 class="text-accent">5</h1>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-6 col-12 text-center">
                        <div class="card card-default">
                            <div class="card-img-top">
                                <a href="#galleryModal" data-toggle="modal" data-image="./assets/images/sample40.jpg" data-caption="Camera 4200"><img src="./assets/images/sample40.jpg" class="mx-auto img-fluid grayscale" alt="image"></a>
                            </div>
                            <div class="card-body">
                                <h3 class="card-title">Seis.</h3>
                                <h1 class="text-accent">6</h1>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /row of thumnnail cards -->

                <hr class="my-4">

                <!-- photo grid no spacing no gutters -->
                <div class="row m-0">
                    <div class="col-sm-4 col-6 p-0 media">
                        <a href="" data-target="#galleryModal" data-toggle="modal" data-image="./assets/images/sample10.jpg"><img src="./assets/images/sample10.jpg" class="img-fluid img-hover mx-auto" alt="image"></a>
                    </div>
                    <div class="col-sm-4 col-6 p-0 media">
                        <a href="" data-target="#galleryModal" data-toggle="modal" data-image="./assets/images/sample16.jpg"><img src="./assets/images/sample16.jpg" class="img-fluid img-hover mx-auto" alt="image"></a>
                    </div>
                    <div class="col-sm-4 col-6 p-0 media">
                        <a href="" data-target="#galleryModal" data-toggle="modal" data-image="./assets/images/sample40.jpg"><img src="./assets/images/sample40.jpg" class="img-fluid img-hover mx-auto" alt="image"></a>
                    </div>
                    <div class="col-sm-4 col-6 p-0 media">
                        <a href="" data-target="#galleryModal" data-toggle="modal" data-image="./assets/images/sample92.jpg"><img src="./assets/images/sample92.jpg" class="img-fluid img-hover mx-auto" alt="image"></a>
                    </div>
                    <div class="col-sm-4 col-6 p-0 media">
                        <a href="" data-target="#galleryModal" data-toggle="modal" data-image="./assets/images/sample20.jpg"><img src="./assets/images/sample20.jpg" class="img-fluid img-hover mx-auto" alt="image"></a>
                    </div>
                    <div class="col-sm-4 col-6 p-0 media">
                        <a href="" data-target="#galleryModal" data-toggle="modal" data-image="./assets/images/sample54.jpg"><img src="./assets/images/sample54.jpg" class="img-fluid img-hover mx-auto" alt="image"></a>
                    </div>
                </div>
                <!-- /photo grid no spacing -->

                <hr class="my-4">

                <!-- photo grid -->
                <div class="card card-default mb-4" id="card_thumbnails">
                    <div class="card-body">
                        <div class="row p-1 wow fadeIn">
                            <div class="col-4">
                                <img src="./assets/images/sample10.jpg" class="img-fluid img-rounded mx-auto" alt="image">
                            </div>
                            <div class="col-4">
                                <img src="./assets/images/sample16.jpg" class="img-fluid img-rounded mx-auto" alt="image">
                            </div>
                            <div class="col-4">
                                <img src="./assets/images/sample40.jpg" class="img-fluid img-rounded mx-auto" alt="image">
                            </div>
                            <div class="col-12 p-3"></div>
                            <div class="col-4">
                                <img src="./assets/images/sample92.jpg" class="img-fluid img-rounded mx-auto" alt="image">
                            </div>
                            <div class="col-4">
                                <img src="./assets/images/sample20.jpg" class="img-fluid img-rounded mx-auto" alt="image">
                            </div>
                            <div class="col-4">
                                <img src="./assets/images/sample54.jpg" class="img-fluid img-rounded mx-auto" alt="image">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /photo grid -->

                <!-- row of circle images -->
                <div class="row mt-5">
                    <div class="col-lg-6 col-md-8 col-sm-10 mx-auto">
                        <div class="row">
                            <div class="col-md-2 col-sm-4 col-6">
                                <a href="" data-target="#profileModal" data-toggle="modal" data-caption="Brant Kilroy" data-image="./assets/images/users/m100.jpg"><img src="./assets/images/users/m100.jpg" class="mx-auto rounded-circle img-fluid d-block" alt="image"></a>
                                <h6 class="text-center small mt-1">Brant</h6>
                            </div>
                            <div class="col-md-2 col-sm-4 col-6">
                                <a href="" data-target="#profileModal" data-toggle="modal" data-caption="Ellie Stevens" data-image="./assets/images/users/w100.jpg"><img src="./assets/images/users/w100.jpg" class="mx-auto rounded-circle img-fluid d-block" alt="image"></a>
                                <h6 class="text-center small mt-1">Ellie</h6>
                            </div>
                            <div class="col-md-2 col-sm-4 col-6">
                                <a href="" data-target="#profileModal" data-toggle="modal" data-caption="David Wilson" data-image="./assets/images/users/m101.jpg"><img src="./assets/images/users/m101.jpg" class="mx-auto rounded-circle img-fluid d-block" alt="image"></a>
                                <h6 class="text-center small mt-1">David</h6>
                            </div>
                            <div class="col-md-2 col-sm-4 col-6">
                                <a href="" data-target="#profileModal" data-toggle="modal" data-caption="Amelia Curtis" data-image="./assets/images/users/w101.jpg"><img src="./assets/images/users/w101.jpg" class="mx-auto rounded-circle img-fluid d-block" alt="image"></a>
                                <h6 class="text-center small mt-1">Amelia</h6>
                            </div>
                            <div class="col-md-2 col-sm-4 col-6">
                                <a href="" data-target="#profileModal" data-toggle="modal" data-caption="Erick Nagger" data-image="./assets/images/users/m103.jpg"><img src="./assets/images/users/m103.jpg" class="mx-auto rounded-circle img-fluid d-block" alt="image"></a>
                                <h6 class="text-center small mt-1">Erick</h6>
                            </div>
                            <div class="col-md-2 col-sm-4 col-6">
                                <a href="" data-target="#profileModal" data-toggle="modal" data-caption="Mary Kotkowski" data-image="./assets/images/users/w103.jpg"><img src="./assets/images/users/w103.jpg" class="mx-auto rounded-circle img-fluid d-block" alt="image"></a>
                                <h6 class="text-center small mt-1">Mary</h6>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /row of circle images -->

                <h5 class="text-center text-uppercase mt-3"></h5>

                <!-- row of circle images -->
                <div class="row mt-4">
                    <div class="col-lg-6 col-md-8 col-sm-10 mx-auto">
                        <div class="row">
                            <div class="col-sm-4 col-6">
                                <a href="" data-target="#profileModal" data-toggle="modal" data-caption="Nick" data-image="./assets/images/users/m_5_230_345.jpg"><img src="./assets/images/users/m_5_230_120.jpg" class="mx-auto img-rounded img-fluid img-hover" alt="image"></a>
                                <h6 class="text-center small mt-1">Nick</h6>
                            </div>
                            <div class="col-sm-4 col-6">
                                <a href="" data-target="#profileModal" data-toggle="modal" data-caption="Conley" data-image="./assets/images/users/w_2_230_345.jpg"><img src="./assets/images/users/w_2_230_120.jpg" class="mx-auto img-rounded img-fluid img-hover" alt="image"></a>
                                <h6 class="text-center small mt-1">Conley</h6>
                            </div>
                            <div class="col-sm-4 col-6">
                                <a href="" data-target="#profileModal" data-toggle="modal" data-caption="Mark" data-image="./assets/images/users/m_2_230_345.jpg"><img src="./assets/images/users/m_2_230_120.jpg" class="mx-auto img-rounded img-fluid img-hover" alt="image"></a>
                                <h6 class="text-center small mt-1">Mark</h6>
                            </div>
                            <div class="col-sm-4 col-6">
                                <a href="" data-target="#profileModal" data-toggle="modal" data-caption="Carol" data-image="./assets/images/users/w_4_230_345.jpg"><img src="./assets/images/users/w_4_230_120.jpg" class="mx-auto img-rounded img-fluid img-hover" alt="image"></a>
                                <h6 class="text-center small mt-1">Carol</h6>
                            </div>
                            <div class="col-sm-4 col-6">
                                <a href="" data-target="#profileModal" data-toggle="modal" data-caption="Devon" data-image="./assets/images/users/m_7_230_345.jpg"><img src="./assets/images/users/m_7_230_120.jpg" class="mx-auto img-rounded img-fluid img-hover" alt="image"></a>
                                <h6 class="text-center small mt-1">Devon</h6>
                            </div>
                            <div class="col-sm-4 col-6">
                                <a href="" data-target="#profileModal" data-toggle="modal" data-caption="Anastasia" data-image="./assets/images/users/w_3_230_345.jpg"><img src="./assets/images/users/w_3_230_120.jpg" class="mx-auto img-rounded img-fluid img-hover" alt="image"></a>
                                <h6 class="text-center small mt-1">Anastasia</h6>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /row of circle images -->

            </div>
        </div>
    </div>
</section>

<span class="anchor" id="masonry"></span>
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="text-center">Masonry</h2>
                <hr class="accent my-4">
                <p class="lead text-center">Stack images or content of varying height.</p>
            </div>
            <div class="col-md-12 py-2">
                <!-- masonry card columns -->
                <div class="card-columns mt-2">
                    <div class="card card-default mb-2">
                        <div class="card-img-top wow fadeIn">
                            <a href=""><img src="./assets/images/pr-sample5.jpg" alt="Card image" class="mx-auto img-fluid d-block"></a>
                        </div>
                        <div class="card-body pt-2 pl-1">
                            <h6 class="small text-wide">Profile</h6>
                            <h2>
                                <a href="">Cary Claude-Mills</a>
                            </h2>
                        </div>
                    </div>
                    <div class="card card-default mb-2">
                        <div class="card-img-top wow fadeIn">
                            <a href=""><img src="./assets/images/mercantile_500_0006.png" class="mx-auto img-fluid d-block"></a>
                        </div>
                        <div class="card-body pt-2 pb-2 pl-1">
                            <h6 class="small text-wide">Call to Action</h6>
                            <h2 class="card-title"><a href="">Micro-Business Boom</a></h2>
                        </div>
                    </div>
                    <div class="card card-default mb-2">
                        <div class="card-img-top wow fadeIn">
                            <a href=""><img src="./assets/images/mercantile_500_0002.png" alt="Card image" class="mx-auto img-fluid d-block"></a>
                        </div>
                        <div class="card-body pt-2 pl-1">
                            <h6 class="small text-wide">Development</h6>
                            <h2>
                                <a href="">Excellence is Afoot</a>
                            </h2>
                        </div>
                    </div>
                    <div class="card card-default mb-2">
                        <div class="card-img-top wow fadeIn">
                            <a href=""><img src="./assets/images/office6.jpg" class="mx-auto img-fluid d-block"></a>
                        </div>
                        <div class="card-body py-2 pl-1">
                            <h6 class="small text-wide">Collaboration</h6>
                            <h2 class="card-title"><a href="">Clever Workspaces</a></h2>
                        </div>
                    </div>
                    <div class="card card-default mb-2">
                        <div class="card-body pt-2 pb-2 bg-alt">
                            <p class="text-secondary">
                                Duis pharetra codeply varius quam sit amet vulputate. Quisque mauris augue, molestie tincidunt codeply nisi. Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor
                                accumsan. Aliquam in felis sit amet augue.
                            </p>
                        </div>
                    </div>
                    <div class="card card-default mb-2">
                        <div class="card-img-top wow fadeIn">
                            <a href=""><img src="./assets/images/mercantile_500_0000.png" class="mx-auto img-fluid d-block"></a>
                        </div>
                        <div class="card-body pl-1 py-2">
                            <h6 class="text-wide small">Resonate</h6>
                            <h2 class="card-title"><a href="">Read the Manual</a></h2>
                        </div>
                    </div>
                    <div class="card card-default mb-2">
                        <div class="card-body pt-2 pb-2 bg-alt">
                            <p class="text-secondary">
                                Duis pharetra codeply varius quam sit amet vulputate. Quisque mauris augue, molestie tincidunt codeply nisi. Sed ac orci quis tortor imperdiet venenatis. Duis elementum auctor
                                accumsan. Aliquam in felis sit amet augue.
                            </p>
                        </div>
                    </div>
                    <div class="card card-default mb-2">
                        <div class="card-img-top wow fadeIn">
                            <a href=""><img src="./assets/images/office6.jpg" class="mx-auto img-fluid d-block"></a>
                        </div>
                        <div class="card-body pt-2 pl-1">
                            <h6 class="small text-wide">Frontend</h6>
                            <h2 class="card-title"><a href="">Making Sense of CSS</a></h2>
                        </div>
                    </div>
                    <div class="card card-default mb-2">
                        <div class="card-img-top wow fadeIn">
                            <a href=""><img src="./assets/images/office4.jpg" class="mx-auto img-fluid d-block"></a>
                        </div>
                        <div class="card-body py-2 pl-1">
                            <h6 class="small text-wide">Call to Action</h6>
                            <h2 class="card-title"><a href="">Not What You Expect</a></h2>
                        </div>
                    </div>
                    <div class="card card-default mb-2">
                        <div class="card-img-top wow fadeIn">
                            <a href=""><img src="./assets/images/mercantile_500_0004.png" class="mx-auto img-fluid d-block"></a>
                        </div>
                        <div class="card-body pt-2 pb-2 pl-1">
                            <h6 class="small text-wide">Groovy</h6>
                            <h2 class="card-title"><a href="">Bikes Are Hip</a></h2>
                        </div>
                    </div>
                    <div class="card card-default mb-2">
                        <div class="card-body pt-2 pb-2 bg-alt">
                            <p class="text-secondary">
                                Wolf-moon hashtag church-key Odd Future. Austin messenger bag normcore, Helvetica Williamsburg sartorial tote bag distillery Portland before they sold out gastropub taxidermy Vice.
                            </p>
                        </div>
                    </div>
                    <div class="card card-default mb-2">
                        <div class="card-img-top wow fadeIn">
                            <a href=""><img src="./assets/images/mercantile_500_0008.png" class="mx-auto img-fluid d-block"></a>
                        </div>
                        <div class="card-body pl-1 py-2">
                            <h6 class="text-wide small">Desire</h6>
                            <h2 class="card-title"><a href="">Essential Must Haves</a></h2>
                        </div>
                    </div>
                </div>
                <!-- /masonry card columns -->
            </div>
        </div>
    </div>
</section>

<span class="anchor" id="modals"></span>
<section class="bg-alt">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="text-center">Modals</h2>
                <hr class="accent my-4">
                <p class="lead text-center">
                    Modals are streamlined, but flexible overlay dialog boxes.
                </p>

                <h6 class="text-center text-wide mt-3">Examples</h6>
                <ul class="list-inline text-center">
                    <li class="list-inline-item py-1"><a href="" class="btn btn-outline-secondary btn-sm" data-target="#myModal" data-toggle="modal">Standard</a></li>
                    <li class="list-inline-item py-1"><a href="" class="btn btn-outline-secondary btn-sm" data-target="#profileModal" data-toggle="modal" data-caption="Mark Evans" data-image="./assets/images/users/m_2_230_345.jpg">Profile</a></li>
                    <li class="list-inline-item py-1"><a href="" class="btn btn-outline-secondary btn-sm" data-target="#galleryModal" data-toggle="modal" data-caption="Gallery Image" data-image="./assets/images/weather.jpg">Gallery</a></li>
                    <li class="list-inline-item py-1"><a href="" class="btn btn-outline-secondary btn-sm" data-target="#smallModal" data-toggle="modal">Small</a></li>
                    <li class="list-inline-item py-1"><a href="" class="btn btn-outline-secondary btn-sm" data-target="#fullModal" data-toggle="modal" data-caption="Mark" data-image="./assets/images/users/m_2_230_345.jpg">Full Screen</a></li>
                </ul>

                <!-- standard modal -->
                <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&#xD7;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <p>
                                    Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.
                                    Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.
                                    Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
                                    Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.
                                </p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- small modal -->
                <div class="modal" tabindex="-1" role="dialog" aria-hidden="true" id="smallModal">
                    <div class="modal-dialog modal-sm modal-dialog-centered">
                        <div class="modal-content text-center">
                            <div class="modal-body text-center">
                                <div class="alert text-white bg-primary fade show" role="alert">
                                    <span class="font-weight-bold">Womp!</span> There it is.
                                </div>
                                <a data-dismiss="modal">
                                    <span aria-hidden="true" class="display-2">&#xD7;</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- full screen modal -->
                <div class="modal" tabindex="-1" role="dialog" aria-hidden="true" id="fullModal">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content text-center p-3">
                            <div class="modal-body text-center">
                                <h1>Full Screen Modal</h1>
                                <p class="lead">
                                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt
                                    aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Ad vegan excepteur butcher vice lomo. Leggings occaecat
                                    craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven&apos;t heard of them accusamus labore sustainable VHS.
                                </p>
                                <button type="button" data-dismiss="modal" class="btn btn-lg btn-primary mt-2 text-uppercase">
                                    <span aria-hidden="true">Close</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

<span class="anchor" id="tables"></span>
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <h2 class="text-center">Tables</h2>
                <hr class="accent my-4">
                <p class="lead text-center">
                    Make a classic HTML element a little fancier.
                </p>

                <table class="table table-hover table-sm">
                    <thead>
                    <tr>
                        <th>Location</th>
                        <th>Points</th>
                        <th>Region</th>
                        <th class="text-right">Mean</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr><td>Newport, RI, USA</td>
                        <td>3</td>
                        <td>New England</td>
                        <td class="text-right">45001</td>
                    </tr>
                    <tr><td>Chicago, IL, USA</td>
                        <td>5</td>
                        <td>Mid West</td>
                        <td class="text-right">106455</td>
                    </tr>
                    <tr><td>New York, NY, USA</td>
                        <td>10</td>
                        <td>Mid Atlantic</td>
                        <td class="text-right">39097</td>
                    </tr>
                    </tbody>
                </table>

                <hr>

                <div class="table-responsive">
                    <table class="table table-striped table-hover table-bordered">
                        <thead>
                        <tr>
                            <th class="id"><a>Id <i class="fa fa-sort"></i></a></th>
                            <th class="name"><a>Name <i class="fa fa-sort"></i></a></th>
                            <th class="description">Description</th>
                            <th class="field3"><a>Link <i class="fa fa-sort"></i></a></th>
                            <th class="field4"><a>Reason <i class="fa fa-sort"></i></a></th>
                            <th class="field5"><a>Area <i class="fa fa-sort"></i></a></th>
                            <th class="text-center"><i class="ion-ios-trash-outline"></i></th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>alpha1</td>
                            <td>name 1</td>
                            <td>Description of item #1</td>
                            <td><a href="#" class="link">alpha</a></td>
                            <td>Some stuff about rec: 1</td>
                            <td>23</td>
                            <td class="text-center"><a href="">x</a></td>
                        </tr><tr>
                            <td>bob10</td>
                            <td>name 10</td>
                            <td>Description of item #10</td>
                            <td><a href="#" class="link">bob</a></td>
                            <td>Some stuff about rec: 10</td>
                            <td>22</td>
                            <td class="text-center"><a href="">x</a></td>
                        </tr><tr>
                            <td>daniel11</td>
                            <td>name 11</td>
                            <td>Description of item #11</td>
                            <td><a href="#" class="link">daniel</a></td>
                            <td>Some stuff about rec: 11</td>
                            <td>44</td>
                            <td class="text-center"><a href="">x</a></td>
                        </tr><tr>
                            <td>grace12</td>
                            <td>name 12</td>
                            <td>Description of item #12</td>
                            <td><a href="#" class="link">grace</a></td>
                            <td>Some stuff about rec: 12</td>
                            <td>19</td>
                            <td class="text-center"><a href="">x</a></td>
                        </tr><tr>
                            <td>alpha13</td>
                            <td>name 13</td>
                            <td>Description of item #13</td>
                            <td><a href="#" class="link">alpha</a></td>
                            <td>Some stuff about rec: 13</td>
                            <td>13</td>
                            <td class="text-center"><a href="">x</a></td>
                        </tr><tr>
                            <td>alpha14</td>
                            <td>name 14</td>
                            <td>Description of item #14</td>
                            <td><a href="#" class="link">alpha</a></td>
                            <td>Some stuff about rec: 14</td>
                            <td>14</td>
                            <td class="text-center"><a href="">x</a></td>
                        </tr>
                        </tbody>
                        <tfoot>
                        <tr>
                            <td colspan="7">
                                <div class="text-center">
                                    <nav aria-label="Page navigation">
                                        <ul class="pagination justify-content-center">
                                            <li class="page-item">
                                                <a class="page-link" href="" aria-label="Previous">
                                                    <i class="fa fa-chevron-left ion-ios-arrow-left"></i>
                                                    <span class="sr-only">Previous</span>
                                                </a>
                                            </li>
                                            <li class="page-item"><a class="page-link" href="">1</a></li>
                                            <li class="page-item"><a class="page-link" href="">2</a></li>
                                            <li class="page-item"><a class="page-link" href="">3</a></li>
                                            <li class="page-item"><a class="page-link" href="">4</a></li>
                                            <li class="page-item"><a class="page-link" href="">5</a></li>
                                            <li class="page-item">
                                                <a class="page-link" href="" aria-label="Next">
                                                    <i class="fa fa-chevron-right ion-ios-arrow-right"></i>
                                                    <span class="sr-only">Next</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </td>
                        </tr>
                        </tfoot>
                    </table>
                </div>

                <hr>

                <div class="row">
                    <div class="col-sm-6">
                        <table class="table table-bordered table-hover">
                            <thead class="thead-inverse">
                            <tr>
                                <th>Location</th>
                                <th>Points</th>
                                <th class="text-right">Mean</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr><td>Long Island, NY, USA</td>
                                <td>7</td>
                                <td class="text-right">45,001</td>
                            </tr>
                            <tr><td>Chicago, Illinois, USA</td>
                                <td>8</td>
                                <td class="text-right">106,455</td>
                            </tr>
                            <tr><td>New York, New York, USA</td>
                                <td>4</td>
                                <td class="text-right">39,097</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="col-sm-6">
                        <table class="table table-bordered table-hover">
                            <thead class="thead-inverse">
                            <tr>
                                <th>Location</th>
                                <th>Points</th>
                                <th class="text-right">Result</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>Long Island, NY, USA</td>
                                <td>1</td>
                                <td class="text-right">5,001</td>
                            </tr>
                            <tr class="bg-info">
                                <td>Chicago, Illinois, USA</td>
                                <td>2</td>
                                <td class="text-right">6,455</td>
                            </tr>
                            <tr>
                                <td>New York, New York, USA</td>
                                <td>3</td>
                                <td class="text-right">9,097</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

<span class="anchor" id="accordions"></span>
<section class="bg-alt">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="text-center">Accordions &amp; Collapsible</h2>
                <hr class="accent my-4">
                <p class="lead text-center">
                    A simple way to toggle content visibility.
                </p>

                <div class="row mt-2">
                    <div class="col-lg-6">
                        <button class="btn btn-outline-primary btn-toggle btn-lg mb-2" data-target="#collapseMe" data-toggle="collapse">
                            <span>Toggle &#xA0; </span>
                        </button>
                        <div class="collapse show" id="collapseMe">
                            <div class="card card-default">
                                <div class="card-body">
                                    <div class="row p-3">
                                        <div class="col-12">
                                            <p class="">Shiny, shiny. Varius azdipiscing elit. Duis pharetra codeply varius quam sit amet vulputate. Ovi lipsim diro?</p>
                                            <button class="btn btn-secondary">Take Action!</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <!-- /accordion -->
                        <div id="accordion2" class="accordion">
                            <div class="card">
                                <a class="card-header" data-toggle="collapse" href="" data-target="#collapseOne2">
                                    <span class="card-title">
                                        Panel 1
                                    </span>
                                </a>
                                <div id="collapseOne2" class="card-body collapse show" data-parent="#accordion2">
                                    <p>Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat
                                        craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven&apos;t heard of them accusamus labore sustainable VHS.
                                    </p>
                                </div>
                                <a class="card-header collapsed" data-toggle="collapse" href="" data-target="#collapseTwo2">
                                    <span class="card-title">
                                        Panel 2
                                    </span>
                                </a>
                                <div id="collapseTwo2" class="card-body collapse" data-parent="#accordion2">
                                    <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. Officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt
                                        aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat
                                        craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven&apos;t heard of them accusamus labore sustainable VHS.
                                    </p>
                                </div>
                                <a class="card-header collapsed" data-toggle="collapse" href="" data-target="#collapseThree2">
                                    <span class="card-title">
                                        Panel 3
                                    </span>
                                </a>
                                <div id="collapseThree2" class="card-body collapse" data-parent="#accordion2">
                                    <p>Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt
                                        aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. samus labore sustainable VHS.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- /accordion -->
                    </div>
                </div><!--/row-->

            </div>
        </div>
    </div>
</section>

<span class="anchor" id="buttons"></span>
<section class="h-100">
    <div class="container h-100">
        <div class="row h-100 align-items-center">
            <div class="col-12 text-center">
                <h2 class="text-center">Buttons &amp; Colors</h2>
                <hr class="accent my-4">
                <div class="d-flex justify-content-center flex-column flex-sm-row mt-2">
                    <button class="btn mr-1">Button</button>
                    <button class="btn btn-primary mr-1">Primary</button>
                    <button class="btn btn-secondary mr-1">Secondary</button>
                    <button class="btn btn-info mr-1">Info</button>
                    <button class="btn btn-danger mr-1">Danger</button>
                    <button class="btn btn-success mr-1">Success</button>
                    <button class="btn btn-warning mr-1">Warning</button>
                </div>
            </div>
        </div>
    </div>
</section>

<span class="anchor" id="badges"></span>
<section>
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2 class="text-center">Badges &amp; Tags</h2>
                <hr class="accent my-4">
                <p class="lead text-center">
                    Perfect for short context specific labels &amp; content.
                </p>
                <div class="row mt-2">
                    <div class="col-lg-6 text-center pb-2">
                        <a href=""><span class="badge badge-dark">tag</span></a>
                        <a href=""><span class="badge badge-success">bootstrap</span></a>
                        <a href=""><span class="badge badge-danger">wordpress</span></a>
                        <a href=""><span class="badge badge-warning">theme</span></a>
                        <a href=""><span class="badge badge-info">design</span></a>
                        <a href=""><span class="badge badge-primary">template</span></a>

                        <h5 class="mt-2">
                            <a href=""><span class="badge badge-dark">default</span></a>
                            <a href=""><span class="badge badge-success">success</span></a>
                            <a href=""><span class="badge badge-info">info</span></a>
                            <a href=""><span class="badge badge-danger">danger</span></a>
                            <a href=""><span class="badge badge-warning">warning</span></a>
                            <a href=""><span class="badge badge-primary">primary</span></a>
                        </h5>
                    </div>
                    <div class="col-lg-6 text-center pb-2">
                        <a href=""><span class="badge badge-pill badge-dark">100</span></a>
                        <a href=""><span class="badge badge-pill badge-success">4.3K</span></a>
                        <a href=""><span class="badge badge-pill badge-danger">pill</span></a>
                        <a href=""><span class="badge badge-pill badge-warning">88</span></a>
                        <a href=""><span class="badge badge-pill badge-info">902</span></a>
                        <a href=""><span class="badge badge-pill badge-primary">55</span></a>

                        <h5 class="mt-2">
                            <a href="" class="badge badge-pill badge-success">success</a>
                            <a href="" class="badge badge-pill badge-primary">primary</a>
                            <a href="" class="badge badge-pill badge-danger">danger</a>
                            <a href="" class="badge badge-pill badge-warning">warning</a>
                        </h5>
                    </div>
                    <div class="col-lg-12 text-center pb-2">
                        <h5 class="mt-2">
                            <a href="" class="badge badge-primary badge-pill font-weight-normal"><i class="ion-ios-cloud-download-outline"></i> download</a>
                            <a href="" class="badge badge-info badge-pill font-weight-normal"><i class="ion-ios-refresh-outline"></i> reload</a>
                            <a href="" class="badge badge-danger badge-pill font-weight-normal"><i class="ion-ios-cloud-upload-outline"></i> upload</a>
                            <a href="" class="badge badge-dark badge-pill font-weight-normal"><i class="ion-ios-browsers-outline"></i> pages</a>
                        </h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</@p.page>