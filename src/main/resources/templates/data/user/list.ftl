<#import "../../fragments/page.ftl" as p>

<@p.page true "Users List">
        <h5 class="text-center">Users List</h5>

        <div class="table-responsive">
            <table class="table table-striped table-hover table-bordered">
                <thead>
                <tr>
                    <th >User Name </th>
                    <th >Email</th>
                    <th >Roles</th>
                    <th >isEnabled</th>
                    <th>View</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                    <#list users as usr>
                        <tr>
                            <td>${usr.username}</td>
                            <td>${usr.email}</td>
                            <td><#list usr.roles as role>${role}<#sep>, </#list></td>
                            <td>
                                <input type="checkbox" name="isEnabled" value="isEnabled"
                                   ${usr.isEnabled()?string("checked", "")}
                                   onclick="return false;"/>
                            </td>
                            <td><i class="far fa-eye"></i></td>
                            <td><a href="/data/user/${usr.id}" class="link"><i class="fas fa-edit"></i></a></td>
                            <td><i class="far fa-trash-alt"></i></td>

                        </tr>
                    </#list>
                </tbody>

            </table>
        </div>
</@p.page>