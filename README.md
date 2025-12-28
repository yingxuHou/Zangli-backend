# 藏历历法 Flask 后端

这是藏历历法应用的Flask后端服务，提供藏历计算、天文数据等API接口。

## 项目结构

```
backend/
├── app.py              # Flask应用工厂
├── config.py           # 配置文件
├── routes.py           # API路由
├── run.py              # 启动脚本
├── run.bat             # Windows启动脚本
├── requirements.txt    # Python依赖
├── env.example         # 环境变量示例
└── README.md           # 项目说明
```

## 快速开始

### 1. 安装依赖

```bash
# 创建虚拟环境
python -m venv venv

# 激活虚拟环境 (Windows)
venv\Scripts\activate

# 激活虚拟环境 (Linux/Mac)
source venv/bin/activate

# 安装依赖
pip install -r requirements.txt
```

### 2. 配置环境变量

复制 `env.example` 为 `.env` 并修改配置：

```bash
cp env.example .env
```

### 3. 启动服务

#### 方法1: 使用Python脚本
```bash
python run.py
```

#### 方法2: 使用批处理文件 (Windows)
```bash
run.bat
```

#### 方法3: 直接运行Flask
```bash
python app.py
```

## API接口

### 健康检查
- **GET** `/api/health` - 服务健康检查

### 日历转换
- **GET** `/api/calendar/tibetan?year=2024&month=1&day=1` - 获取藏历信息
- **POST** `/api/calendar/convert` - 日历转换

### 天文数据
- **POST** `/api/astrology/planets` - 获取行星位置（需要经纬度、日期时间参数）
- **GET** `/api/astrology/moon-phase` - 获取月相信息
- **POST** `/api/calculate` - 计算日出日落和月出月落时间

### AI问答
- **POST** `/api/ask` - AI问答接口（需要配置DeepSeek API密钥）

### 测试接口
- **POST** `/api/echo` - 回显测试

## 配置说明

### 环境变量

| 变量名 | 默认值 | 说明 |
|--------|--------|------|
| FLASK_CONFIG | development | 配置环境 |
| FLASK_HOST | 127.0.0.1 | 服务器地址 |
| FLASK_PORT | 5000 | 服务器端口 |
| FLASK_DEBUG | True | 调试模式 |
| SECRET_KEY | dev-secret-key | 密钥 |
| CORS_ORIGINS | http://localhost:3000 | 允许的跨域源 |
| DEEPSEEK_API_KEY | - | DeepSeek AI API密钥 |

