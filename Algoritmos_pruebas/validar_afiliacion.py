"""
Algoritmo de prueba - Validacion basica de datos de afiliacion EPS.
Carpeta: Algoritmos_pruebas
Objetivo: verificar de forma simple que los datos minimos de un
afiliado esten completos antes de enviarlos al microservicio
ms-afiliaciones.
"""


def validar_afiliado(afiliado: dict) -> bool:
    """Retorna True si el afiliado tiene los campos minimos requeridos."""
    campos_obligatorios = ["documento", "nombre", "fecha_nacimiento", "eps_estado"]

    for campo in campos_obligatorios:
        if campo not in afiliado or not afiliado[campo]:
            print(f"Error: falta el campo obligatorio '{campo}'")
            return False

    if afiliado["eps_estado"] not in ("ACTIVO", "INACTIVO", "SUSPENDIDO"):
        print("Error: eps_estado invalido")
        return False

    print(f"Afiliado {afiliado['nombre']} validado correctamente.")
    return True


if __name__ == "__main__":
    afiliado_prueba = {
        "documento": "1094567890",
        "nombre": "Ana Maria Rojas",
        "fecha_nacimiento": "1995-04-12",
        "eps_estado": "ACTIVO",
    }

    afiliado_incompleto = {
        "documento": "1098765432",
        "nombre": "",
        "fecha_nacimiento": "1988-01-30",
        "eps_estado": "ACTIVO",
    }

    print("--- Prueba 1: afiliado valido ---")
    validar_afiliado(afiliado_prueba)

    print("\n--- Prueba 2: afiliado incompleto ---")
    validar_afiliado(afiliado_incompleto)
