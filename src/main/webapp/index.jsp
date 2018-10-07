<%@ page contentType="text/html; charset=utf-8" %>
<html>
    <head>
        <script
            src="https://code.jquery.com/jquery-3.3.1.min.js"
            integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
        <script>
            $(document).ready(function(){
                $.ajax("webapi/users", {
                    success: function(data){
                        for(var i in data){
                            var user=data[i];
                            var tr=document.createElement("tr");
                            $(tr).html("<td>"+user.id+"</td><td>"+user.password+
                                    "</td><td><a href='edit.jsp?id="+user.id+
                                    "'>EDIT</a> <a href='javascript:deleteUser(\""+user.id+"\");'>DELETE</a></td>");
                            $("#container").append($(tr));
                        }
                    }
                });
            });
            
            function deleteUser(id){
                //用 delete 呼叫 webapi/user
                $.ajax("webapi/user", {
                });
                ///////////////////////////
            }
        </script>
    </head>
<body>
    <a href="add.jsp">ADD</a><br/>
    <table border="1">
        <thead>
            <tr>
                <th>
                    ID
                </th>
                <th>
                    Password
                </th>
                <th></th>
            </tr>
        </thead>
        <tbody id="container">
            
        </tbody>
    </table>
</body>
</html>
