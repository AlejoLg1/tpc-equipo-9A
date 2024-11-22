# Aplicación Web de Gestión de Compras y Ventas

## Descripción

Esta aplicación web está diseñada para administrar las compras y ventas de un negocio multipropósito. El sistema permite la gestión de clientes, proveedores, productos, y el registro de ventas y compras. Los productos están categorizados por marcas y tipos/categorías. Además, el sistema maneja un stock actual y un stock mínimo para facilitar la proyección de compras.

## Funcionalidades

1. **Gestión de Clientes y Proveedores:**
   - Alta, baja y modificación de clientes y proveedores.

2. **Gestión de Productos:**
   - Alta, baja y modificación de productos.
   - Administración de marcas y tipos/categorías.
   - Mantenimiento del stock actual y stock mínimo.

3. **Registro de Compras:**
   - Registro de compras indicando el proveedor y el producto adquirido.
   - Actualización automática del stock y registro de precios de compra.

4. **Registro de Ventas:**
   - Formulario de ventas donde se asigna el cliente y se selecciona el producto a vender.
   - Validación de cantidades de stock disponibles.
   - Descuento automático de stock al realizar una venta.
   - Generación de facturas con números únicos para impresión.

5. **Cálculo de Precios de Venta:**
   - Cada producto tiene un porcentaje de ganancia asignado.
   - El precio de venta se calcula aplicando el porcentaje de ganancia al precio de compra más reciente.

6. **Seguridad:**
   - Ingreso con usuario y contraseña.
   - Perfiles de usuario: vendedor y administrador.
     - **Vendedor:** Registra operaciones, controla inventario y genera nuevas relaciones comerciales.
     - **Administrador:** Accede a todas las funcionalidades del sistema.

## Requisitos

- .NET Framework
- SQL Server
- Visual Studio
