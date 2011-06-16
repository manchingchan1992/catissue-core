//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v1.0.4-b18-fcs
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a>
// Any modifications to this file will be lost upon recompilation of the source schema.
// Generated on: 2011.06.16 at 07:41:18 GMT
//


package edu.wustl.cider.jaxb.domain;


/**
 * Java content class for SpecimenCollectionGroupType complex type.
 * <p>The following schema fragment specifies the expected content contained within this java content object. (defined at file:/G:/specimen_new.xsd line 21)
 * <p>
 * <pre>
 * &lt;complexType name="SpecimenCollectionGroupType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="AccessionNumber" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="ClinicalDiagnosis" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="ClinicalStatus" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="SpecimenCollection" type="{}SpecimenCollectionType" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 *
 */
public interface SpecimenCollectionGroupType {


    /**
     * Gets the value of the accessionNumber property.
     *
     * @return
     *     possible object is
     *     {@link java.lang.String}
     */
    java.lang.String getAccessionNumber();

    /**
     * Sets the value of the accessionNumber property.
     *
     * @param value
     *     allowed object is
     *     {@link java.lang.String}
     */
    void setAccessionNumber(java.lang.String value);

    /**
     * Gets the value of the clinicalDiagnosis property.
     *
     * @return
     *     possible object is
     *     {@link java.lang.String}
     */
    java.lang.String getClinicalDiagnosis();

    /**
     * Sets the value of the clinicalDiagnosis property.
     *
     * @param value
     *     allowed object is
     *     {@link java.lang.String}
     */
    void setClinicalDiagnosis(java.lang.String value);

    /**
     * Gets the value of the clinicalStatus property.
     *
     * @return
     *     possible object is
     *     {@link java.lang.String}
     */
    java.lang.String getClinicalStatus();

    /**
     * Sets the value of the clinicalStatus property.
     *
     * @param value
     *     allowed object is
     *     {@link java.lang.String}
     */
    void setClinicalStatus(java.lang.String value);

    /**
     * Gets the value of the specimenCollection property.
     *
     * @return
     *     possible object is
     *     {@link generated.SpecimenCollectionType}
     */
    SpecimenCollectionType getSpecimenCollection();

    /**
     * Sets the value of the specimenCollection property.
     *
     * @param value
     *     allowed object is
     *     {@link generated.SpecimenCollectionType}
     */
    void setSpecimenCollection(SpecimenCollectionType value);

}
