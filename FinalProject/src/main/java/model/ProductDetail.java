package model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "product_detail")
public class ProductDetail implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;
	
	//Laptop
	private int ProductCode;
	
	//Laptop-Phone
    private String CPU;
    //Laptop-Phone
    private String RAM;
    
    private String Hardware;
    private String CardGraphic;
    private String Screen;
    private String PortCommunicate;
    private String Keyboard;
    private String LANStandard;
    private String WIFIStandard;
    private String Bluetooth;
    private String Webcam;
    
    //Laptop-Phone
    private String OS;
    private String Batery;
    private String Weight;
    private String Color;
    private String Size;
    
    //Phone
    private String ScreenTechnology;
    private String ResolutionScreen;
    private String ResolutionCamera;
    private String ROM;
    private String MobileNetwork;
    private String NumberOfSim;
    
    //Headphone
    private String Keycaps;
    private String Switch;
    private String Style;
    private String Connect;
    private String LED;
    private String Compability;
    private String Accessory;
    
    //Mouse
    private String Model;
    private String Node;
    private String HoldingStyle;
    private String Sensors;
    private String ResponseTime;
    private String Acceleration;
    
    //Mouse
    private String Microphone;
    private String Impedance;
    private String Frequency;
    private String Soundproofing;
    private String HeadphoneMaterial;
    
    public String getMicrophone() {
		return Microphone;
	}

	public void setMicrophone(String microphone) {
		Microphone = microphone;
	}

	public String getImpedance() {
		return Impedance;
	}

	public void setImpedance(String impedance) {
		Impedance = impedance;
	}

	public String getFrequency() {
		return Frequency;
	}

	public void setFrequency(String frequency) {
		Frequency = frequency;
	}

	public String getSoundproofing() {
		return Soundproofing;
	}

	public void setSoundproofing(String soundproofing) {
		Soundproofing = soundproofing;
	}

	public String getHeadphoneMaterial() {
		return HeadphoneMaterial;
	}

	public void setHeadphoneMaterial(String headphoneMaterial) {
		HeadphoneMaterial = headphoneMaterial;
	}

	public String getModel() {
		return Model;
	}

	public void setModel(String model) {
		Model = model;
	}

	public String getNode() {
		return Node;
	}

	public void setNode(String node) {
		Node = node;
	}

	public String getHoldingStyle() {
		return HoldingStyle;
	}

	public void setHoldingStyle(String holdingStyle) {
		HoldingStyle = holdingStyle;
	}

	public String getSensors() {
		return Sensors;
	}

	public void setSensors(String sensors) {
		Sensors = sensors;
	}

	public String getResponseTime() {
		return ResponseTime;
	}

	public void setResponseTime(String responseTime) {
		ResponseTime = responseTime;
	}

	public String getAcceleration() {
		return Acceleration;
	}

	public void setAcceleration(String acceleration) {
		Acceleration = acceleration;
	}

	public String getKeycaps() {
		return Keycaps;
	}

	public void setKeycaps(String keycaps) {
		Keycaps = keycaps;
	}

	public String getSwitch() {
		return Switch;
	}

	public void setSwitch(String switch1) {
		Switch = switch1;
	}

	public String getStyle() {
		return Style;
	}

	public void setStyle(String style) {
		Style = style;
	}

	public String getConnect() {
		return Connect;
	}

	public void setConnect(String connect) {
		Connect = connect;
	}

	public String getLED() {
		return LED;
	}

	public void setLED(String lED) {
		LED = lED;
	}

	public String getCompability() {
		return Compability;
	}

	public void setCompability(String compability) {
		Compability = compability;
	}

	public String getAccessory() {
		return Accessory;
	}

	public void setAccessory(String accessory) {
		Accessory = accessory;
	}

	public String getScreenTechnology() {
		return ScreenTechnology;
	}

	public void setScreenTechnology(String screenTechnology) {
		ScreenTechnology = screenTechnology;
	}

	public String getResolutionScreen() {
		return ResolutionScreen;
	}

	public void setResolutionScreen(String resolutionScreen) {
		ResolutionScreen = resolutionScreen;
	}

	public String getResolutionCamera() {
		return ResolutionCamera;
	}

	public void setResolutionCamera(String resolutionCamera) {
		ResolutionCamera = resolutionCamera;
	}

	public String getROM() {
		return ROM;
	}

	public void setROM(String rOM) {
		ROM = rOM;
	}

	public String getMobileNetwork() {
		return MobileNetwork;
	}

	public void setMobileNetwork(String mobileNetwork) {
		MobileNetwork = mobileNetwork;
	}

	public String getNumberOfSim() {
		return NumberOfSim;
	}

	public void setNumberOfSim(String numberOfSim) {
		NumberOfSim = numberOfSim;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public int getProductCode() {
		return ProductCode;
	}

	public void setProductCode(int productCode) {
		ProductCode = productCode;
	}

	public String getCPU() {
		return CPU;
	}

	public void setCPU(String cPU) {
		CPU = cPU;
	}

	public String getRAM() {
		return RAM;
	}

	public void setRAM(String rAM) {
		RAM = rAM;
	}

	public String getHardware() {
		return Hardware;
	}

	public void setHardware(String hardware) {
		Hardware = hardware;
	}

	public String getCardGraphic() {
		return CardGraphic;
	}

	public void setCardGraphic(String cardGraphic) {
		CardGraphic = cardGraphic;
	}

	public String getScreen() {
		return Screen;
	}

	public void setScreen(String screen) {
		Screen = screen;
	}

	public String getPortCommunicate() {
		return PortCommunicate;
	}

	public void setPortCommunicate(String portCommunicate) {
		PortCommunicate = portCommunicate;
	}

	public String getKeyboard() {
		return Keyboard;
	}

	public void setKeyboard(String keyboard) {
		Keyboard = keyboard;
	}

	public String getLANStandard() {
		return LANStandard;
	}

	public void setLANStandard(String lANStandard) {
		LANStandard = lANStandard;
	}

	public String getWIFIStandard() {
		return WIFIStandard;
	}

	public void setWIFIStandard(String wIFIStandard) {
		WIFIStandard = wIFIStandard;
	}

	public String getBluetooth() {
		return Bluetooth;
	}

	public void setBluetooth(String bluetooth) {
		Bluetooth = bluetooth;
	}

	public String getWebcam() {
		return Webcam;
	}

	public void setWebcam(String webcam) {
		Webcam = webcam;
	}

	public String getOS() {
		return OS;
	}

	public void setOS(String oS) {
		OS = oS;
	}

	public String getBatery() {
		return Batery;
	}

	public void setBatery(String batery) {
		Batery = batery;
	}

	public String getWeight() {
		return Weight;
	}

	public void setWeight(String weight) {
		Weight = weight;
	}

	public String getColor() {
		return Color;
	}

	public void setColor(String color) {
		Color = color;
	}

	public String getSize() {
		return Size;
	}

	public void setSize(String size) {
		Size = size;
	}

	public String getEvaluateDetail() {
		return EvaluateDetail;
	}

	public void setEvaluateDetail(String evaluateDetail) {
		EvaluateDetail = evaluateDetail;
	}

	private String EvaluateDetail;
}
