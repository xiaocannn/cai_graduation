const http = require("http");
const option = {
    host: "118.89.21.169",
    method: "POST",
    path: "/user/api/getwheel",
}
let httpServer = (response)=>{
	//request 是作为nodejs后台用于请求的方法
    const myreq = http.request(option, res => {
        let obj = ""; //外部用于保存从跨域端口请求的数据
        console.log(myreq)
        res.setEncoding("utf8");
        res.on("data", chunk => {
            console.log(chunk);
            obj = chunk
        })
        res.on("end", () => {
            response.end(JSON.stringify(obj)) //将请求的消息发送到传递进来的外部请求对象
        })
    })
    myreq.on("error", err => {
        console.log(err);
    })
    myreq.write("")
    myreq.end()
}

const server = http.createServer((req, res) => {
    res.writeHead(200, {
        "Content-Type": "text/html;charset=utf-8",
        "Access-Control-Allow-Origin": "*"
    })
    httpServer(res);//调用请求函数，将本次外部请求的对象传递过去
}) //require reponse
server.listen(2333) //创建新的服务2333端口
console.log('开启了服务');
