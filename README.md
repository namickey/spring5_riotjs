# spring5_riotjs
SpringMVC + JPA + Riot.js

## Tree
```
├── README.md
├── build.gradle
└── src
    └── main
        ├── java
        │   └── demo
        │       ├── controller
        │       │   ├── ProjectForm.java
        │       │   └── RestProjectController.java
        │       ├── dto
        │       │   └── ProjectDto.java
        │       ├── entity
        │       │   └── Project.java
        │       ├── repository
        │       │   └── ProjectRepository.java
        │       └── service
        │           └── ProjectService.java
        ├── resources
        │   ├── META-INF
        │   │   ├── messages
        │   │   │   ├── messages.properties
        │   │   │   └── messages_ja.properties
        │   │   └── spring
        │   │       ├── applicationContext-beans.xml
        │   │       └── applicationContext-webmvc.xml
        │   └── static
        │       └── riot.js
        └── webapp
            ├── WEB-INF
            │   └── web.xml
            └── index.jsp
```

## Start Command
Open the Command Prompt.  
```
「build.gradle」ファイルが存在するディレクトリへ移動する。
cd spring5_riotjs
```
```
gradle tomcatRun
```
ブラウザで以下のURLにアクセスする。  
http://localhost:8080/demo  

## Stop Command
```
Ctrl + C
```
