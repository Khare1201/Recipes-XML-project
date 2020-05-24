<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<style>
#left{
    float:left;
    width:70%;
    
    }
#right{
float:right;
width:30%;
text-align:center;
    }
header{
    background-color: blue;
    height: 120px;
}
header h1{
    text-align: center;
    color: white;
    font-size: 2.5em;
    line-height: 25px;
    padding:5px;
}
p{
text-align:center;
font-size:1.5em;
}
    .recipes{
    clear:both;
    width:100%;
    height:180%;
    }

    h3{
    font-size:2em;
    text-align:center;
    border: 2px solid black;
    }
</style>
<head> 
    <title>Recipes</title>    
</head>
<body>
    <header><h1>Recipes</h1></header>
     <xsl:for-each select="Recipe/recipe">
  <div class="recipes"> 
        <div id="left">
         <h3><xsl:value-of select="rname"/></h3> 
  
  
    
<!--
      <xsl:for-each select="ingredients">
            <xsl:value-of select="text()"/><br/>
        </xsl:for-each>
-->
   <p>Ingredients</p>
   <ul>
        <xsl:for-each select="ingredients">
          <li>
<!--            <xsl:value-of select="position()"/>-->
            <xsl:text> </xsl:text>
            <xsl:value-of select="text()"/>
          </li>
        </xsl:for-each>
      </ul>
        <p>Procedure</p>
        <ul>
        <xsl:for-each select="procedure">
          <li>
<!--            <xsl:value-of select="position()"/>-->
            <xsl:text> </xsl:text>
            <xsl:value-of select="text()"/>
          </li>
        </xsl:for-each>
      </ul>
   </div>
    <div id="right">
  <img src="{photo}"></img>
   <p>Made By</p> 
    <xsl:value-of select="madeby"/> 
    <p>Serves</p> 
    <xsl:value-of select="serves"/>
     <p>Hints for you:</p>
<ul>
        <xsl:for-each select="hint">
          <li>
<!--            <xsl:value-of select="position()"/>-->
            <xsl:text> </xsl:text>
            <xsl:value-of select="text()"/>
          </li>
        </xsl:for-each>
      </ul>
    </div>
      
   
        </div>
          </xsl:for-each>


</body>
</html>
</xsl:template>
</xsl:stylesheet>

