<%@ page import="java.util.stream.IntStream" %><%--
  Created by IntelliJ IDEA.
  User: pawel
  Date: 12.05.2019
  Time: 09:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%!
        private int add(int a, int b){
            return a +b;
        }
        private String hello = "hi";
        %>
    <%--<%=add(1,4)%>--%>
    <%= hello%>



    <% for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 5; j++) {
            out.print(j);
            out.print(" ");
        } %>
    <br>
    <%
        }
    %>
    <% out.print("Hello World!");%><br>
    <% out.print("Today is: ");%><br>
    <% out.print(new java.util.Date());%>
    <br>
    <br>
    <% out.print("Metoda - Tablica");%>
    <%!
//        private int table(int a, int b) {
//            int tab0[] = new int[10];
//            int tab1[] = new int[10];
//            for (int i = 0; i < tab0.length; i++) {
//                tab0[i] = i;
//                if (i>=a||i<=b){
//                    tab1[i] = i;
//                }
//
//            }
//           ;
//        }
        private int[] createTable(int a, int b){
            return IntStream.range(a,b).toArray();
        }

        private String time = "times";
    %>
    <%--<%=table(1,3)%>--%>
    <%--<%=createTable(3,4)%>--%>

<ol>
    <%
        int[] myTable = createTable(1,5);
        for (int i=0; i<myTable.length; i++){
    %><li><%=myTable[i] + " " + time + (myTable[i] !=1 ? "s" : "") %></li>
    <%
        }
    %>
</ol>




</body>
</html>
