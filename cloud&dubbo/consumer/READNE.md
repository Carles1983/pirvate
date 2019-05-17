1. 生成app：
	注册时的userId + timeStamp + 8位随机字符串，aPublicKey加密
	返回aPrivateKey
	返回bPublicKey
2. 客户端请求
	1. aPrivateKey加密的签名，签名格式为：userId + timeStamp + 返回的8位随机字符串
	2. bPublicKey加密请求的内容，使用POST传递，内容是json格式的请求字符串
	3. userId
	4. timestamp
	5. 随机字符串后端从缓存中获取
	6. 后端接收到请求后获取userId，timestamp，随机码，并通过aPrivateKey加密，比较签名是否一致
	7. 签名一致对报文使用bPrivateKey解密