MyPizza
=====

J2EE Demo using Bootstrap
http://www.bootcss.com/

1.How to use JDBC and MySQL to handle Tomcat logins 
Set up Tomcat by editing the file TOMCAT-HOME/conf/server.xml.
Locate this line
<Realm className="org.apache.catalina.realm.LockOutRealm"
             resourceName="UserDatabase"/> 
...
</Realm>
and add the following tag after the above line, change the connectionURL to an appropriate one.
<Realm className="org.apache.catalina.realm.JDBCRealm" debug ="99"
    driverName="com.mysql.jdbc.Driver"
    connectionURL="jdbc:mysql://localhost:3306/pizza?user=root&amp;password=root"
    userTable="users" userNameCol="user_name" userCredCol="user_pass"
    userRoleTable="user_roles" roleNameCol="role_name"/>
Restart your Tomcat.

2.Known probmlens
a.hard code in logout.
