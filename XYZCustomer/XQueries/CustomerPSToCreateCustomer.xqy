xquery version "1.0" encoding "utf-8";

(:: OracleAnnotationVersion "1.0" ::)

declare namespace ns1="http://xmlns.xyzbank.com/schema/Customer";
(:: import schema at "../WSDLs/CustomerPS.wsdl" ::)
declare namespace ns2="urn:xyzbank:cust:schema:customer";
(:: import schema at "../../XYZCommon/WSDLs/CustomerService.wsdl" ::)

declare variable $inputCustomer as element() (:: schema-element(ns1:Customer) ::) external;

declare function local:CustomerPSToCreateCustomer($inputCustomer as element() (:: schema-element(ns1:Customer) ::)) as element() (:: schema-element(ns2:customer) ::) {
    <ns2:customer>
        {
            if ($inputCustomer/CustomerID)
            then <customer_id>{fn:data($inputCustomer/CustomerID)}</customer_id>
            else ()
        }
        <full_name>{fn:concat(fn:data($inputCustomer/FirstName),',', $inputCustomer/LastName)}</full_name>
        <customer_type>{fn:data($inputCustomer/CustomerType)}</customer_type>
        <date_of_birth>{fn:data($inputCustomer/DOB)}</date_of_birth>
        <email>{fn:data($inputCustomer/Email)}</email>
        <phone>{fn:data($inputCustomer/Phone)}</phone>
        <addr_line1>{fn:data($inputCustomer/Address1)}</addr_line1>
        {
            if ($inputCustomer/Address2)
            then <addr_line2>{fn:data($inputCustomer/Address2)}</addr_line2>
            else ()
        }
        {
            if ($inputCustomer/Address3)
            then <addr_line3>{fn:data($inputCustomer/Address3)}</addr_line3>
            else ()
        }
        {
            if ($inputCustomer/State or $inputCustomer/Country or $inputCustomer/ZipCode  )
            then <addr_line4>{fn:concat(fn:data($inputCustomer/State),',', $inputCustomer/Country,',', fn:data($inputCustomer/ZipCode))}</addr_line4>
            else ()
        }
    </ns2:customer>
};

local:CustomerPSToCreateCustomer($inputCustomer)