# evaluacionGit — Arquitectura de Microservicios para una EPS

Repositorio de práctica para el taller de **Control de versiones con Git y GitHub**,
asignatura Ingeniería de Software III (FI303290), UNIAJC.

## Contexto

Este repositorio simula la organización de un proyecto de microservicios para una
**EPS (Entidad Promotora de Salud)**. La estructura de carpetas representa el
esqueleto de los servicios que compondrían el sistema, sin implementación de código.

## Estructura del proyecto

```
eps-microservicios/
├── api-gateway/
├── ms-autenticacion/
├── ms-afiliaciones/
├── ms-citas-medicas/
├── ms-autorizaciones/
├── ms-historia-clinica/
├── ms-farmacia/
├── ms-facturacion/
└── ms-notificaciones/
```

## Documentación

- `EstructuraMicroservicios_EPS.docx`: descripción del esqueleto de carpetas y su propósito.
- `Docs/Arquitectura_EPS.docx` *(solo en la rama `desarrollo`)*: explicación detallada
  de la arquitectura de microservicios y diagrama.

## Ramas del repositorio

| Rama | Contenido |
|---|---|
| `main` | Estructura base de microservicios + documento de estructura |
| `desarrollo` | Estructura base + `Docs/` (arquitectura y diagrama) + `Algoritmos_pruebas/` |
| `pruebas` | Estructura base + `Algoritmos_pruebas/` (sin `Docs/`) |

## Autor

- **Estudiante:** _______________________
- **Usuario de GitHub:** _______________________
- **Asignatura:** Ingeniería de Software III — FI303290
- **Período académico:** 2026-2
