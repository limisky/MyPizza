MyPizza - Group9 - Li Mi - Yang Jinyi

This J2EE Demo MyPizza is built with the open-source front-end framework Bootstrap.
http://twitter.github.io/bootstrap/
--------------------------------------------------------------------------------------------
Steps to use:
--------------------------------------------------------------------------------------------
1. Sep up the database
	a. run "createDB.sql" to install the database
	b. run "data.sql" to pupolate the initial data

2. Use JDBC and MySQL to handle Tomcat logins
	Set up Tomcat by editing the file TOMCAT-HOME/conf/server.xml

	<Realm className="org.apache.catalina.realm.JDBCRealm" debug ="99"
		driverName="com.mysql.jdbc.Driver"
        	connectionURL="jdbc:mysql://localhost:3306/pizza?user=root&amp;password=root"
        	userTable="users" userNameCol="user_name" userCredCol="user_pass"
        	userRoleTable="user_roles" roleNameCol="role_name"/>

	Remember to modify the url to an appropriate one and restart the tomcat.

3. Set the JDBC URL
	Change the initial parameter of "JDBC_URL" in web.xml to an appropriate one.

4. Default admin account
	Username: admin
	Password: admin
	
--------------------------------------------------------------------------------------------
Tips:
--------------------------------------------------------------------------------------------
1. Stock is checked and changed when the product is added to the cart, which means, everything in the cart is available.
2. Click on the username in the navigator bar after logging in to change the profile. 
   Address in the profile will be the default delivery address which can also be modified manually when placing an order.
3. Using an admin account will enable you to see an extra button "Manage" in the navigator bar and orders from all the users.