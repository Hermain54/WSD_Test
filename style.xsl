<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <style>          
            td,th
            {
                font-size:larger;
                padding:20px;
                text-align:center !important;
            }
                </style>
            </head>
            <body>
                <h1 style="text-align:center;">Employee Management System</h1>
                
                    <h2 style="text-align:center;">Employee Details</h2>
                    <table border="2" align="center">
                        <tr bgcolor="lightpink">
                            <th style="text-align:left">ID</th>
                            <th style="text-align:left">NAME</th>
                            <th style="text-align:left">AGE</th>
                            <th style="text-align:left">SALARY</th>
                            <th style="text-align:left">EMAIL</th>
                            <th style="text-align:left">MOBNum</th>
                            <th style="text-align:left">Designation</th>
 <th style="text-align:left">Promotion</th>
                            
                        </tr>
                        <xsl:for-each select="Company/Employee">
                            <tr>
                                <td>
                                    <xsl:value-of select="Emp-id"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Emp-name"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Emp-age"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Emp-salary"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Emp-emailid"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Emp-Phonenum"/>
                                </td>
                                <td>
                                    <xsl:value-of select="Emp-Designation"/>
                                </td>
                               </tr>
<tr>

<td><xsl:value-of select="Promotion"/></td>

      <xsl:choose>
        <xsl:when test="Emp-age &gt; 50">
          <td>Associate Project Manager</td>
        </xsl:when>
<xsl:when test="Emp-age &gt; 40">
          <td>Team Leader</td>
        </xsl:when>
<xsl:when test="Emp-age &lt; 40">
          <td>Developer</td>
        </xsl:when>
      </xsl:choose>

    </tr>

                        </xsl:for-each>
                    </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
