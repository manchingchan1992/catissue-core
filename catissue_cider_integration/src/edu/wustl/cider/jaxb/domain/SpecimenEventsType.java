//
// This file was generated by the JavaTM Architecture for XML Binding(JAXB) Reference Implementation, v1.0.4-b18-fcs 
// See <a href="http://java.sun.com/xml/jaxb">http://java.sun.com/xml/jaxb</a> 
// Any modifications to this file will be lost upon recompilation of the source schema. 
// Generated on: 2012.03.23 at 12:30:40 CDT 
//


package edu.wustl.cider.jaxb.domain;


/**
 * Java content class for SpecimenEventsType complex type.
 * <p>The following schema fragment specifies the expected content contained within this java content object. (defined at file:/C:/Users/pkalantri/Documents/caTissue/specimen_new.xsd line 57)
 * <p>
 * <pre>
 * &lt;complexType name="SpecimenEventsType">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;all>
 *         &lt;element name="CollectionEvent" type="{}CollectionEventType"/>
 *       &lt;/all>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 */
public interface SpecimenEventsType {


    /**
     * Gets the value of the collectionEvent property.
     * 
     * @return
     *     possible object is
     *     {@link edu.wustl.cider.jaxb.domain.CollectionEventType}
     */
    edu.wustl.cider.jaxb.domain.CollectionEventType getCollectionEvent();

    /**
     * Sets the value of the collectionEvent property.
     * 
     * @param value
     *     allowed object is
     *     {@link edu.wustl.cider.jaxb.domain.CollectionEventType}
     */
    void setCollectionEvent(edu.wustl.cider.jaxb.domain.CollectionEventType value);

}