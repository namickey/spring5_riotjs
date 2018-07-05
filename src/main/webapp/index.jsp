<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>index</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="encoding" content="utf-8">
</head>
<body>

<projectList></projectList>

<script type="riot/tag">
<projectList>
<button onclick="{getProjects}">プロジェクト一覧取得</button>
<p each={items}>id:{id}, name:{name}</p>
var self = this
self.items = []
getProjects(event){
  fetch('projects')
  .then(function(response){
    return response.json()
  })
  .then(function(json){
    self.update({items:json})
  })
}
</projectList>
</script>

<script src="static/riot.js"></script>
<script>
riot.mount('*')
</script>

</body>
</html>