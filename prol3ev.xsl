<?xml version="1.0" encoding="UTF-8"?> 
<xsl:stylesheet version="2.0"          
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:tei="http://www.tei-c.org/ns/1.0"
  xmlns="http://www.w3.org/1999/xhtml">  

<xsl:output method="html" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
  <html>
    <head>
		  <meta name="viewport" content="width=device-width, initial-scale=1" />
		  <meta name="keyword"  content="Codifica dei Testi, De Saussure, università, Pisa, Angelo Maria Del Grosso" /> 
		  <meta name="description" content="Progetto di Codifica dei Testi" />
      <title>Prolusioni di Ferdinand De Saussure - Prolusioni 3, pagine 10-11</title>
      <p class="title"><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@xml:lang='fr']"></xsl:value-of></p>
      <link href="fds.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
      <header>
        <nav>
			    <ul class="navigation"> 
				    <li><a href="#info">Introduzione</a></li>         
				    <li><a href="#P10">Pagina 10</a></li>
				    <li><a href="#P11">Pagina 11</a></li>
				    <li><a href="#inf">Informazioni</a></li>							
			    </ul>
		    </nav>
      </header>

      <div id="info">
        <h3 id="intro">Informazioni</h3>
        <p>Questo è un manoscritto di <b><i><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:author"></xsl:value-of></i></b>.
        Il titolo originale è "<xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@xml:lang='fr']"></xsl:value-of>", 
        mentre in italiano è "<xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title[@xml:lang='it']"></xsl:value-of>".</p>
        <p><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:history/tei:origin"></xsl:value-of>
        </p>
      </div>

      <div class="DesFis">
        <h3>Descrizione fisica</h3>
        <p>Le pagine sono in buone condizioni.<xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:extent"></xsl:value-of>
        <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:foliation"></xsl:value-of></p>
        <p><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/handDesc"></xsl:value-of></p>
      </div>

      <div class="Sou">
        <h3>Altri Informazioni utili</h3>
        <p>Attualmente il manoscritto si trova presso la <xsl:value-of select="//tei:msIdentifier/tei:repository"></xsl:value-of>
        (<xsl:value-of select="//tei:msIdentifier/tei:placeName/tei:country"></xsl:value-of>). 
        Identificativo: <xsl:value-of select="//tei:msIdentifier/tei:idno"></xsl:value-of></p>
      </div>

      <!--Pagina 10-->
      <div class="pagina"><h3>Pagina 10</h3></div>
      <div id="P10">
        <div class="img10" title="Pagina 10 del manoscritto">
          <xsl:element name="img">
            <xsl:attribute name="src">
              <xsl:value-of select="//tei:facsimile/tei:surface/tei:graphic[@xml:id='P10']/@url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="id">pp10</xsl:attribute>
          </xsl:element>
        </div>

        <div class="manoscritto" title="Trascrizione della pagina 10 del manoscritto">
          <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[@n='10']"/>
        </div>
      </div>

      <div class="traduzione_it" title="Traduzione della pagina 10 del manoscritto">
      <h4>Traduzione: <button id='VediTraduzione'>see_more</button></h4>
      <span class='hidden' id="testo"><xsl:value-of select="tei:TEI/tei:text/tei:body/tei:div[@n='1']"></xsl:value-of></span>
      </div>


      <!--Pagina 11-->
      <div class="pagina"><h3>Pagina 11</h3></div>

      <div id="P11">
        <div class="img11" title="Pagina 11 del manoscritto">
          <xsl:element name="img">
            <xsl:attribute name="src">
              <xsl:value-of select="//tei:facsimile/tei:surface/tei:graphic[@xml:id='P11']/@url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="id">pp11</xsl:attribute>
          </xsl:element>
        </div>

        <div class="manoscritto" title="Trascrizione della pagina 11 del manoscritto">
          <xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:div[@n='11']"/>
        </div>
      </div>

       
      <div class="traduzione_it" title="Traduzione della pagina 11 del manoscritto">
      <h4>Traduzione: <button id='VediTraduzione2'>see_more</button></h4>
      <span id='testo2' class='hidden'><xsl:value-of select="tei:TEI/tei:text/tei:body/tei:div[@n='2']"></xsl:value-of></span>
      </div> 


      <h3>Parole chiave:</h3>
      <div class="Parole_chiave">
        <xsl:apply-templates select="//tei:back/tei:list"></xsl:apply-templates>
      </div> 

      <div class="container-legenda">
        <h3>Terminologia</h3>
        <p><li id="gi">Elemento terminologico: Giallo</li></p>
        <p><li id="ver">Data o evento databile: Verde</li></p>
        <p><li id="mar">Toponimo: Marrone</li></p>
        <p><li id="Can">Cancellazioni</li></p>
        <p><li id="Agg">Aggiunte</li></p>
        <p><li id="abb">(Abbreviazioni)</li></p>
        <p><li id="esp">Espansioni</li></p>
        <p><li id="enf">Enfatizzazione</li></p>
        <p><li id="gap">Gap=</li></p>
        <p><li id="cor">Correzione</li></p>        
      </div>

      <div class="about" id="inf">
        <h4>Riferimenti</h4>
        <p><xsl:value-of select="//tei:fileDesc/tei:editionStmt/tei:edition"></xsl:value-of></p>
        <p><xsl:value-of select="//tei:fileDesc/tei:editionStmt/tei:respStmt[@xml:id='EV']"></xsl:value-of></p>
        <p><xsl:value-of select="//tei:fileDesc/tei:editionStmt/tei:respStmt[@xml:id='AMDG']"></xsl:value-of></p>
        <p>Tradotto da: <xsl:value-of select="//tei:fileDesc/tei:titleStmt/tei:respStmt/tei:persName"></xsl:value-of></p>
      </div>

      <div class="bibli">
        <h4>Bibliografia:</h4>
        <p>-<xsl:value-of select="//tei:bibl/tei:author[@ref='#fds']"></xsl:value-of>
        , <xsl:value-of select="//tei:bibl/tei:author[@xml:id='tdm']"></xsl:value-of>
        <i><xsl:value-of select="//tei:bibl/tei:title[@type='main']"></xsl:value-of></i>, 
        <i><xsl:value-of select="//tei:bibl/tei:title[@type='sub']"></xsl:value-of></i>, 
        <xsl:element name="span">
          <xsl:for-each select="//tei:bibl/tei:pubPlace">
            <xsl:apply-templates />  
            <xsl:text>-</xsl:text>          
          </xsl:for-each>
          <xsl:text> 1967</xsl:text>
        </xsl:element>
        </p>
      </div>
      <footer> 
			  <a>Copyright: Università di Pisa</a>
		  </footer>
    </body>
    <script src="resp.js"></script>
  </html>
