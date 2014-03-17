<html>
  <head>
    <link href="static/css/show.css" rel="stylesheet"/>
    <title>管理界面</title>
  </head>
  <body>
    <table>
		<h3>管理界面</h3>
      <th>
        <td>用户编号</td>
		<td>用户名</td>
        <td>邮箱</td>
        <td>密码</td>
      </th>
      %for user in userlist:
      <tr>
        <td></td>
        %for ur in user:
        <td> {{ur}} </td>
        %end
      </tr>
      %end
    </table>
  </body>
</html>
