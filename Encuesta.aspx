<%@ Page Title="" Language="C#" MasterPageFile="~/MenuEncuesta.Master" AutoEventWireup="true" CodeBehind="Encuesta.aspx.cs" Inherits="Examen3_LuisChavesMora.Encuesta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="content">
  <div class="container">
    <div class="row align-items-center" style="margin-right: 50px; margin-left: -300px; transform: scale(1.1);">
      <div class="col-lg-5">
      </div>
      <div class="col-lg-5 contents">
        <div class="form-block">
        <div class="mb-4 text-center">
              <h3>Encuesta</h3>
              <p class="mb-4">Encuesta para conocer el indice de voto hacia un partido politico.</p>
             </div>
            </div>
              <div class="form-group first">
                <label for="name">Nombre Completo</label>
                <asp:TextBox type="text" ID="tNombreCompleto" class="form-control" runat="server" required></asp:TextBox>
              </div>
              <div class="form-group">
                <label for="email">Email</label>
                <asp:TextBox type="email" class="form-control" ID="tEmail" runat="server" required></asp:TextBox>
              </div>
              <div class="form-group">
                <label for="text">Edad</label>
                <asp:TextBox type="text" class="form-control" ID="tEdad" runat="server" required min="18" max="50"></asp:TextBox>
              </div>
              <div class="form-group">
                <label for="Partido">Digite Partido Politico de Preferencia: 1-PLN
                                                                            2-PUSC
                                                                            3-PAC
                                                                            4-FA
                                                                            5-PML</label>
                <asp:TextBox type="text" class="form-control" ID="tPartido" runat="server" required></asp:TextBox>
              </div>
              <div class="d-flex mb-5 align-items-center">
              </div>
             <asp:Button ID="btnEnviar" runat="server" class="btn btn-pill text-white btn-block btn-primary" Text="Enviar" OnClick="btnIngresarEncuesta"/>
          </div>
      </div>
    </div>
  </div>
</div>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>




</asp:Content>
