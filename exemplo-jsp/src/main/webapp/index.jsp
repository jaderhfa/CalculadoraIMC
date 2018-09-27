<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Exemplo JSP (Java Server Pages) - Maior Menor</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <style>
      h1 {
          background-color: green;
      }
      
      p {
          background-color: yellow;
      }
      </style>   
  </head>
  <body>
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="panel-heading">
              <h3 class="panel-title">Calculadora IMC</h3>
            </div> 
            <p>Sexo:</p>
            <div class="form-check">
                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" checked>
                <label class="form-check-label" for="exampleRadios1">
                  Masculino
                </label>
              </div>
              <div class="form-check">
                <input class="form-check-input" type="radio" name="exampleRadios" id="exampleRadios2" value="option2">
                <label class="form-check-label" for="exampleRadios2">
                  Feminino
                </label>
              </div>

            <p>Preencha o formulario: </p>
            
            <div class="panel-body">
            <form>
                <fieldset>
                    <div class="form-group">
                        <input class="form-control" placeholder="Idade" name="idade" type="text" required="required">
                    </div>
                </fieldset>  

                <fieldset>
                    <div class="form-group">
                        <input class="form-control" placeholder="Altura" name="altura" type="text" required="required">
                    </div>
                </fieldset>
            
                <fieldset>
                    <div class="form-group">
                        <input class="form-control" placeholder="Peso" name="peso" type="text" required="required">
                    </div>
                    
                </fieldset>
              <button class="btn btn-sm btn-success center-block">Calcular</a>    
            </form>
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
    <% float imc = peso/(altura*altura); %>
    <% out.println(imc);   %>
    <% if(imc < 18){ %>
    <p>
      Voce esta muito magro(a)!!!
    </p>
    
    <% } %>

  <% if(imc > 18 && imc < 24){ %>  
    <p>
      Parabens seu imc esta normal !!!
    </p>
    
  <% } if(imc > 24 && imc < 30){ %>  
      <p>
        Seu imc esta um pouco acima do normal, tome cuidado !!!
      </p>
    
    <% } if(imc > 30){ %>  
        <p>
          Perigo, voce esta acima do aceitavel, cuide mais da sua saude !!!
        </p>
    <% } %>


    <% } %> 
  
</div>

    <div class="container">
      <!-- Content here -->

     
      

    </div>

  </body>
</html>