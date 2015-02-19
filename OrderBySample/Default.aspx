<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OrderBySample.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="Scripts/jquery-1.10.2.min.js"></script>
    <script src="Scripts/jquery.yuuko-0.9.9.2.min.js"></script>
    <script src="yuuko/js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <table>
        <thead>
            <tr>
                <th>Technology</th>
                <th>Score</th>
            </tr>
        </thead>
        <tbody data-collection="RatingPort">
            <tr class="template ratingport">
                <td data-field="RatingPort.Tech"></td>
                <td data-field="RatingPort.Score"></td>
            </tr>
        </tbody>
    </table>
    </form>
</body>
</html>