</xsl:template>

<!-- Line break--> 
<xsl:template match="tei:lb">
  <br />
  <xsl:element name="span">
      <xsl:attribute name="class">NrRiga</xsl:attribute>
      <xsl:attribute name="id"><xsl:value-of select="current()/@xml:id"/></xsl:attribute>
      <b><xsl:value-of select="@n" /></b>
      <xsl:value-of select="text()"/>
  </xsl:element>
</xsl:template>


 <!--Elem.terminologici -->
<xsl:template match="//tei:body//tei:term">
  <span id="ElTe">
  <xsl:apply-templates/>
  </span>
</xsl:template>

 <!--Date o eventi databili-->
<xsl:template match="tei:TEI/tei:text//tei:date">
  <span id="Dt">
  <xsl:apply-templates/>
  </span>
</xsl:template>

 <!--Toponimo -->
<xsl:template match="tei:TEI/tei:text/tei:body/tei:div//tei:placeName">
  <span id="Top">
  <xsl:apply-templates/>
  </span>
</xsl:template>

 <!--Cancellazioni -->
<xsl:template match="tei:TEI/tei:text//tei:del">
  <span id="Can">
  <xsl:apply-templates/>
  </span>
</xsl:template>

 <!--Aggiunte -->
<xsl:template match="tei:TEI/tei:text//tei:add">
  <span id="Agg">
  <xsl:apply-templates/>
  </span>
</xsl:template>

 <!--Abbreviazioni -->
<xsl:template match="tei:TEI/tei:text//tei:abbr">
  <span id="abb">
  <xsl:apply-templates/>
  </span>
</xsl:template>

 <!--Espansioni -->
<xsl:template match="tei:TEI/tei:text//tei:expan">
  <span id="esp">
  <xsl:apply-templates/>
  </span>
</xsl:template>

 <!--Enfatizzazione -->
<xsl:template match="tei:TEI/tei:text//tei:emph">
  <span id="enf">
  <xsl:apply-templates/>
  </span>
</xsl:template>

 <!--Gap -->
<xsl:template match="tei:TEI/tei:text//tei:gap">
  <span id="gap">
  <xsl:apply-templates/>
  </span>
</xsl:template>

 <!--Sic-Corr -->
<xsl:template match="tei:TEI/tei:text//tei:choice">
    <xsl:element name="span">
        <xsl:attribute name="id">choice</xsl:attribute>   
        <xsl:element name="span">
            <xsl:attribute name="id">sic</xsl:attribute>
            <xsl:value-of select="tei:sic" />
        </xsl:element>
        <xsl:element name="span">
            <xsl:attribute name="id">corr</xsl:attribute>
            <xsl:value-of select="tei:corr" />
        </xsl:element>
    </xsl:element>
</xsl:template>


<!--Parole chiave iterazione-->

<xsl:template match="//tei:back/tei:list/tei:label">
    <xsl:for-each select="current()/tei:term">
        <xsl:element name="ol">
         </xsl:element>
    </xsl:for-each>
</xsl:template>

</xsl:stylesheet>