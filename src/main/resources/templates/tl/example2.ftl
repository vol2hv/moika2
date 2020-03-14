<#import "../fragments/page.ftl" as p>

<@p.page false "Example2">
<h3>Приняты параметры</h3>
<p> ${par1}  ${par2}</p>
<p>
    <#assign tmp = ((b1??) && b1) />
    ${tmp?c ! "Пусто"}
</p>
<p>
    <#assign tmp = ((b2??) && b2) />
    ${tmp?c ! "Пусто"}
</p>
<p>
    <#assign tmp = ((b3??) && b3) />
    ${tmp?c ! "Пусто"}
</p>

<#assign e="email">
<#list users as u>
    <div>
        ${u.username}
        ${u[e]}
    </div>
</#list>

<h6><a href="/tl/debuging"> debuging</a></h6>

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
</@p.page>
