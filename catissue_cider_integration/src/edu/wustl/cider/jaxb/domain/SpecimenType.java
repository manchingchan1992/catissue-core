//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v1.0.4-b18-fcs 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2012.03.23 at 12:30:40 CDT 
//


package edu.wustl.cider.jaxb.domain;


/**
 * Java content class for SpecimenType complex type.
 * <p>The following schema fragment specifies the expected content contained within this java content object. (defined at file:/C:/Users/pkalantri/Documents/caTissue/specimen_new.xsd line 43)
 * <p>
 * <pre>
 * &lt;complexType name="SpecimenType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;all>
 *         &lt;element name="id" type="{http://www.w3.org/2001/XMLSchema}long"/>
 *         &lt;element name="className" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="type" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="pathologicalStatus" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="quantity" type="{http://www.w3.org/2001/XMLSchema}double"/>
 *         &lt;element name="activityStatus" type="{http://www.w3.org/2001/XMLSchema}string"/>
 *         &lt;element name="isAvailable" type="{http://www.w3.org/2001/XMLSchema}boolean" minOccurs="0"/>
 *         &lt;element name="SpecimenCharacteristics" type="{}SpecimenCharacteristicsType" minOccurs="0"/>
 *         &lt;element name="SpecimenPosition" type="{}SpecimenPositionType" minOccurs="0"/>
 *         &lt;element name="SpecimenEvents" type="{}SpecimenEventsType" minOccurs="0"/>
 *       &lt;/all>
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
     *     {@link edu.wustl.cider.jaxb.domain.SpecimenPositionType}
     */
    edu.wustl.cider.jaxb.domain.SpecimenPositionType getSpecimenPosition();

    /**
     * Sets the value of the specimenPosition property.
     * 
     * @param value
     *     allowed object is
     *     {@link edu.wustl.cider.jaxb.domain.SpecimenPositionType}
     */
    void setSpecimenPosition(edu.wustl.cider.jaxb.domain.SpecimenPositionType value);

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
     *     {@link edu.wustl.cider.jaxb.domain.SpecimenEventsType}
     */
    edu.wustl.cider.jaxb.domain.SpecimenEventsType getSpecimenEvents();

    /**
     * Sets the value of the specimenEvents property.
     * 
     * @param value
     *     allowed object is
     *     {@link edu.wustl.cider.jaxb.domain.SpecimenEventsType}
     */
    void setSpecimenEvents(edu.wustl.cider.jaxb.domain.SpecimenEventsType value);

    /**
     * Gets the value of the activityStatus property.
     * 
     * @return
     *     possible object is
     *     {@link java.lang.String}
     */
    java.lang.String getActivityStatus();

    /**
     * Sets the value of the activityStatus property.
     * 
     * @param value
     *     allowed object is
     *     {@link java.lang.String}
     */
    void setActivityStatus(java.lang.String value);

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
     *     {@link edu.wustl.cider.jaxb.domain.SpecimenCharacteristicsType}
     */
    edu.wustl.cider.jaxb.domain.SpecimenCharacteristicsType getSpecimenCharacteristics();

    /**
     * Sets the value of the specimenCharacteristics property.
     * 
     * @param value
     *     allowed object is
     *     {@link edu.wustl.cider.jaxb.domain.SpecimenCharacteristicsType}
     */
    void setSpecimenCharacteristics(edu.wustl.cider.jaxb.domain.SpecimenCharacteristicsType value);

}