<xsl:stylesheet version="1.0" exclude-result-prefixes="xsi oracle-xsl-mapper xsl xsd ns0 tns oraxsl DVMFunctions BasicCredentialsUserFunction UUIDUserFunction IsUserInRoleFunction IsUserInGroupFunction XrefFunctions" xmlns:oraxsl="http://www.oracle.com/XSL/Transform/java" xmlns:DVMFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.dvm.DVMFunctions" xmlns:tns="urn:xyzbank:cust:schema:customer" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:BasicCredentialsUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.BasicCredentialsUserFunction" xmlns:oracle-xsl-mapper="http://www.oracle.com/xsl/mapper/schemas" xmlns:UUIDUserFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.UUIDUserFunction" xmlns:ns0="http://xmlns.xyzbank.com/schema/Customer" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:IsUserInRoleFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInRoleFunction" xmlns:IsUserInGroupFunction="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.stages.functions.IsUserInGroupFunction" xmlns:XrefFunctions="http://www.oracle.com/XSL/Transform/java/com.bea.wli.sb.functions.xref.XrefFunctions" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:n3="urn:xyzbank:cust:wsdl:customer">
  <oracle-xsl-mapper:schema>
    <!--SPECIFICATION OF MAP SOURCES AND TARGETS, DO NOT MODIFY.-->
    <oracle-xsl-mapper:mapSources>
      <oracle-xsl-mapper:source type="WSDL">
        <oracle-xsl-mapper:schema location="../WSDLs/CustomerPS.wsdl"/>
        <oracle-xsl-mapper:rootElement name="Customer" namespace="http://xmlns.xyzbank.com/schema/Customer"/>
      </oracle-xsl-mapper:source>
    </oracle-xsl-mapper:mapSources>
    <oracle-xsl-mapper:mapTargets>
      <oracle-xsl-mapper:target type="WSDL">
        <oracle-xsl-mapper:schema location="../../XYZCommon/WSDLs/CustomerService.wsdl"/>
        <oracle-xsl-mapper:rootElement name="customer" namespace="urn:xyzbank:cust:schema:customer"/>
      </oracle-xsl-mapper:target>
    </oracle-xsl-mapper:mapTargets>
    <!--GENERATED BY ORACLE XSL MAPPER 12.1.3.0.0(XSLT Build 140529.0700.0211) AT [THU AUG 14 22:26:00 IST 2014].-->
  </oracle-xsl-mapper:schema>
  <!--User Editing allowed BELOW this line - DO NOT DELETE THIS LINE-->
  <xsl:template match="/">
    <tns:customer>
      <xsl:if test="/ns0:Customer/CustomerID">
        <customer_id>
          <xsl:value-of select="/ns0:Customer/CustomerID"/>
        </customer_id>
      </xsl:if>
      <xsl:if test="/ns0:Customer/FirstName and /ns0:Customer/LastName">
      <full_name>
        <xsl:value-of select="concat (/ns0:Customer/FirstName, &quot;,&quot;, /ns0:Customer/LastName )"/>
      </full_name>
      </xsl:if>
      <xsl:if test="/ns0:Customer/CustomerType">
        <customer_type>
          <xsl:value-of select="/ns0:Customer/CustomerType"/>
        </customer_type>
      </xsl:if>
      <xsl:if test="/ns0:Customer/DOB">
        <date_of_birth>
          <xsl:value-of select="/ns0:Customer/DOB"/>
        </date_of_birth>
      </xsl:if>
      <xsl:if test="/ns0:Customer/Email">
        <email>
          <xsl:value-of select="/ns0:Customer/Email"/>
        </email>
      </xsl:if>
      <xsl:if test="/ns0:Customer/Phone">
        <phone>
          <xsl:value-of select="/ns0:Customer/Phone"/>
        </phone>
      </xsl:if>
      <xsl:if test="/ns0:Customer/Address1">
        <addr_line1>
          <xsl:value-of select="/ns0:Customer/Address1"/>
        </addr_line1>
      </xsl:if>
      <xsl:if test="/ns0:Customer/Address2">
        <addr_line2>
          <xsl:value-of select="/ns0:Customer/Address2"/>
        </addr_line2>
      </xsl:if>
      <xsl:if test="/ns0:Customer/Address3">
        <addr_line3>
          <xsl:value-of select="/ns0:Customer/Address3"/>
        </addr_line3>
      </xsl:if>
      <xsl:if test="/ns0:Customer/State and /ns0:Customer/Country and /ns0:Customer/ZipCode">
      <addr_line4>
        <xsl:value-of select="concat (/ns0:Customer/State, &quot;,&quot;, /ns0:Customer/Country, &quot;,&quot;, /ns0:Customer/ZipCode )"/>
      </addr_line4>
      </xsl:if>
    </tns:customer>
  </xsl:template>
</xsl:stylesheet>