GitHub Copilot: 以下是根据上述问答生成的详细操作步骤，使用Markdown格式：

1. **在VSCode中安装Spring Initializr扩展**
    - 打开VSCode
    - 打开Extensions面板（`Ctrl+Shift+X`）
    - 搜索并安装`Spring Initializr Java Support`

2. **使用Spring Initializr创建一个新的Spring Boot项目**
    - 打开命令面板（`Ctrl+Shift+P`）
    - 输入并选择`Spring Initializr: Generate a Maven Project`
    - 选择Spring Boot版本
    - 输入Group Id和Artifact Id
    - 选择Java作为语言
    - 选择Spring Boot版本
    - 选择`Spring Web`作为依赖
    - 选择一个文件夹保存项目

3. **在项目中添加一个RESTful GET请求**
    - 在`HelloController`类中添加如下代码：
    ```java
    @GetMapping("/hello")
    public String hello() {
        return "Hello, World!";
    }
    ```

4. **初始化Git仓库并将项目推送到GitHub**
    - 打开VSCode的终端
    - 输入`git init`初始化Git仓库
    - 输入`git add .`添加所有文件到Git仓库
    - 输入`git commit -m "Initial commit"`提交更改
    - 输入`git remote add origin your-repo-url`添加GitHub仓库作为远程仓库
    - 输入`git push -u origin master`将更改推送到GitHub

5. **在Azure中创建一个新的Web App服务，并选择Java作为运行时堆栈**
    - 登录到Azure门户网站
    - 点击"创建资源"
    - 搜索并选择"Web App"
    - 点击"创建"
    - 填写项目和服务的详细信息
    - 点击"查看+创建"，然后点击"创建"

6. **在Azure的部署中心设置持续集成，选择GitHub作为源**
    - 在Web App服务的菜单中，点击"部署中心"
    - 选择"GitHub"作为源
    - 点击"授权"，登录GitHub账号并授权Azure访问仓库
    - 选择项目仓库和分支
    - 在"构建提供商"中，选择"App Service Build Service"
    - 点击"完成"

注意：在推送项目到GitHub和设置Azure持续集成时，需要确保在包含`pom.xml`文件的目录中运行Maven命令。