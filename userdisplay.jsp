<table class="table table-striped" id="table">
		<thead>
			<tr>
				<th>Reg.ID</th>
				<th>Full name</th>
				<th>Email address</th>
				<th>Active</th>
				<th>Registered on</th>
				<th>Updated on</th>

			</tr>
		</thead>
		<tbody>
			<%
				try {
					Class.forName("com.mysql.jdbc.Driver");
					String url = "jdbc:mysql://localhost/logindb";
					String username = "root";
					String password = "root";
					String query = "SELECT * FROM user_register ";
					Connection conn = DriverManager.getConnection(url, username, password);
					Statement stmt = conn.createStatement();
					ResultSet rs = stmt.executeQuery(query);
					while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getInt("reg_id")%></td>
				<td>
					<%
						String a = rs.getString("first_name");
								String b = rs.getString("last_name");
								out.println(a + " " + b);
					%>
				</td>

				<td><%=rs.getString("email")%></td>
				<td><%=rs.getString("active")%></td>
				<td><%=rs.getString("create_date")%></td>
				<td><%=rs.getString("last_update")%></td>
				<td><a class="btn btn-default" href="edit.html">Edit</a> <a
					class="btn btn-danger" href="#">Delete</a></td>
			</tr>


			<%
				}
			%>
		
	
	<%
		rs.close();
			stmt.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	</tbody>
    </table>