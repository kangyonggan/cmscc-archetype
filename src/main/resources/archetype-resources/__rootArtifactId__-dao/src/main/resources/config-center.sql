INSERT INTO project (code, name, push_url)
VALUES ('${rootArtifactId}', '内容管理系统', 'http://localhost:8080/configcenter');

INSERT INTO configuration (proj_code, environment, name, value, description)
VALUES
  ('${rootArtifactId}', 'local', 'app.name', '内容管理系统', '项目名称'),
  ('${rootArtifactId}', 'local', 'app.author', '康永敢', '项目负责人'),
  ('${rootArtifactId}', 'local', 'app.ba.no', '皖ICP备16017743号-1', '备案号'),

  ('${rootArtifactId}', 'local', 'cache.open', 'Y', '是否开启缓存:{Y:开启,N:不开启}'),

  ('${rootArtifactId}', 'local', 'dubbo.version', '1.0.0', '提供接口的版本'),
  ('${rootArtifactId}', 'local', 'dubbo.name', '${rootArtifactId}', 'dubbo名字'),
  ('${rootArtifactId}', 'local', 'dubbo.protocol.port', '-1', 'dubbo注册端口'),
  ('${rootArtifactId}', 'local', 'dubbo.registry.address', 'zookeeper://127.0.0.1:2181?backup=127.0.0.1:2182', 'dubbo注册地址'),
  ('${rootArtifactId}', 'local', 'dubbo.timeout', '10000', 'dubbo超时时间'),

  ('${rootArtifactId}', 'local', 'file.root.path', '/Users/kyg/code2/${rootArtifactId}/${rootArtifactId}-web/src/main/webapp/WEB-INF/', '文件上传根路径'),

  ('${rootArtifactId}', 'local', 'jdbc.driver', 'com.mysql.jdbc.Driver', 'jdbc驱动'),
  ('${rootArtifactId}', 'local', 'jdbc.password', '********', 'jdbc密码'),
  ('${rootArtifactId}', 'local', 'jdbc.url', 'jdbc:mysql://127.0.0.1:3306/${rootArtifactId}?useUnicode=true&characterEncoding=UTF-8', 'jdbc地址'),
  ('${rootArtifactId}', 'local', 'jdbc.username', 'root', 'jdbc用户名'),

  ('${rootArtifactId}', 'local', 'mail.bufferSize', '50', '错误日志邮件缓冲区大小(单位:k)'),
  ('${rootArtifactId}', 'local', 'mail.host', 'smtp.163.com', '邮件服务器地址'),
  ('${rootArtifactId}', 'local', 'mail.password', '********', '邮件服务器密码'),
  ('${rootArtifactId}', 'local', 'mail.receiver', 'kangyonggan@gmail.com', '错误日志邮件接收人'),
  ('${rootArtifactId}', 'local', 'mail.timeout', '25000', '邮件发送超时时间'),
  ('${rootArtifactId}', 'local', 'mail.username', 'kangyg2017@163.com', '邮件服务器用户名'),

  ('${rootArtifactId}', 'local', 'redis.host', '127.0.0.1', 'redis主机'),
  ('${rootArtifactId}', 'local', 'redis.maxIdle', '100', 'redis最大等待数'),
  ('${rootArtifactId}', 'local', 'redis.maxTotal', '1000', 'redis最大连接数'),
  ('${rootArtifactId}', 'local', 'redis.minIdle', '50', 'redis最小等待数'),
  ('${rootArtifactId}', 'local', 'redis.password', '******', 'redis密码'),
  ('${rootArtifactId}', 'local', 'redis.port', '6379', 'redis端口'),
  ('${rootArtifactId}', 'local', 'redis.prefix', '${rootArtifactId}', 'redis的key的前缀'),
  ('${rootArtifactId}', 'local', 'redis.testOnBorrow', 'true', 'redis测试支持'),

  ('${rootArtifactId}', 'local', 'slow.interface.time', '5', '慢接口时间(秒)'),
  ('${rootArtifactId}', 'local', 'slow.method.time', '5', '慢方法时间(秒)');