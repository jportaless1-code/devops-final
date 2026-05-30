# Asterisk PBX

Archivos de configuración de la planta telefónica.

Comandos útiles:

```bash
docker exec -it asterisk asterisk -rx "pjsip show endpoints"
docker exec -it asterisk asterisk -rx "pjsip show contacts"
docker exec -it asterisk asterisk -rx "dialplan show interno"
docker exec -it asterisk asterisk -rvvv
```
