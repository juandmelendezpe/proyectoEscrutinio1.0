<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml">
			<head>
				<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
				<meta name="viewport" content="width=device-width, initial-scale=1.0" />
				<title>Escrutinio</title>
				<link rel="stylesheet" href="css/style.css" type="text/css" />
			</head>
			<body>
      			<div class="fondo_body">
        			<header>
                 <div class="fondo_header">
                      <div class="banner_header">  
                            <img src="img/header.png" alt="banner_header"/>  
                      </div>
                                  <div class="fotos">
                                  <xsl:for-each select="partido/@carru"/>
                                  <img src="img/carru-{@carru}.jpg" alt="carru-mas"/><xsl:value-of select="partido/@carru"/>
                                
                                  <img src="img/carru-fernandez.jpg" alt="carru-fernadez"/>
                                  <img src="img/carru-herrera.jpg" alt="carru-herrera" />
                                  <img src="img/carru-junqueras.jpg" alt="carru-junqueras"/>
                                  <img src="img/carru-mas.jpg" alt="carru-mas" />
                                  <img src="img/carru-navarro.jpg" alt="carru-navarro"/>
                                  <img src="img/carru-rivera.jpg" alt="carru-rivera" />
                                   </div>
                          <p>Sede : <xsl:value-of select="escrutinio/@elecciones"/> </p>
                  </div>
                
         			 </header>

      		  	<main>
              <section class="section_container">
                  <article class="article_num_escaños">
                    <div> Nro. de Escaños: <xsl:value-of select="escrutinio/escanios"/></div>
                    <div> Porciento Escrutado:<xsl:value-of select="escrutinio/porciento_escrutado"/> </div>
                    <img src="img/ico-e12.png" alt="icon12"/> 
                  </article>
                  <article class="article_datos_generales">
                    <ul> 
                      <li><img src="img/folio.png"  alt="folio"/><span>Votos Contabilizados :<xsl:value-of select="escrutinio/votos/contabilizados/cantidad"/> votos| <xsl:value-of select="escrutinio/votos/contabilizados/porcentaje"/> %</span></li>
                      <li><img src="img/folio.png" alt="folio"/><span>Abstenciones :<xsl:value-of select="escrutinio/votos/abstenciones/cantidad"/> votos| <xsl:value-of select="escrutinio/votos/abstenciones/porcentaje"/>% </span></li>
                      <li><img src="img/folio.png" alt="folio"/><span>Nulos :<xsl:value-of select="escrutinio/votos/nulos/cantidad"/>votos | <xsl:value-of select="escrutinio/votos/nulos/porcentaje"/>% </span></li>
                      <li><img src="img/folio.png" alt="folio"/><span>Blancos: <xsl:value-of select="escrutinio/votos/blancos/cantidad"/> votos | <xsl:value-of select="escrutinio/votos/blancos/porcentaje"/> %</span></li>
                    </ul>
                  </article>
                  <article class="article_table_votos">
                  <div class="franja"></div>
                  <table>
                    <tr>
                      <th>&nbsp;</th>
                      <th>PARTIDO</th>
                      <th>VOTOS </th>
                      <th>ESCAÑOS </th>
                      <th>PORCENTAJE </th>
                    </tr>
                  
                       <xsl:for-each select="escrutinio/resultados/partido">      
                      <tr>

                      <td><img src="img/{@nombre}.png" alt ="logo"/><xsl:value-of select="escrutinio/resultados/partido/@nombre"/> </td>
                      <td> <xsl:value-of select="@nombre"/></td>
                      <td> <xsl:value-of select="votos_numero"/></td>      
                      <td> <xsl:value-of select="electos"/></td>
                      <td> <xsl:value-of select="votos_porciento"/></td>
                    </tr>
                    </xsl:for-each>
                  </table>
                  </article>
                  <footer>
                    <p>1° Lenguaje de Marcas</p>
                  </footer>
           	   </section>
     		 </main>
   		 </div>
  	</body>
</html>
</xsl:template>
</xsl:stylesheet>