# Proyecto DevOps en AWS

**Autor:** José Francisco Portales Solval  
**Carné:** 0910-02-2277  

Repositorio de entrega con código fuente, Dockerfiles, scripts, YAMLs y documentación de los servicios implementados:

- AWS EC2 + Ubuntu Server
- Docker
- Jenkins CI/CD
- Prometheus
- Grafana
- Node Exporter
- Mailpit
- Asterisk PBX
- MiniFlix / Streaming
- Caddy HTTPS
- Docker Swarm
- Oracle Database 23ai Free
- Oracle APEX

## Estructura

```text
app/
asterisk/
monitoring/
scripts/
docker-compose.yml
Jenkinsfile
README.md
```

## Puertos usados

| Servicio | Puerto |
|---|---:|
| HTTP / Web | 80 |
| HTTPS Caddy | 443 |
| Jenkins | 8080 |
| Grafana | 3000 |
| Prometheus | 9090 |
| Node Exporter | 9100 |
| Mailpit SMTP | 1025 |
| Mailpit Web | 8025 |
| Asterisk SIP | 5060/UDP |
| Asterisk RTP | 10000-20000/UDP |
| MiniFlix | 8081 |
| Docker Swarm Demo | 8082 |
| Oracle DB | 1521 |
| Oracle EM | 5500 |
