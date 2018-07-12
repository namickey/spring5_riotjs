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
<input type="text" name="name" ref="name">
<button type="button" onclick="{postProject}">登録</button>
<p>プロジェクト一覧</p>
<p each={items}>id:{id}, name:{name}</p>
var self = this
self.items = []
postProject(event){
  fetch('projects', {
    method: 'post',
    headers: {
      'Accept': 'application/json',
      'Content-Type': 'application/json'
    },
    body: JSON.stringify({name: self.refs.name.value})
  }).then(function(response){
    return response.json()
  }).then(function(json){
    //console.log(json)
    self.getProjects()
  })
}
getProjects(){
  fetch('projects')
  .then(function(response){
    return response.json()
  }).then(function(json){
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