<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Exemplo JSP (Java Server Pages) - Maior Menor</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
  </head>
  <body>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="panel-heading">
              <h3 class="panel-title">Calculadora IMC</h3>
            </div>
            <div class="panel-body">
            <form>
                <fieldset>
                    <div class="form-group">
                        <input class="form-control" placeholder="Altura" name="altura" type="text">
                    </div>
                </fieldset>
            
                <fieldset>
                    <div class="form-group">
                        <input class="form-control" placeholder="Peso" name="peso" type="text">
                    </div>
                    
                </fieldset>
              <button class="btn btn-sm btn-success">Calcular</a>    
            </form>
            
        </div>
    </div>
    <!-- Scriptlet. Código Java no HTML. -->
    <%
      String alturaStr = request.getParameter("altura");
      String pesoStr = request.getParameter("peso");
    
      if (alturaStr != null && pesoStr != null) {
         float altura = Float.parseFloat(alturaStr);
         float peso = Float.parseFloat(pesoStr);
    %>
    <br>
     
    <p>
      Seu IMC e :
    </p>
    <% System.out.println(peso/(altura*altura));   %>
    <p>
      Parabens!
    </p> 
    <% } %>
    
  </body>
</html>