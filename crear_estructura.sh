#!/bin/bash
# Ejecutar DENTRO de la carpeta del repo (evaluacionGit), en la rama correspondiente.
# Uso: bash crear_estructura.sh

set -e

SERVICIOS=(
  "api-gateway"
  "ms-autenticacion"
  "ms-afiliaciones"
  "ms-citas-medicas"
  "ms-autorizaciones"
  "ms-historia-clinica"
  "ms-farmacia"
  "ms-facturacion"
  "ms-notificaciones"
)

mkdir -p eps-microservicios

declare -A DESCRIPCION=(
  ["api-gateway"]="API Gateway - punto de entrada unico, enrutamiento y autenticacion de peticiones"
  ["ms-autenticacion"]="Microservicio de autenticacion - login, JWT y control de acceso de usuarios"
  ["ms-afiliaciones"]="Microservicio de afiliaciones - registro y gestion de afiliados a la EPS"
  ["ms-citas-medicas"]="Microservicio de citas medicas - agendamiento y disponibilidad de citas"
  ["ms-autorizaciones"]="Microservicio de autorizaciones - aprobacion de procedimientos y servicios medicos"
  ["ms-historia-clinica"]="Microservicio de historia clinica - registro medico electronico del paciente"
  ["ms-farmacia"]="Microservicio de farmacia - gestion de medicamentos y dispensacion"
  ["ms-facturacion"]="Microservicio de facturacion - liquidacion y cobro de servicios de salud"
  ["ms-notificaciones"]="Microservicio de notificaciones - envio de alertas y recordatorios a usuarios"
)

for servicio in "${SERVICIOS[@]}"; do
  mkdir -p "eps-microservicios/${servicio}"
  echo "// ${DESCRIPCION[$servicio]}" > "eps-microservicios/${servicio}/${servicio}.txt"
done

echo "Estructura creada correctamente."
find eps-microservicios -type f
