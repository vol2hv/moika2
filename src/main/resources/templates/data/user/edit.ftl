<#import "../../fragments/page.ftl" as p>

<@p.page true "User Information">
        <!-- form user info -->
        <div class="card border-secondary">
            <div class="card-header">
                <h3 class="mb-0 my-2">Information about the User named: ${user.username}</h3>
            </div>
            <div class="card-body">
                <form action="/data/user/" method="post" class="form" role="form" autocomplete="on">
                    <input type="hidden" value="${user.id}" name="userId" />
                    <input type="hidden" value="${_csrf.token}" name="_csrf" />

                    <div class="form-group row">
                        <label class="col-lg-3 col-form-label form-control-label">User Name</label>
                        <div class="col-lg-9">
                            <input class="form-control" type="text" name="username" value="${user.username}">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-lg-3 col-form-label form-control-label">Email</label>
                        <div class="col-lg-9">
                            <input class="form-control" type="text" name="email" value="${user.email}">
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-lg-3 col-form-label form-control-label">Roles</label>
                        <div class="col-lg-9">
                                <#list roles as role>
                                    <div>
                                        <label><input type="checkbox" name="${role}" ${user.roles?seq_contains(role)?string("checked", "")} />${role}</label>
                                    </div>
                                </#list>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-lg-3 col-form-label form-control-label">Password</label>
                        <div class="col-lg-9">
                            <input class="form-control" type="password" value="${user.password}" />
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-lg-3 col-form-label form-control-label">isEnabled</label>
                        <div class="col-lg-1">
                            <input class="form-control" type="checkbox" name="isEnabled"}>
                        </div>
                    </div>

                    <div class="form-group row">
                        <label class="col-lg-3 col-form-label form-control-label"></label>
                        <div class="col-lg-9">
                            <a href="/data/user/" class="btn btn-secondary">Завершить</a>
                            <#--<input type="reset" class="btn btn-secondary" value="Cancel">-->
                            <input type="submit" class="btn btn-primary" value="Save Changes">
                        </div>
                    </div>

                </form>
            </div>
        </div>
</@p.page>