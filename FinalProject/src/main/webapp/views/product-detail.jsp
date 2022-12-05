<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="product-area pt-35">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="li-product-tab">
					<ul class="nav li-product-menu">
						<li><a class="active" data-toggle="tab" href="#description"><span>Description</span></a></li>
						<li><a data-toggle="tab" href="#product-details"><span>Product
									Details</span></a></li>
						<li><a data-toggle="tab" href="#reviews"><span>Reviews</span></a></li>
					</ul>
				</div>
				<!-- Begin Li's Tab Menu Content Area -->
			</div>
		</div>
		<div class="tab-content">
			<div id="description" class="tab-pane active show" role="tabpanel">
				<div class="product-description">
				</div>
			</div>
			<div id="product-details" class="tab-pane" role="tabpanel">
				<div class="product-details-manufacturer">
				<h1 style="font-size: 30px;margin-bottom: 20px">Specifications</h1>
					<table style="width: 100%">
						
						<c:if test="${productDetail.getCPU().length() > 0}">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>CPU</th>
								<td>${productDetail.getCPU()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getRAM().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>RAM</th>
								<td>${productDetail.getRAM()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getHardware().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Hardware</th>
								<td>${productDetail.getHardware()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getCardGraphic().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Card Graphic</th>
								<td>${productDetail.getCardGraphic()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getScreen().length() > 0}">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Screen</th>
								<td>${productDetail.getScreen()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getPortCommunicate().length() > 0}">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Port Communicate</th>
								<td>${productDetail.getPortCommunicate()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getKeyboard().length() > 0}">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Keyboard</th>
								<td>${productDetail.getKeyboard()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getLANStandard().length() > 0}">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>LAN Standard</th>
								<td>${productDetail.getLANStandard()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getWIFIStandard().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>WIFI Standard</th>
								<td>${productDetail.getWIFIStandard()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getBluetooth().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Bluetooth</th>
								<td>${productDetail.getBluetooth()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getWebcam().length() > 0}">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Webcam</th>
								<td>${productDetail.getWebcam()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getOS().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Operate System</th>
								<td>${productDetail.getOS()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getBatery().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Batery</th>
								<td>${productDetail.getBatery()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getWeight().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Weight</th>
								<td>${productDetail.getWeight()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getColor().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Color</th>
								<td>${productDetail.getColor()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getSize().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Size</th>
								<td>${productDetail.getSize()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getScreenTechnology().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Screen Technology</th>
								<td>${productDetail.getScreenTechnology()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getResolutionScreen().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Resolution Screen</th>
								<td>${productDetail.getResolutionScreen()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getResolutionCamera().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Resolution Camera</th>
								<td>${productDetail.getResolutionCamera()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getMobileNetwork().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Mobile Network</th>
								<td>${productDetail.getMobileNetwork()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getROM().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>ROM</th>
								<td>${productDetail.getROM()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getNumberOfSim().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Number Of Sim</th>
								<td>${productDetail.getNumberOfSim()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getResolutionCamera().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Resolution Camera</th>
								<td>${productDetail.getResolutionCamera()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getKeycaps().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Keycaps</th>
								<td>${productDetail.getKeycaps()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getSwitch().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Switch</th>
								<td>${productDetail.getSwitch()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getStyle().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Style</th>
								<td>${productDetail.getStyle()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getConnect().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Connect</th>
								<td>${productDetail.getConnect()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getLED().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>LED</th>
								<td>${productDetail.getLED()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getCompability().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Compability</th>
								<td>${productDetail.getCompability()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getAccessory().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Accessory</th>
								<td>${productDetail.getAccessory()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getModel().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Model</th>
								<td>${productDetail.getModel()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getNode().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Node</th>
								<td>${productDetail.getNode()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getHoldingStyle().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Holding Style</th>
								<td>${productDetail.getHoldingStyle()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getSensors().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Sensors</th>
								<td>${productDetail.getSensors()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getResponseTime().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Response Time</th>
								<td>${productDetail.getResponseTime()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getAcceleration().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Acceleration</th>
								<td>${productDetail.getAcceleration()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getMicrophone().length > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Microphone</th>
								<td>${productDetail.getMicrophone()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getImpedance().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Impedance</th>
								<td>${productDetail.getImpedance()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getFrequency().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Frequency</th>
								<td>${productDetail.getFrequency()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getSoundproofing().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Sound Proofing</th>
								<td>${productDetail.getSoundproofing()}</td>
							</tr>
						</c:if>
						<c:if test="${productDetail.getHeadphoneMaterial().length() > 0 }">
							<tr style="border-bottom: 0.2px solid grey;">
								<th>Headphone Material</th>
								<td>${productDetail.getHeadphoneMaterial()}</td>
							</tr>
						</c:if>
						
					</table>
				</div>
			</div>
			<div id="reviews" class="tab-pane" role="tabpanel">
				<div class="product-reviews">
					<div class="product-details-comment-block">
						
					</div>
				</div>
			</div>
		</div>
	</div>
</div>