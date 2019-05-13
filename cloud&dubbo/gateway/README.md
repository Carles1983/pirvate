// Gateway
1. SSO
	a. 全局过滤器，优先级最高。过滤URL, 从REDIS中获取URL是否需要校验，不需要校验直接放行
	b. 需要校验的，获取http header中的token
	c. 从REDIS中查询header中的token是否存在，存在将用户信息放入header中转发请求
	d. token不存在，返回校验不通过
	e. 登录请求不需要验证，直接转发至auth服务
	f. 按路径前缀将请求转发至不同功能域