<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h2>Schedule</h2>
                <table border="1">
                    <tr bgcolor="#A9A9A9">
						<th>Title</th>
                        <th>Professor</th>
						<th>Day</th>
                    </tr>
                    <xsl:for-each select="/Schedule/Lesson/Lecture">
					<xsl:sort data-type="number" order="ascending" select="((Day='Monday')*1)+((Day='Tuesday')*2)+
					((Day='Wednesday')*3)+((Day='Thursday')*4)+((Day='Friday')*5)+((Day='Saturday')*6)+((Day='Sunday')*7)"/>     
						<xsl:choose>
							<xsl:when test="Day='Monday'">
								<tr bgcolor="#B22222">
									<td><xsl:value-of select="../Title"/></td>
									<td><xsl:value-of select="../Professor"/></td>
									<td><xsl:value-of select="Day"/></td>
								</tr>
							</xsl:when>
							<xsl:when test="Day='Tuesday'">
								<tr bgcolor="#7FFF00">
									<td><xsl:value-of select="../Title"/></td>
									<td><xsl:value-of select="../Professor"/></td>
									<td><xsl:value-of select="Day"/></td>
								</tr>
							</xsl:when>
							<xsl:when test="Day='Wednesday'">
								<tr bgcolor="#0000FF">
									<td><xsl:value-of select="../Title"/></td>
									<td><xsl:value-of select="../Professor"/></td>
									<td><xsl:value-of select="Day"/></td>
								</tr>
							</xsl:when>
							<xsl:when test="Day='Thursday'">
								<tr bgcolor="#808000">
									<td><xsl:value-of select="../Title"/></td>
									<td><xsl:value-of select="../Professor"/></td>
									<td><xsl:value-of select="Day"/></td>
								</tr>
							</xsl:when>
							<xsl:when test="Day='Friday'">
								<tr bgcolor="#C71585">
									<td><xsl:value-of select="../Title"/></td>
									<td><xsl:value-of select="../Professor"/></td>
									<td><xsl:value-of select="Day"/></td>
								</tr>
							</xsl:when>
							<xsl:when test="Day='Saturday'">
								<tr bgcolor="#FF4500">
									<td><xsl:value-of select="../Title"/></td>
									<td><xsl:value-of select="../Professor"/></td>
									<td><xsl:value-of select="Day"/></td>
								</tr>
							</xsl:when>
							<xsl:otherwise>
								<tr bgcolor="#8B4513">
									<td><xsl:value-of select="../Title"/></td>
									<td><xsl:value-of select="../Professor"/></td>
									<td><xsl:value-of select="Day"/></td>
								</tr>
							</xsl:otherwise>
						</xsl:choose>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>