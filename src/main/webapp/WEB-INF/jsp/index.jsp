<!DOCTYPE HTML>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Cache-Control" content="no-cache">
    <meta http-equiv="Expires" content="Sat, 01 Dec 2100 00:00:00 GMT">

    <title>Account Manager | Home</title>

    <link href="static/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/css/style.css" rel="stylesheet">

    <!--[if lt IE 9]>
    <script src="static/js/html5shiv.min.js"></script>
    <script src="static/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div role="navigation">
    <div class="navbar navbar-inverse">
        <a href="/" class="navbar-brand">3 Wills and a Mike</a>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="my-currencyuser">My Account</a></li>
                <li><a href="all-currencyusers">All Accounts</a></li>
                <li><a href="<c:url value="/logout" />">Logout</a></li>

            </ul>
        </div>
    </div>
</div>

<c:choose>
    <c:when test="${mode == 'MODE_HOME'}">
        <div class="container" idcurrencyuser="homeDiv">
            <div class="jumbotron text-center">
                <h1>Welcome to Account & Currency Converter</h1>
            </div>
        </div>
    </c:when>
    <%--////////////////////111111111/////////////////////////////--%>
    <c:when test="${mode == 'SIGN_UP'}">
        <div class="container" idcurrencyuser="signupDiv">
            <div class="jumbotron text-center">
                <h1>Sign up / login</h1>

                <div class="container text-center">
                    <h3>New Account</h3>
                    <hr>
                    <form class="form-horizontal" method="POST" action="save-currencyUser">
                        <input type="hidden" fname="idcurrencyuser" value="${currencyUser.idcurrencyuser}"/>
                        <div class="form-group">
                            <label class="control-label col-md-3">Name</label>
                            <div class="col-md-7">
                                <input type="text" class="form-control" fname="fname" value="${currencyUser.fname}"
                                       placeholder="Enter User Name"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">E-mail</label>
                            <div class="col-md-7">
                                <input type="text" class="form-control" fname="description" value="${currencyUser.description}"
                                       placeholder="Enter you email for new users only"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Password</label>
                            <div class="col-md-7">
                                <input type="password" class="form-control" idcurrencyuser="exampleInputPassword1"
                                       placeholder="Password">
                                    <%--<input type="text" class="form-control" fname="description" value="${currencyUser.description}"/>--%>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Account Valid</label>
                            <div class="col-md-7">
                                <input type="radio" class="col-sm-1" fname="finished" value="true"/>
                                <div class="col-sm-1">Yes</div>
                                <input type="radio" class="col-sm-1" fname="finished" value="false" checked/>
                                <div class="col-sm-1">No</div>
                                    <%--<input type="radio" class="col-sm-1" fname="finished" value="false" checked/>--%>
                                    <%--<div class="col-sm-1">No</divv>--%>
                                    <%--<input type="">--%>
                            </div>
                        </div>


                        <div class="form-group">
                            <input type="submit" class="btn btn-primary" value="Save"/>
                        </div>

                            <%--<div class="form-group">--%>
                            <%--<label class="control-label col-md-3">Currency Type</label>--%>
                            <%--<div class="col-md-7">--%>
                            <%--<input type="radio" class="col-sm-1" fname="finished" value="true"/>--%>
                            <%--<div class="col-sm-1">Yes</div>--%>
                            <%--<input type="radio" class="col-sm-1" fname="finished" value="false" checked/>--%>
                            <%--<div class="col-sm-1">No</div>--%>
                            <%--</div>--%>

                    </form>
                </div>


            </div>
        </div>
    </c:when>
    <%--/////////////111111111////////////////////--%>
    <c:when test="${mode == 'MODE_CURRENCYUSERS'}">
        <div class="container text-center" idcurrencyuser="tasksDiv">
            <h3>All Accounts</h3>
            <hr>
            <div class="table-responsive">
                <table class="table table-striped table-bordered text-left">
                    <thead>
                    <tr>
                        <th>Id</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>E-mail Created</th>
                        <th>Password</th>
                        <th>Currency Type</th>
                        <th>Account Balance</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="currencyuser" items="${currencyusers}">
                        <tr>
                            <td>${currencyuser.idcurrencyuser}</td>
                            <td>${currencyuser.fname}</td>
                            <td>${currencyuser.lname}</td>
                            <td>${currencyuser.email}</td>
                            <td>${currencyuser.passwd}</td>
                            <td>${currencyuser.currencytype}</td>
                            <td>${currencyuser.accountbalance}</td>

                            <td><a href="update-currencyUser?idcurrencyuser=${currencyUser.idcurrencyuser}"><span class="glyphicon glyphicon-pencil"></span></a>
                            </td>
                            <td><a href="delete-currencyUser?idcurrencyuser=${currencyUser.idcurrencyuser}"><span class="glyphicon glyphicon-trash"></span></a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </c:when>
    <c:when test="${mode == 'MODE_NEW' || mode == 'MODE_UPDATE'}">
        <div class="container text-center">
            <h3>Welcome Back!</h3>
            <hr>
            <form class="form-horizontal" method="POST" action="save-currencyUser">
                <input type="hidden" name="idcurrencyuser" value="${currencyUser.idcurrencyuser}"/>
                <div class="form-group">
                    <label class="control-label col-md-2">Current User Name</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" fname="fname" value="${currencyUser.fname}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-md-2">Account Balance</label>
                    <div class="col-md-7">
                        <input type="text" class="form-control" fname="description" value="${currencyUser.description}"/>
                    </div>
                </div>
                <div class="form-row align-items-center">
                    <div class="form-group col-md-2">
                        <label>Exchange Rate</label>
                        <input type="text" class="form-control" idcurrencyuser="inputCity">
                    </div>
                    <div class="form-group col-md-2">
                        <label >Currency Type</label>
                        <select idcurrencyuser="inputState1" class="form-control">
                            <option selected>Choose...</option>
                            <option>Argentine Peso</option>
                            <option>Australian Dollar</option>
                            <option>Bahraini Dinar</option>
                            <option>Botswana Pula</option>
                            <option>Brazilian Real</option>
                            <option>Bruneian Dollar</option>
                            <option>Bulgarian Lev</option>
                            <option>Canadian Dollar</option>
                            <option>Chilean Peso</option>
                            <option>Chinese Yuan Renminbi</option>
                            <option>Colombian Peso</option>
                            <option>Croatian Kuna</option>
                            <option>Czech Koruna</option>
                            <option>Danish Krone</option>
                            <option>Euro</option>
                            <option>Hong Kong Dollar</option>
                            <option>Hungarian Forint</option>
                            <option>Icelandic Krona</option>
                            <option>Indian Rupee</option>
                            <option>Indonesian Rupiah</option>
                            <option>Iranian Rial</option>
                            <option>Israeli Shekel</option>
                            <option>Japanese Yen</option>
                            <option>Kazakhstani Tenge</option>
                            <option>South Korean Won</option>
                            <option>Kuwaiti Dinar</option>
                            <option>Libyan Dinar</option>
                            <option>Malaysian Ringgit</option>
                            <option>Mauritian Rupee</option>
                            <option>Mexican Peso</option>
                            <option>Nepalese Rupee</option>
                            <option>New Zealand Dollar</option>
                            <option>Norwegian Krone</option>
                            <option>Omani Rial</option>
                            <option>Pakistani Rupee</option>
                            <option>Philippine Peso</option>
                            <option>Polish Zloty</option>
                            <option>Qatari Riyal</option>
                            <option>Romanian New Leu</option>
                            <option>Russian Ruble</option>
                            <option>Saudi Arabian Riyal</option>
                            <option>Singapore Dollar</option>
                            <option>South African Rand</option>
                            <option>Sri Lankan Rupee</option>
                            <option>Swedish Krona</option>
                            <option>Swiss Franc</option>
                            <option>Taiwan New Dollar</option>
                            <option>Thai Baht</option>
                            <option>Trinidadian Dollar</option>
                            <option>Turkish Lira</option>
                            <option>Emirati Dirham</option>
                            <option>British Pound</option>
                            <option>Venezuelan Bolivar</option>

                        </select>
                    </div>
                    <div class="form-group col-md-2">
                        <label>Country Type</label>
                        <select idcurrencyuser="inputState" class="form-control">
                            <option selected>Choose...</option>
                            <option>Yen</option>
                            <option>Euro</option>
                            <option>Yen</option>
                            <option>Yen</option>
                        </select>
                    </div>
                    <div class="form-group col-md-3">
                        <label >Transaction Amount</label>
                        <select idcurrencyuser="inputState3" class="form-control">
                            <option selected>Deopist / Withdraw...</option>
                            <option>$20</option>
                            <option>$40</option>
                            <option>$60</option>
                            <option>$100</option>
                            <option>$200</option>
                            <option>$500</option>
                            <option>$1000</option>

                        </select>

                        <div class="form-row align-items-center">
                            <input type="submit" class="btn btn-primary  " value="Withdraw"/>
                            <input type="submit" class="btn btn-primary " value="Deposit"/>
                        </div>

                    </div>

                </div>

                </div>




            </form>
        </div>
    </c:when>
</c:choose>

<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
</body>
</html>