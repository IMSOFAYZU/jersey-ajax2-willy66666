<%-- 
    Document   : EDIT
    Created on : Oct 7, 2018, 9:09:52 PM
    Author     : lendle
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script
            src="https://code.jquery.com/jquery-3.3.1.min.js"
            integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
        <script>
            function save() {
                //用 post 呼叫 webapi/user
                $.ajax("webapi/user", {

                });
                ///////////////////////////
            }
        </script>
    </head>
    <body>
        <div>
            ID: <input type="text" id="id"/><br/>
            Password: <input type="text" id="password"/><br/>
            Email: <input type="text" id="email"/><br/>
            <input type="button" onclick="save();" value="Save" />
        </div>
    </body>
</html>
