# ORM Guide (Java + Maven + JSP/Servlet)

This guide walks through using ORM in a dynamic Java web application without Spring or Spring Boot, using Maven with Hibernate/JPA.

## Table of Contents
1. Introduction
2. Project Structure
3. Maven Dependencies
4. JPA Setup (persistence.xml)
5. Basic Entity
6. EntityManager Utility
7. DAO Layer
8. CRUD Examples
9. Servlet Integration
10. Transactions
11. Querying (JPQL and Criteria)
12. Relationships
13. Lazy Loading
14. Connection Pool with HikariCP
15. Error Handling
16. Production Checklist
17. Tips and Best Practices
18. Appendix

---

## 1. Introduction
ORM (Object Relational Mapping) allows developers to interact with relational databases using objects instead of manual SQL. Hibernate is a popular ORM implementation supporting the JPA specification.

This guide shows how to use Hibernate in a web application based on servlet and JSP without Spring.

---

## 2. Project Structure
```
src/main/java/
  com.example.entity
  com.example.dao
  com.example.util
  com.example.servlet

src/main/resources/
  META-INF/persistence.xml

src/main/webapp/
  WEB-INF/web.xml
  index.jsp

pom.xml
```

---

## 3. Maven Dependencies
```xml
<dependencies>
    <dependency>
        <groupId>jakarta.persistence</groupId>
        <artifactId>jakarta.persistence-api</artifactId>
        <version>3.1.0</version>
    </dependency>

    <dependency>
        <groupId>org.hibernate.orm</groupId>
        <artifactId>hibernate-core</artifactId>
        <version>6.4.3.Final</version>
    </dependency>

    <dependency>
        <groupId>com.mysql</groupId>
        <artifactId>mysql-connector-j</artifactId>
        <version>8.3.0</version>
    </dependency>
</dependencies>
```

---

## 4. JPA Setup (persistence.xml)
File location: src/main/resources/META-INF/persistence.xml
```xml
<persistence xmlns="https://jakarta.ee/xml/ns/persistence" version="3.0">
    <persistence-unit name="myPU">
        <provider>org.hibernate.jpa.HibernatePersistenceProvider</provider>
        <class>com.example.entity.User</class>
        <properties>
            <property name="jakarta.persistence.jdbc.url" value="jdbc:mysql://localhost:3306/mydb"/>
            <property name="jakarta.persistence.jdbc.user" value="root" />
            <property name="jakarta.persistence.jdbc.password" value="password" />
            <property name="jakarta.persistence.jdbc.driver" value="com.mysql.cj.jdbc.Driver" />

            <property name="hibernate.hbm2ddl.auto" value="update" />
            <property name="hibernate.dialect" value="org.hibernate.dialect.MySQLDialect" />
            <property name="hibernate.show_sql" value="true" />
        </properties>
    </persistence-unit>
</persistence>
```

---

## 5. Basic Entity
```java
@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    private String name;

    public User() {}

    public User(String name) {
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
```

---

## 6. EntityManager Utility
```java
public class JPAUtil {
    private static final EntityManagerFactory emf =
        Persistence.createEntityManagerFactory("myPU");

    public static EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
}
```

---

## 7. DAO Layer
```java
public class UserDAO {
    public void add(User user) {
        EntityManager em = JPAUtil.getEntityManager();
        try {
            em.getTransaction().begin();
            em.persist(user);
            em.getTransaction().commit();
        } finally {
            em.close();
        }
    }

    public User find(int id) {
        EntityManager em = JPAUtil.getEntityManager();
        try {
            return em.find(User.class, id);
        } finally {
            em.close();
        }
    }
}
```

---

## 8. CRUD Examples
### Create
```java
User u = new User("Alice");
userDAO.add(u);
```

### Read
```java
User u = userDAO.find(1);
```

### Update
```java
em.getTransaction().begin();
user.setName("Bob");
em.merge(user);
em.getTransaction().commit();
```

### Delete
```java
em.getTransaction().begin();
em.remove(user);
em.getTransaction().commit();
```

---

## 9. Servlet Integration
```java
@WebServlet("/user")
public class UserServlet extends HttpServlet {
    UserDAO dao = new UserDAO();

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        dao.add(new User("John"));
        User u = dao.find(1);
        resp.getWriter().println("User: " + u.getName());
    }
}
```

---

## 10. Transactions
JPA uses EntityTransaction. Always begin and commit or rollback when errors occur.

```java
EntityTransaction tx = em.getTransaction();
tx.begin();
try {
    em.persist(user);
    tx.commit();
} catch(Exception e) {
    tx.rollback();
}
```

---

## 11. Querying
### JPQL
```java
String jpql = "SELECT u FROM User u WHERE u.name = :name";
User u = em.createQuery(jpql, User.class)
    .setParameter("name", "Alice")
    .getSingleResult();
```

### Criteria
```java
CriteriaBuilder cb = em.getCriteriaBuilder();
CriteriaQuery<User> cq = cb.createQuery(User.class);
Root<User> root = cq.from(User.class);
cq.select(root).where(cb.equal(root.get("name"), "Alice"));
User u = em.createQuery(cq).getSingleResult();
```

---

## 12. Relationships
### OneToMany
```java
@OneToMany(mappedBy="user")
private List<Order> orders;
```

### ManyToMany
```java
@ManyToMany
@JoinTable(name="user_role")
private List<Role> roles;
```

---

## 13. Lazy Loading
Lazy loading loads related entities on demand. Use fetch type LAZY to avoid unnecessary loading.
```java
@OneToMany(fetch = FetchType.LAZY)
```

---

## 14. Connection Pool with HikariCP
Add dependency
```xml
<dependency>
    <groupId>com.zaxxer</groupId>
    <artifactId>HikariCP</artifactId>
    <version>5.1.0</version>
</dependency>
```

Configure via properties in persistence.xml.

---

## 15. Error Handling
Close EntityManager in finally block.
Rollback when errors occur.

---

## 16. Production Checklist
Set hbm2ddl.auto to validate or none.
Use connection pool.
Control lazy loading.
Handle transactions properly.

---

## 17. Tips and Best Practices
Keep transactions short.
Avoid eager fetching unless necessary.
Use DAO or repository pattern.

---

## 18. Appendix
Refer to official JPA and Hibernate documentation for advanced topics.

