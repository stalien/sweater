<#macro login path isRegisterForm>
<form action="${path}" method="post">
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"> User name: </label>
        <div class="col-sm-6">
            <input type="text" name="username" class="form-control" placeholder="User name"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"> Password: </label>
        <div class="col-sm-6">
            <input type="password" name="password" class="form-control" placeholder="Password"/>
        </div>
    </div>
    <#if isRegisterForm>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label"> Email: </label>
        <div class="col-sm-6">
            <input type="email" name="email" class="form-control" placeholder="some@email.com"/>
        </div>
    </div>
    </#if>
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button type="submit" class="btn btn-primary mr-2"><#if isRegisterForm>Create<#else>Sign In</#if></button>
    <#if !isRegisterForm>
    <a href="/registration">Add new User</a>
    </#if>
</form>
</#macro>

<#macro logout>
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}" />
    <button type="submit" class="btn btn-primary">Sign out</button>
</form>
</#macro>