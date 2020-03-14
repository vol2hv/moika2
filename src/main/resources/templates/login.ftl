<#import "fragments/page.ftl" as p>

<@p.page false "login">
        <!-- form card login -->
    <div class="card border-secondary">
        <div class="card-header">
            <h3 class="mb-0 my-2">Login</h3>
        </div>
        <div class="card-body">
            <form action="/login" method="post" class="form" role="form" autocomplete="off" id="formLogin">
                <div class="form-group ">
                    <label>User Name :</label>
                    <input type="text" name="username" value="<#if user??>${user.username}</#if>"
                       class="form-control ${(usernameError??)?string('is-invalid', '')}"
                       placeholder="User name" />
                    <#if usernameError??>
                        <div class="invalid-feedback">
                            ${usernameError}
                        </div>
                    </#if>
                </div>

                <div class="form-group">
                    <label>Password</label>
                    <input type="password" name="password"
                       class="form-control ${(passwordError??)?string('is-invalid', '')}"
                       placeholder="Password" />
                    <#if passwordError??>
                        <div class="invalid-feedback">
                            ${passwordError}
                        </div>
                    </#if>
                    <div>
                        Forgot your password?
                        <a href="/resetpass">Reset your password</a>
                    </div>
                </div>
                <div>
                    Don't have an account?
                    <a href="/registration">Sign up</a>
                </div>
                <div class="form-check small">
                    <label class="form-check-label">
                        <input type="checkbox" class="form-check-input"> <span>Remember me on this computer</span>
                    </label>
                </div>

                <input type="hidden" name="_csrf" value="${_csrf.token}" />

                <button type="submit" class="btn btn-success btn-lg float-right">Login</button>

            </form>
        </div>
        <!--/card-body-->
    </div>
    <!-- /form card login -->
</@p.page>