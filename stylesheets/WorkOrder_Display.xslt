<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <style>
          body { font-family: Arial, sans-serif; margin: 20px; }
          .card { border: 1px solid #333; padding: 20px; border-radius: 8px; max-width: 400px; }
          .header { border-bottom: 2px solid #0056b3; margin-bottom: 15px; }
          .status { font-weight: bold; color: #d9534f; }
          .label { font-weight: bold; width: 150px; display: inline-block; }
        </style>
      </head>
      <body>
        <div class="card">
          <div class="header">
            <h2>Work Order: <xsl:value-of select="WorkOrder/WONumber"/></h2>
          </div>
          <p><span class="label">Assembly ID:</span> <xsl:value-of select="WorkOrder/AssemblyID"/></p>
          <p><span class="label">Quantity:</span> <xsl:value-of select="WorkOrder/QuantityCompleted"/> / <xsl:value-of select="WorkOrder/QuantityOrdered"/></p>
          <p><span class="label">Status:</span> <span class="status"><xsl:value-of select="WorkOrder/Status"/></span></p>
          <p><span class="label">Due Date:</span> <xsl:value-of select="WorkOrder/DueDate"/></p>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
