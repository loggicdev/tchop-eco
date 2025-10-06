# Dokply Configuration for Flutter Web Admin Panel

## Build Configuration
- **Build Command**: `flutter build web --release --base-href /`
- **Build Directory**: `build/web`
- **Port**: 8080
- **Health Check**: GET / (HTTP 200)

## Environment Variables for Dokply:
```
FLUTTER_VERSION=stable
NIXPACKS_METADATA=flutter-web-admin
PORT=8080
```

## Dockerfile vs Nixpacks
Este projeto inclui duas opções de build:

1. **Dockerfile** (recomendado para maior controle)
   - Multi-stage build com Flutter
   - Imagem final mínima com busybox
   - Servidor HTTP simples na porta 8080

2. **nixpacks.toml** (para usar com nixpacks)
   - Configuração declarativa
   - Build automático do Flutter Web
   - Deploy direto no Dokply

## Rotas do Admin Panel:
- `/users` - Gerenciamento de usuários
- `/riders` - Gerenciamento de motoristas  
- `/vehicles` - Gerenciamento de veículos

## Deployment Steps:
1. Conectar repositório ao Dokply
2. Selecionar nixpacks como builder OU usar Dockerfile
3. Definir variáveis de ambiente
4. Configurar porta 8080
5. Deploy!