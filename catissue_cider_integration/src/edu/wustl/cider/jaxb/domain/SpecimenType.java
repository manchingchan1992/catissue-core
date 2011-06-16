//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v1.0.4-b18-fcs
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a>
// Any modifications to this file will be lost upon recompilation of the source schema.
// Generated on: 2011.06.16 at 07:41:18 GMT
//


package edu.wustl.cider.jaxb.domain;


/**
 * Java content class for SpecimenType complex type.
 * <p>The following schema fragment specifies the expected content contained within this java content object. (defined at file:/G:/specimen_new.xsd line 34)
 * <p>
 * <pre>
 * &lt;complexType name="SpecimenType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="Id" type="{http://www.w3.org/2001/XMLSchema}long"/>
 *         &lt;element name="ClassName" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="Type" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="PathologicalStatus" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="Quantity" type="{http://www.w3.org/2001/XMLSchema}double"/>
 *         &lt;element name="IsAvailable" type="{http://www.w3.org/2001/XMLSchema}boolean"/>
 *         &lt;element name="SpecimenCharacteristics" type="{}SpecimenCharacteristicsType" minOccurs="0"/>
 *         &lt;element name="SpecimenPosition" type="{}SpecimenPositionType" minOccurs="0"/>
 *         &lt;element name="SpecimenEvents" type="{}SpecimenEventsType" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 *
 */
public interface SpecimenType {


    /**
     * Gets the value of the type property.
     *
     * @return
     *     possible object is
     *     {@link java.lang.String}
     */
    java.lang.String getType();

    /**
     * Sets the value of the type property.
     *
     * @param value
     *     allowed object is
     *     {@link java.lang.String}
     */
    void setType(java.lang.String value);

    /**
     * Gets the value of the specimenPosition property.
     *
     * @return
     *     possible object is
     *     {@link generated.SpecimenPositionType}
     */
    SpecimenPositionType getSpecimenPosition();

    /**
     * Sets the value of the specimenPosition property.
     *
     * @param value
     *     allowed object is
     *     {@link generated.SpecimenPositionType}
     */
    void setSpecimenPosition(SpecimenPositionType value);

    /**
     * Gets the value of the pathologicalStatus property.
     *
     * @return
     *     possible object is
     *     {@link java.lang.String}
     */
    java.lang.String getPathologicalStatus();

    /**
     * Sets the value of the pathologicalStatus property.
     *
     * @param value
     *     allowed object is
     *     {@link java.lang.String}
     */
    void setPathologicalStatus(java.lang.String value);

    /**
     * Gets the value of the specimenEvents property.
     *
     * @return
     *     possible object is
     *     {@link generated.SpecimenEventsType}
     */
    SpecimenEventsType getSpecimenEvents();

    /**
     * Sets the value of the specimenEvents property.
     *
     * @param value
     *     allowed object is
     *     {@link generated.SpecimenEventsType}
     */
    void setSpecimenEvents(SpecimenEventsType value);

    /**
     * Gets the value of the isAvailable property.
     *
     */
    boolean isIsAvailable();

    /**
     * Sets the value of the isAvailable property.
     *
     */
    void setIsAvailable(boolean value);

    /**
     * Gets the value of the className property.
     *
     * @return
     *     possible object is
     *     {@link java.lang.String}
     */
    java.lang.String getClassName();

    /**
     * Sets the value of the className property.
     *
     * @param value
     *     allowed object is
     *     {@link java.lang.String}
     */
    void setClassName(java.lang.String value);

    /**
     * Gets the value of the quantity property.
     *
     */
    double getQuantity();

    /**
     * Sets the value of the quantity property.
     *
     */
    void setQuantity(double value);

    /**
     * Gets the value of the id property.
     *
     */
    long getId();

    /**
     * Sets the value of the id property.
     *
     */
    void setId(long value);

    /**
     * Gets the value of the specimenCharacteristics property.
     *
     * @return
     *     possible object is
     *     {@link generated.SpecimenCharacteristicsType}
     */
    SpecimenCharacteristicsType getSpecimenCharacteristics();

    /**
     * Sets the value of the specimenCharacteristics property.
     *
     * @param value
     *     allowed object is
     *     {@link generated.SpecimenCharacteristicsType}
     */
    void setSpecimenCharacteristics(SpecimenCharacteristicsType value);

}
