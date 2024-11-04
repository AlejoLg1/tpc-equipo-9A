﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FormMarca.aspx.cs" Inherits="TPC_equipo_9A.FormMarca" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function confirmarEliminacion(idMarca, nombreMarca) {
            var mensaje = "¿Estás seguro que deseas eliminar la categoría con ID: " + idMarca + " y Nombre: " + nombreMarca + "?";
            return confirm(mensaje);
        }
    </script>
    <style>
        h1 {
            font-family: 'Arial', sans-serif;
            text-align: center;
            font-size: 2em;
            color: #333;
        }

        .row {
            font-weight: bold;
        }

        .btn {
            font-size: 16px;
            padding: 10px 20px;
            border-radius: 5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row justify-content-center mt-5">
        <div class="col-md-6">
            <!-- Título dinámico -->
            <h1 class="text-center">
                <asp:Label ID="lblTitulo" runat="server" Text="Detalle de Categoría"></asp:Label>
            </h1>

            <!-- Fila para ID Marca -->
            <div class="mb-3">
                <label for="txtIdMarca" class="form-label">ID Marca</label>
                <asp:TextBox ID="txtIdMarca" CssClass="form-control" ReadOnly="true" runat="server"></asp:TextBox>
            </div>

            <!-- Fila para Nombre -->
            <div class="mb-3">
                <label for="txtNombreMarca" class="form-label">Nombre</label>
                <asp:TextBox ID="txtNombreMarca" CssClass="form-control" ReadOnly="true" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="rfvNombre" runat="server"
                    ControlToValidate="txtNombreMarca"
                    ErrorMessage="El Nombre es obligatorio."
                    CssClass="text-danger"
                    Display="Dynamic" />
            </div>

            <!-- Botón para habilitar la edición -->
            <div class="row mt-5">
                <div class="col text-center">
                    <asp:Button ID="btnVolver" runat="server" Text="Volver" CssClass="btn btn-primary me-3 mb-2" OnClick="btnVolver_Click" CausesValidation="false" />
                    <asp:Button ID="btnModificar" CssClass="btn btn-warning me-3 mb-2" Text="Modificar Marca" OnClick="btnModificar_Click" runat="server" />
                    <asp:Button ID="btnGuardar" CssClass="btn btn-success me-3 mb-2" Text="Guardar Cambios" OnClick="btnGuardar_Click" runat="server" Visible="false" />
                    <asp:Button ID="btnEliminar" CssClass="btn btn-danger me-3 mb-2" Text="Eliminar Marca" OnClick="btnEliminar_Click" runat="server" />
                </div>
            </div>

            <!-- label error-->
            <asp:Label ID="lblError" runat="server" CssClass="text-danger" Visible="false"></asp:Label>

        </div>

    </div>
</asp:Content>
