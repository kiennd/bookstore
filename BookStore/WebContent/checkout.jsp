<%@page import="model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%@include file="head.jsp"%>
</head>
<body>
	<!-- Start Main Wrapper -->
	<div class="wrapper">
		<!-- Start Main Header -->
		<!-- Start Top Nav Bar -->
		<%@include file="topNavBar.jsp"%>
		<!-- End Top Nav Bar -->
		<%@include file="header.jsp"%>
		<!-- End Main Header -->
		
		  <!-- Start Main Content Holder -->
		  <section id="content-holder" class="container-fluid container">
		    <section class="row-fluid">
		      <div class="heading-bar">
		        <h2>Checkout</h2>
		        <span class="h-line"></span> </div>
		      <!-- Start Main Content -->
		      <section class="checkout-holder">
		        <section class="span9 first">
		          <!-- Start Accordian Section -->
		          <div class="accordion" id="accordion2">
		          	<!--
		            <div class="accordion-group">
		            	
		              <div class="accordion-heading"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne"> Checkout Method </a></div>
		              <div id="collapseOne" class="accordion-body collapse in">
		                <div class="accordion-inner">
		                  <div class="span6 check-method-left"> <strong class="green-t">Checkout as a Guest or Register</strong>
		                    <p>Register with us for future convenience:</p>
		                    <label class="radio">
		                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
		                    Checkout as Guest </label>
		                    <label class="radio">
		                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
		                    Register </label>
		                    <p>Register and save time!</p>
		                    <p>Register with us for future convenience:</p>
		                    <p>* Fast and easy check out <br />
		                      * Easy access to your order history and status</p>
		                    <a href="#collapseTwo" class="more-btn">Continue</a> </div>
		                  <div class="span5 check-method-right"> <strong class="green-t">Login</strong>
		                    <p>Already registered? Please log in below:</p>
		                    <form class="form-horizontal">
		                      <div class="control-group">
		                        <label class="control-label" for="inputEmail">Email Address <sup>*</sup></label>
		                        <div class="controls">
		                          <input type="text" id="inputEmail" placeholder="">
		                        </div>
		                      </div>
		                      <div class="control-group">
		                        <label class="control-label" for="inputPassword">Password <sup>*</sup></label>
		                        <div class="controls">
		                          <input type="password" id="inputPassword" placeholder="">
		                        </div>
		                      </div>
		                      <p><a href="#">Forgot your password?</a></p>
		                      <div class="control-group">
		                        <div class="controls">
		                          <button type="submit" class="more-btn">Login</button>
		                        </div>
		                      </div>
		                    </form>
		                  </div>
		                </div>
		              </div>
		            </div>
		            -->
		            <div class="accordion-group">
		              <div class="accordion-heading"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseTwo"> Billing Information </a> </div>
		              <div id="collapseTwo" class="accordion-body collapse">
		                <div class="accordion-inner">
		                    <form class="form-horizontal">
		                        <ul class="billing-form">
		                            <li>   
		                              <div class="control-group">
		                                <label class="control-label" for="inputFirstname">Fullname <sup>*</sup></label>
		                                <div class="controls">
		                                  <%=user.getFullname() %>
		                                </div>
		                              </div>
		                              <div class="control-group">
		                                <label class="control-label" for="inputEmail">Email<sup>*</sup></label>
		                                <div class="controls">
		                                  <%=user.getEmail() %>
		                                </div>
		                              </div>
		                            </li>
		                            <li>   
		                              <div class="control-group">
		                                <label class="control-label" for="inputAddress">Address<sup>*</sup></label>
		                                <div class="controls">
		                                  <%=user.getAddress() %>
		                                </div>
		                              </div>
		                              <div class="control-group">
		                                <label class="control-label" for="inputCity">City <sup>*</sup></label>
		                                <div class="controls">
		                                  <%=user.getCity() %>
		                                </div>
		                              </div>
		                            </li>
		                            <li>   
		                              <div class="control-group">
		                                <label class="control-label" for="inputZip">Zip/Postal Code <sup>*</sup></label>
		                                <div class="controls">
		                                  <%=user.getZipcode() %>
		                                </div>
		                              </div>
		                              <div class="control-group">
		                                <label class="control-label" for="inputCountry">Country <sup>*</sup></label>
		                                <div class="controls">
		                                <!--
		                                  <select name="country">
		                                        <option value="">United States...</option>
		                                        <option value="Afganistan">Afghanistan</option>
		                                        <option value="Albania">Albania</option>
		                                        <option value="Algeria">Algeria</option>
		                                        <option value="American Samoa">American Samoa</option>
		                                        <option value="Andorra">Andorra</option>
		                                        <option value="Angola">Angola</option>
		                                        <option value="Anguilla">Anguilla</option>
		                                        <option value="Antigua &amp; Barbuda">Antigua &amp; Barbuda</option>
		                                        <option value="Argentina">Argentina</option>
		                                        <option value="Armenia">Armenia</option>
		                                        <option value="Aruba">Aruba</option>
		                                        <option value="Australia">Australia</option>
		                                        <option value="Austria">Austria</option>
		                                        <option value="Azerbaijan">Azerbaijan</option>
		                                        <option value="Bahamas">Bahamas</option>
		                                        <option value="Bahrain">Bahrain</option>
		                                        <option value="Bangladesh">Bangladesh</option>
		                                        <option value="Barbados">Barbados</option>
		                                        <option value="Belarus">Belarus</option>
		                                        <option value="Belgium">Belgium</option>
		                                        <option value="Belize">Belize</option>
		                                        <option value="Benin">Benin</option>
		                                        <option value="Bermuda">Bermuda</option>
		                                        <option value="Bhutan">Bhutan</option>
		                                        <option value="Bolivia">Bolivia</option>
		                                        <option value="Bonaire">Bonaire</option>
		                                        <option value="Bosnia &amp; Herzegovina">Bosnia &amp; Herzegovina</option>
		                                        <option value="Botswana">Botswana</option>
		                                        <option value="Brazil">Brazil</option>
		                                        <option value="British Indian Ocean Ter">British Indian Ocean Ter</option>
		                                        <option value="Brunei">Brunei</option>
		                                        <option value="Bulgaria">Bulgaria</option>
		                                        <option value="Burkina Faso">Burkina Faso</option>
		                                        <option value="Burundi">Burundi</option>
		                                        <option value="Cambodia">Cambodia</option>
		                                        <option value="Cameroon">Cameroon</option>
		                                        <option value="Canada">Canada</option>
		                                        <option value="Canary Islands">Canary Islands</option>
		                                        <option value="Cape Verde">Cape Verde</option>
		                                        <option value="Cayman Islands">Cayman Islands</option>
		                                        <option value="Central African Republic">Central African Republic</option>
		                                        <option value="Chad">Chad</option>
		                                        <option value="Channel Islands">Channel Islands</option>
		                                        <option value="Chile">Chile</option>
		                                        <option value="China">China</option>
		                                        <option value="Christmas Island">Christmas Island</option>
		                                        <option value="Cocos Island">Cocos Island</option>
		                                        <option value="Colombia">Colombia</option>
		                                        <option value="Comoros">Comoros</option>
		                                        <option value="Congo">Congo</option>
		                                        <option value="Cook Islands">Cook Islands</option>
		                                        <option value="Costa Rica">Costa Rica</option>
		                                        <option value="Cote DIvoire">Cote D'Ivoire</option>
		                                        <option value="Croatia">Croatia</option>
		                                        <option value="Cuba">Cuba</option>
		                                        <option value="Curaco">Curacao</option>
		                                        <option value="Cyprus">Cyprus</option>
		                                        <option value="Czech Republic">Czech Republic</option>
		                                        <option value="Denmark">Denmark</option>
		                                        <option value="Djibouti">Djibouti</option>
		                                        <option value="Dominica">Dominica</option>
		                                        <option value="Dominican Republic">Dominican Republic</option>
		                                        <option value="East Timor">East Timor</option>
		                                        <option value="Ecuador">Ecuador</option>
		                                        <option value="Egypt">Egypt</option>
		                                        <option value="El Salvador">El Salvador</option>
		                                        <option value="Equatorial Guinea">Equatorial Guinea</option>
		                                        <option value="Eritrea">Eritrea</option>
		                                        <option value="Estonia">Estonia</option>
		                                        <option value="Ethiopia">Ethiopia</option>
		                                        <option value="Falkland Islands">Falkland Islands</option>
		                                        <option value="Faroe Islands">Faroe Islands</option>
		                                        <option value="Fiji">Fiji</option>
		                                        <option value="Finland">Finland</option>
		                                        <option value="France">France</option>
		                                        <option value="French Guiana">French Guiana</option>
		                                        <option value="French Polynesia">French Polynesia</option>
		                                        <option value="French Southern Ter">French Southern Ter</option>
		                                        <option value="Gabon">Gabon</option>
		                                        <option value="Gambia">Gambia</option>
		                                        <option value="Georgia">Georgia</option>
		                                        <option value="Germany">Germany</option>
		                                        <option value="Ghana">Ghana</option>
		                                        <option value="Gibraltar">Gibraltar</option>
		                                        <option value="Great Britain">Great Britain</option>
		                                        <option value="Greece">Greece</option>
		                                        <option value="Greenland">Greenland</option>
		                                        <option value="Grenada">Grenada</option>
		                                        <option value="Guadeloupe">Guadeloupe</option>
		                                        <option value="Guam">Guam</option>
		                                        <option value="Guatemala">Guatemala</option>
		                                        <option value="Guinea">Guinea</option>
		                                        <option value="Guyana">Guyana</option>
		                                        <option value="Haiti">Haiti</option>
		                                        <option value="Hawaii">Hawaii</option>
		                                        <option value="Honduras">Honduras</option>
		                                        <option value="Hong Kong">Hong Kong</option>
		                                        <option value="Hungary">Hungary</option>
		                                        <option value="Iceland">Iceland</option>
		                                        <option value="India">India</option>
		                                        <option value="Indonesia">Indonesia</option>
		                                        <option value="Iran">Iran</option>
		                                        <option value="Iraq">Iraq</option>
		                                        <option value="Ireland">Ireland</option>
		                                        <option value="Isle of Man">Isle of Man</option>
		                                        <option value="Israel">Israel</option>
		                                        <option value="Italy">Italy</option>
		                                        <option value="Jamaica">Jamaica</option>
		                                        <option value="Japan">Japan</option>
		                                        <option value="Jordan">Jordan</option>
		                                        <option value="Kazakhstan">Kazakhstan</option>
		                                        <option value="Kenya">Kenya</option>
		                                        <option value="Kiribati">Kiribati</option>
		                                        <option value="Korea North">Korea North</option>
		                                        <option value="Korea Sout">Korea South</option>
		                                        <option value="Kuwait">Kuwait</option>
		                                        <option value="Kyrgyzstan">Kyrgyzstan</option>
		                                        <option value="Laos">Laos</option>
		                                        <option value="Latvia">Latvia</option>
		                                        <option value="Lebanon">Lebanon</option>
		                                        <option value="Lesotho">Lesotho</option>
		                                        <option value="Liberia">Liberia</option>
		                                        <option value="Libya">Libya</option>
		                                        <option value="Liechtenstein">Liechtenstein</option>
		                                        <option value="Lithuania">Lithuania</option>
		                                        <option value="Luxembourg">Luxembourg</option>
		                                        <option value="Macau">Macau</option>
		                                        <option value="Macedonia">Macedonia</option>
		                                        <option value="Madagascar">Madagascar</option>
		                                        <option value="Malaysia">Malaysia</option>
		                                        <option value="Malawi">Malawi</option>
		                                        <option value="Maldives">Maldives</option>
		                                        <option value="Mali">Mali</option>
		                                        <option value="Malta">Malta</option>
		                                        <option value="Marshall Islands">Marshall Islands</option>
		                                        <option value="Martinique">Martinique</option>
		                                        <option value="Mauritania">Mauritania</option>
		                                        <option value="Mauritius">Mauritius</option>
		                                        <option value="Mayotte">Mayotte</option>
		                                        <option value="Mexico">Mexico</option>
		                                        <option value="Midway Islands">Midway Islands</option>
		                                        <option value="Moldova">Moldova</option>
		                                        <option value="Monaco">Monaco</option>
		                                        <option value="Mongolia">Mongolia</option>
		                                        <option value="Montserrat">Montserrat</option>
		                                        <option value="Morocco">Morocco</option>
		                                        <option value="Mozambique">Mozambique</option>
		                                        <option value="Myanmar">Myanmar</option>
		                                        <option value="Nambia">Nambia</option>
		                                        <option value="Nauru">Nauru</option>
		                                        <option value="Nepal">Nepal</option>
		                                        <option value="Netherland Antilles">Netherland Antilles</option>
		                                        <option value="Netherlands">Netherlands (Holland, Europe)</option>
		                                        <option value="Nevis">Nevis</option>
		                                        <option value="New Caledonia">New Caledonia</option>
		                                        <option value="New Zealand">New Zealand</option>
		                                        <option value="Nicaragua">Nicaragua</option>
		                                        <option value="Niger">Niger</option>
		                                        <option value="Nigeria">Nigeria</option>
		                                        <option value="Niue">Niue</option>
		                                        <option value="Norfolk Island">Norfolk Island</option>
		                                        <option value="Norway">Norway</option>
		                                        <option value="Oman">Oman</option>
		                                        <option value="Pakistan">Pakistan</option>
		                                        <option value="Palau Island">Palau Island</option>
		                                        <option value="Palestine">Palestine</option>
		                                        <option value="Panama">Panama</option>
		                                        <option value="Papua New Guinea">Papua New Guinea</option>
		                                        <option value="Paraguay">Paraguay</option>
		                                        <option value="Peru">Peru</option>
		                                        <option value="Phillipines">Philippines</option>
		                                        <option value="Pitcairn Island">Pitcairn Island</option>
		                                        <option value="Poland">Poland</option>
		                                        <option value="Portugal">Portugal</option>
		                                        <option value="Puerto Rico">Puerto Rico</option>
		                                        <option value="Qatar">Qatar</option>
		                                        <option value="Republic of Montenegro">Republic of Montenegro</option>
		                                        <option value="Republic of Serbia">Republic of Serbia</option>
		                                        <option value="Reunion">Reunion</option>
		                                        <option value="Romania">Romania</option>
		                                        <option value="Russia">Russia</option>
		                                        <option value="Rwanda">Rwanda</option>
		                                        <option value="St Barthelemy">St Barthelemy</option>
		                                        <option value="St Eustatius">St Eustatius</option>
		                                        <option value="St Helena">St Helena</option>
		                                        <option value="St Kitts-Nevis">St Kitts-Nevis</option>
		                                        <option value="St Lucia">St Lucia</option>
		                                        <option value="St Maarten">St Maarten</option>
		                                        <option value="St Pierre &amp; Miquelon">St Pierre &amp; Miquelon</option>
		                                        <option value="St Vincent &amp; Grenadines">St Vincent &amp; Grenadines</option>
		                                        <option value="Saipan">Saipan</option>
		                                        <option value="Samoa">Samoa</option>
		                                        <option value="Samoa American">Samoa American</option>
		                                        <option value="San Marino">San Marino</option>
		                                        <option value="Sao Tome & Principe">Sao Tome &amp; Principe</option>
		                                        <option value="Saudi Arabia">Saudi Arabia</option>
		                                        <option value="Senegal">Senegal</option>
		                                        <option value="Seychelles">Seychelles</option>
		                                        <option value="Sierra Leone">Sierra Leone</option>
		                                        <option value="Singapore">Singapore</option>
		                                        <option value="Slovakia">Slovakia</option>
		                                        <option value="Slovenia">Slovenia</option>
		                                        <option value="Solomon Islands">Solomon Islands</option>
		                                        <option value="Somalia">Somalia</option>
		                                        <option value="South Africa">South Africa</option>
		                                        <option value="Spain">Spain</option>
		                                        <option value="Sri Lanka">Sri Lanka</option>
		                                        <option value="Sudan">Sudan</option>
		                                        <option value="Suriname">Suriname</option>
		                                        <option value="Swaziland">Swaziland</option>
		                                        <option value="Sweden">Sweden</option>
		                                        <option value="Switzerland">Switzerland</option>
		                                        <option value="Syria">Syria</option>
		                                        <option value="Tahiti">Tahiti</option>
		                                        <option value="Taiwan">Taiwan</option>
		                                        <option value="Tajikistan">Tajikistan</option>
		                                        <option value="Tanzania">Tanzania</option>
		                                        <option value="Thailand">Thailand</option>
		                                        <option value="Togo">Togo</option>
		                                        <option value="Tokelau">Tokelau</option>
		                                        <option value="Tonga">Tonga</option>
		                                        <option value="Trinidad &amp; Tobago">Trinidad &amp; Tobago</option>
		                                        <option value="Tunisia">Tunisia</option>
		                                        <option value="Turkey">Turkey</option>
		                                        <option value="Turkmenistan">Turkmenistan</option>
		                                        <option value="Turks &amp; Caicos Is">Turks &amp; Caicos Is</option>
		                                        <option value="Tuvalu">Tuvalu</option>
		                                        <option value="Uganda">Uganda</option>
		                                        <option value="Ukraine">Ukraine</option>
		                                        <option value="United Arab Erimates">United Arab Emirates</option>
		                                        <option value="United Kingdom">United Kingdom</option>
		                                        <option value="United States of America">United States of America</option>
		                                        <option value="Uraguay">Uruguay</option>
		                                        <option value="Uzbekistan">Uzbekistan</option>
		                                        <option value="Vanuatu">Vanuatu</option>
		                                        <option value="Vatican City State">Vatican City State</option>
		                                        <option value="Venezuela">Venezuela</option>
		                                        <option value="Vietnam">Vietnam</option>
		                                        <option value="Virgin Islands (Brit)">Virgin Islands (Brit)</option>
		                                        <option value="Virgin Islands (USA)">Virgin Islands (USA)</option>
		                                        <option value="Wake Island">Wake Island</option>
		                                        <option value="Wallis &amp; Futana Is">Wallis &amp; Futana Is</option>
		                                        <option value="Yemen">Yemen</option>
		                                        <option value="Zaire">Zaire</option>
		                                        <option value="Zambia">Zambia</option>
		                                        <option value="Zimbabwe">Zimbabwe</option>
		                                   </select>
		                                   -->
		                                   <%=user.getCountry() %>
		                                </div>
		                              </div>
		                            </li>
		                            <li>   
		                              <div class="control-group">
		                                <label class="control-label" for="inputTelephone">Telephone <sup>*</sup></label>
		                                <div class="controls">
		                                  <%=user.getPhonenumber() %>
		                                </div>
		                              </div>
		                            </li>
		                        	<li>
		                            	<div class="control-group">
		                                <div class="controls">
		                                  <button type="submit" class="more-btn">Continue</button>
		                                </div>
		                              </div>
		                            </li>
		                        </ul>
		                    </form>
		                </div>
		              </div>
		            </div>
		            <!--
		            <div class="accordion-group">
		              <div class="accordion-heading"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseThree"> Shipping Information </a> </div>
		              <div id="collapseThree" class="accordion-body collapse">
		                <div class="accordion-inner"> 
		                    <form class="form-horizontal">
		                        <ul class="billing-form">
		                            <li>   
		                              <div class="control-group">
		                                <label class="control-label" for="inputFirstname">First Name <sup>*</sup></label>
		                                <div class="controls">
		                                  <s:textfield name="inputFirstname" placeholder=""/>
		                                </div>
		                              </div>
		                              <div class="control-group">
		                                <label class="control-label" for="inputLastname">Last Name<sup>*</sup></label>
		                                <div class="controls">
		                                  <s:textfield name="inputLastname" placeholder=""/>
		                                </div>
		                              </div>
		                              
		                            </li>
		                            <li>   
		                              <div class="control-group">
		                                <label class="control-label" for="inputCompany">Company<sup>*</sup></label>
		                                <div class="controls">
		                                  <s:textfield name="inputCompany" placeholder=""/>
		                                </div>
		                              </div>
		                              <div class="control-group">
		                                <label class="control-label" for="inputEmail">Email Address<sup>*</sup></label>
		                                <div class="controls">
		                                  <s:textfield id="inputEmail" placeholder=""/>
		                                </div>
		                              </div>
		                            </li>
		                            <li>   
		                              <div class="control-group">
		                                <label class="control-label" for="inputAddress">Address<sup>*</sup></label>
		                                <div class="controls">
		                                  <s:textfield name="inputAddress" placeholder="" class="address-field"/>
		                                </div>
		                              </div>
		                            </li>
		                            <li>   
		                              <div class="control-group">
		                                <label class="control-label" for="inputCity">City <sup>*</sup></label>
		                                <div class="controls">
		                                  <s:textfield name="inputCity" placeholder=""/>
		                                </div>
		                              </div>
		                              <div class="control-group">
		                                <label class="control-label" for="inputState/Province">State/Province<sup>*</sup></label>
		                                <div class="controls">
		                                  <select name="state" size="1">
		                                    <option selected value="">State...</option>
		                                    <option value="None">None</option>
		                                    <option value="">-- UNITED STATES --</option>
		                                    <option value="Alabama">Alabama</option>
		                                    <option value="Alaska">Alaska</option>
		                                    <option value="Arizona">Arizona</option>
		                                    <option value="Arkansas">Arkansas</option>
		                                    <option value="California">California</option>
		                                    <option value="Colorado">Colorado</option>
		                                    <option value="Connecticut">Connecticut</option>
		                                    <option value="Delaware">Delaware</option>
		                                    <option value="Florida">Florida</option>
		                                    <option value="Georgia">Georgia</option>
		                                    <option value="Hawaii">Hawaii</option>
		                                    <option value="Idaho">Idaho</option>
		                                    <option value="Illinois">Illinois</option>
		                                    <option value="Indiana">Indiana</option>
		                                    <option value="Iowa">Iowa</option>
		                                    <option value="Kansas">Kansas</option>
		                                    <option value="Kentucky">Kentucky</option>
		                                    <option value="Louisiana">Louisiana</option>
		                                    <option value="Maine">Maine</option>
		                                    <option value="Maryland">Maryland</option>
		                                    <option value="Massachusetts">Massachusetts</option>
		                                    <option value="Michigan">Michigan</option>
		                                    <option value="Minnesota">Minnesota</option>
		                                    <option value="Mississippi">Mississippi</option>
		                                    <option value="Missouri">Missouri</option>
		                                    <option value="Montana">Montana</option>
		                                    <option value="Nebraska">Nebraska</option>
		                                    <option value="Nevada">Nevada</option>
		                                    <option value="New Hampshire">New Hampshire</option>
		                                    <option value="New Jersey">New Jersey</option>
		                                    <option value="New Mexico">New Mexico</option>
		                                    <option value="New York">New York</option>
		                                    <option value="North Carolina">North Carolina</option>
		                                    <option value="North Dakota">North Dakota</option>
		                                    <option value="Ohio">Ohio</option>
		                                    <option value="Oklahoma">Oklahoma</option>
		                                    <option value="Oregon">Oregon</option>
		                                    <option value="Pennsylvania">Pennsylvania</option>
		                                    <option value="Rhode Island">Rhode Island</option>
		                                    <option value="South Carolina">South Carolina</option>
		                                    <option value="South Dakota">South Dakota</option>
		                                    <option value="Tennessee">Tennessee</option>
		                                    <option value="Texas">Texas</option>
		                                    <option value="Utah">Utah</option>
		                                    <option value="Vermont">Vermont</option>
		                                    <option value="Virginia">Virginia</option>
		                                    <option value="Washington">Washington</option>
		                                    <option value="West Virginia">West Virginia</option>
		                                    <option value="Wisconsin">Wisconsin</option>
		                                    <option value="Wyoming">Wyoming</option>
		                                    <option value="">-- CANADA --</option>
		                                    <option value="Alberta">Alberta</option>
		                                    <option value="British Columbia">British Columbia</option>
		                                    <option value="Manitoba">Manitoba</option>
		                                    <option value="New Brunswick">New Brunswick</option>
		                                    <option value="Newfoundland and Labrador">Newfoundland and Labrador</option>
		                                    <option value="Northwest Territories">Northwest Territories</option>
		                                    <option value="Nova Scotia">Nova Scotia</option>
		                                    <option value="Nunavut">Nunavut</option>
		                                    <option value="Ontario">Ontario</option>
		                                    <option value="Prince Edward Island">Prince Edward Island</option>
		                                    <option value="Quebec">Quebec</option>
		                                    <option value="Saskatchewan">Saskatchewan</option>
		                                    <option value="Yukon Territory">Yukon Territory</option>
		                                    <option value="">-- AUSTRALIA --</option>
		                                    <option value="Australian Capital Territory">Australian Capital Territory</option>
		                                    <option value="New South Wales">New South Wales</option>
		                                    <option value="Northern Territory">Northern Territory</option>
		                                    <option value="Queensland">Queensland</option>
		                                    <option value="South Australia">South Australia</option>
		                                    <option value="Tasmania">Tasmania</option>
		                                    <option value="Victoria">Victoria</option>
		                                    <option value="Western Australia">Western Australia</option>
		                                  </select>
		                                </div>
		                              </div>
		                            </li>
		                            <li>   
		                              <div class="control-group">
		                                <label class="control-label" for="inputZip">Zip/Postal Code <sup>*</sup></label>
		                                <div class="controls">
		                                  <s:textfield name="inputZip" placeholder=""/>
		                                </div>
		                              </div>
		                              <div class="control-group">
		                                <label class="control-label" for="inputCountry">Country <sup>*</sup></label>
		                                <div class="controls">
		                                  <select name="country">
		                                        <option value="">United States...</option>
		                                        <option value="Afganistan">Afghanistan</option>
		                                        <option value="Albania">Albania</option>
		                                        <option value="Algeria">Algeria</option>
		                                        <option value="American Samoa">American Samoa</option>
		                                        <option value="Andorra">Andorra</option>
		                                        <option value="Angola">Angola</option>
		                                        <option value="Anguilla">Anguilla</option>
		                                        <option value="Antigua &amp; Barbuda">Antigua &amp; Barbuda</option>
		                                        <option value="Argentina">Argentina</option>
		                                        <option value="Armenia">Armenia</option>
		                                        <option value="Aruba">Aruba</option>
		                                        <option value="Australia">Australia</option>
		                                        <option value="Austria">Austria</option>
		                                        <option value="Azerbaijan">Azerbaijan</option>
		                                        <option value="Bahamas">Bahamas</option>
		                                        <option value="Bahrain">Bahrain</option>
		                                        <option value="Bangladesh">Bangladesh</option>
		                                        <option value="Barbados">Barbados</option>
		                                        <option value="Belarus">Belarus</option>
		                                        <option value="Belgium">Belgium</option>
		                                        <option value="Belize">Belize</option>
		                                        <option value="Benin">Benin</option>
		                                        <option value="Bermuda">Bermuda</option>
		                                        <option value="Bhutan">Bhutan</option>
		                                        <option value="Bolivia">Bolivia</option>
		                                        <option value="Bonaire">Bonaire</option>
		                                        <option value="Bosnia &amp; Herzegovina">Bosnia &amp; Herzegovina</option>
		                                        <option value="Botswana">Botswana</option>
		                                        <option value="Brazil">Brazil</option>
		                                        <option value="British Indian Ocean Ter">British Indian Ocean Ter</option>
		                                        <option value="Brunei">Brunei</option>
		                                        <option value="Bulgaria">Bulgaria</option>
		                                        <option value="Burkina Faso">Burkina Faso</option>
		                                        <option value="Burundi">Burundi</option>
		                                        <option value="Cambodia">Cambodia</option>
		                                        <option value="Cameroon">Cameroon</option>
		                                        <option value="Canada">Canada</option>
		                                        <option value="Canary Islands">Canary Islands</option>
		                                        <option value="Cape Verde">Cape Verde</option>
		                                        <option value="Cayman Islands">Cayman Islands</option>
		                                        <option value="Central African Republic">Central African Republic</option>
		                                        <option value="Chad">Chad</option>
		                                        <option value="Channel Islands">Channel Islands</option>
		                                        <option value="Chile">Chile</option>
		                                        <option value="China">China</option>
		                                        <option value="Christmas Island">Christmas Island</option>
		                                        <option value="Cocos Island">Cocos Island</option>
		                                        <option value="Colombia">Colombia</option>
		                                        <option value="Comoros">Comoros</option>
		                                        <option value="Congo">Congo</option>
		                                        <option value="Cook Islands">Cook Islands</option>
		                                        <option value="Costa Rica">Costa Rica</option>
		                                        <option value="Cote DIvoire">Cote D'Ivoire</option>
		                                        <option value="Croatia">Croatia</option>
		                                        <option value="Cuba">Cuba</option>
		                                        <option value="Curaco">Curacao</option>
		                                        <option value="Cyprus">Cyprus</option>
		                                        <option value="Czech Republic">Czech Republic</option>
		                                        <option value="Denmark">Denmark</option>
		                                        <option value="Djibouti">Djibouti</option>
		                                        <option value="Dominica">Dominica</option>
		                                        <option value="Dominican Republic">Dominican Republic</option>
		                                        <option value="East Timor">East Timor</option>
		                                        <option value="Ecuador">Ecuador</option>
		                                        <option value="Egypt">Egypt</option>
		                                        <option value="El Salvador">El Salvador</option>
		                                        <option value="Equatorial Guinea">Equatorial Guinea</option>
		                                        <option value="Eritrea">Eritrea</option>
		                                        <option value="Estonia">Estonia</option>
		                                        <option value="Ethiopia">Ethiopia</option>
		                                        <option value="Falkland Islands">Falkland Islands</option>
		                                        <option value="Faroe Islands">Faroe Islands</option>
		                                        <option value="Fiji">Fiji</option>
		                                        <option value="Finland">Finland</option>
		                                        <option value="France">France</option>
		                                        <option value="French Guiana">French Guiana</option>
		                                        <option value="French Polynesia">French Polynesia</option>
		                                        <option value="French Southern Ter">French Southern Ter</option>
		                                        <option value="Gabon">Gabon</option>
		                                        <option value="Gambia">Gambia</option>
		                                        <option value="Georgia">Georgia</option>
		                                        <option value="Germany">Germany</option>
		                                        <option value="Ghana">Ghana</option>
		                                        <option value="Gibraltar">Gibraltar</option>
		                                        <option value="Great Britain">Great Britain</option>
		                                        <option value="Greece">Greece</option>
		                                        <option value="Greenland">Greenland</option>
		                                        <option value="Grenada">Grenada</option>
		                                        <option value="Guadeloupe">Guadeloupe</option>
		                                        <option value="Guam">Guam</option>
		                                        <option value="Guatemala">Guatemala</option>
		                                        <option value="Guinea">Guinea</option>
		                                        <option value="Guyana">Guyana</option>
		                                        <option value="Haiti">Haiti</option>
		                                        <option value="Hawaii">Hawaii</option>
		                                        <option value="Honduras">Honduras</option>
		                                        <option value="Hong Kong">Hong Kong</option>
		                                        <option value="Hungary">Hungary</option>
		                                        <option value="Iceland">Iceland</option>
		                                        <option value="India">India</option>
		                                        <option value="Indonesia">Indonesia</option>
		                                        <option value="Iran">Iran</option>
		                                        <option value="Iraq">Iraq</option>
		                                        <option value="Ireland">Ireland</option>
		                                        <option value="Isle of Man">Isle of Man</option>
		                                        <option value="Israel">Israel</option>
		                                        <option value="Italy">Italy</option>
		                                        <option value="Jamaica">Jamaica</option>
		                                        <option value="Japan">Japan</option>
		                                        <option value="Jordan">Jordan</option>
		                                        <option value="Kazakhstan">Kazakhstan</option>
		                                        <option value="Kenya">Kenya</option>
		                                        <option value="Kiribati">Kiribati</option>
		                                        <option value="Korea North">Korea North</option>
		                                        <option value="Korea Sout">Korea South</option>
		                                        <option value="Kuwait">Kuwait</option>
		                                        <option value="Kyrgyzstan">Kyrgyzstan</option>
		                                        <option value="Laos">Laos</option>
		                                        <option value="Latvia">Latvia</option>
		                                        <option value="Lebanon">Lebanon</option>
		                                        <option value="Lesotho">Lesotho</option>
		                                        <option value="Liberia">Liberia</option>
		                                        <option value="Libya">Libya</option>
		                                        <option value="Liechtenstein">Liechtenstein</option>
		                                        <option value="Lithuania">Lithuania</option>
		                                        <option value="Luxembourg">Luxembourg</option>
		                                        <option value="Macau">Macau</option>
		                                        <option value="Macedonia">Macedonia</option>
		                                        <option value="Madagascar">Madagascar</option>
		                                        <option value="Malaysia">Malaysia</option>
		                                        <option value="Malawi">Malawi</option>
		                                        <option value="Maldives">Maldives</option>
		                                        <option value="Mali">Mali</option>
		                                        <option value="Malta">Malta</option>
		                                        <option value="Marshall Islands">Marshall Islands</option>
		                                        <option value="Martinique">Martinique</option>
		                                        <option value="Mauritania">Mauritania</option>
		                                        <option value="Mauritius">Mauritius</option>
		                                        <option value="Mayotte">Mayotte</option>
		                                        <option value="Mexico">Mexico</option>
		                                        <option value="Midway Islands">Midway Islands</option>
		                                        <option value="Moldova">Moldova</option>
		                                        <option value="Monaco">Monaco</option>
		                                        <option value="Mongolia">Mongolia</option>
		                                        <option value="Montserrat">Montserrat</option>
		                                        <option value="Morocco">Morocco</option>
		                                        <option value="Mozambique">Mozambique</option>
		                                        <option value="Myanmar">Myanmar</option>
		                                        <option value="Nambia">Nambia</option>
		                                        <option value="Nauru">Nauru</option>
		                                        <option value="Nepal">Nepal</option>
		                                        <option value="Netherland Antilles">Netherland Antilles</option>
		                                        <option value="Netherlands">Netherlands (Holland, Europe)</option>
		                                        <option value="Nevis">Nevis</option>
		                                        <option value="New Caledonia">New Caledonia</option>
		                                        <option value="New Zealand">New Zealand</option>
		                                        <option value="Nicaragua">Nicaragua</option>
		                                        <option value="Niger">Niger</option>
		                                        <option value="Nigeria">Nigeria</option>
		                                        <option value="Niue">Niue</option>
		                                        <option value="Norfolk Island">Norfolk Island</option>
		                                        <option value="Norway">Norway</option>
		                                        <option value="Oman">Oman</option>
		                                        <option value="Pakistan">Pakistan</option>
		                                        <option value="Palau Island">Palau Island</option>
		                                        <option value="Palestine">Palestine</option>
		                                        <option value="Panama">Panama</option>
		                                        <option value="Papua New Guinea">Papua New Guinea</option>
		                                        <option value="Paraguay">Paraguay</option>
		                                        <option value="Peru">Peru</option>
		                                        <option value="Phillipines">Philippines</option>
		                                        <option value="Pitcairn Island">Pitcairn Island</option>
		                                        <option value="Poland">Poland</option>
		                                        <option value="Portugal">Portugal</option>
		                                        <option value="Puerto Rico">Puerto Rico</option>
		                                        <option value="Qatar">Qatar</option>
		                                        <option value="Republic of Montenegro">Republic of Montenegro</option>
		                                        <option value="Republic of Serbia">Republic of Serbia</option>
		                                        <option value="Reunion">Reunion</option>
		                                        <option value="Romania">Romania</option>
		                                        <option value="Russia">Russia</option>
		                                        <option value="Rwanda">Rwanda</option>
		                                        <option value="St Barthelemy">St Barthelemy</option>
		                                        <option value="St Eustatius">St Eustatius</option>
		                                        <option value="St Helena">St Helena</option>
		                                        <option value="St Kitts-Nevis">St Kitts-Nevis</option>
		                                        <option value="St Lucia">St Lucia</option>
		                                        <option value="St Maarten">St Maarten</option>
		                                        <option value="St Pierre &amp; Miquelon">St Pierre &amp; Miquelon</option>
		                                        <option value="St Vincent &amp; Grenadines">St Vincent &amp; Grenadines</option>
		                                        <option value="Saipan">Saipan</option>
		                                        <option value="Samoa">Samoa</option>
		                                        <option value="Samoa American">Samoa American</option>
		                                        <option value="San Marino">San Marino</option>
		                                        <option value="Sao Tome & Principe">Sao Tome &amp; Principe</option>
		                                        <option value="Saudi Arabia">Saudi Arabia</option>
		                                        <option value="Senegal">Senegal</option>
		                                        <option value="Seychelles">Seychelles</option>
		                                        <option value="Sierra Leone">Sierra Leone</option>
		                                        <option value="Singapore">Singapore</option>
		                                        <option value="Slovakia">Slovakia</option>
		                                        <option value="Slovenia">Slovenia</option>
		                                        <option value="Solomon Islands">Solomon Islands</option>
		                                        <option value="Somalia">Somalia</option>
		                                        <option value="South Africa">South Africa</option>
		                                        <option value="Spain">Spain</option>
		                                        <option value="Sri Lanka">Sri Lanka</option>
		                                        <option value="Sudan">Sudan</option>
		                                        <option value="Suriname">Suriname</option>
		                                        <option value="Swaziland">Swaziland</option>
		                                        <option value="Sweden">Sweden</option>
		                                        <option value="Switzerland">Switzerland</option>
		                                        <option value="Syria">Syria</option>
		                                        <option value="Tahiti">Tahiti</option>
		                                        <option value="Taiwan">Taiwan</option>
		                                        <option value="Tajikistan">Tajikistan</option>
		                                        <option value="Tanzania">Tanzania</option>
		                                        <option value="Thailand">Thailand</option>
		                                        <option value="Togo">Togo</option>
		                                        <option value="Tokelau">Tokelau</option>
		                                        <option value="Tonga">Tonga</option>
		                                        <option value="Trinidad &amp; Tobago">Trinidad &amp; Tobago</option>
		                                        <option value="Tunisia">Tunisia</option>
		                                        <option value="Turkey">Turkey</option>
		                                        <option value="Turkmenistan">Turkmenistan</option>
		                                        <option value="Turks &amp; Caicos Is">Turks &amp; Caicos Is</option>
		                                        <option value="Tuvalu">Tuvalu</option>
		                                        <option value="Uganda">Uganda</option>
		                                        <option value="Ukraine">Ukraine</option>
		                                        <option value="United Arab Erimates">United Arab Emirates</option>
		                                        <option value="United Kingdom">United Kingdom</option>
		                                        <option value="United States of America">United States of America</option>
		                                        <option value="Uraguay">Uruguay</option>
		                                        <option value="Uzbekistan">Uzbekistan</option>
		                                        <option value="Vanuatu">Vanuatu</option>
		                                        <option value="Vatican City State">Vatican City State</option>
		                                        <option value="Venezuela">Venezuela</option>
		                                        <option value="Vietnam">Vietnam</option>
		                                        <option value="Virgin Islands (Brit)">Virgin Islands (Brit)</option>
		                                        <option value="Virgin Islands (USA)">Virgin Islands (USA)</option>
		                                        <option value="Wake Island">Wake Island</option>
		                                        <option value="Wallis &amp; Futana Is">Wallis &amp; Futana Is</option>
		                                        <option value="Yemen">Yemen</option>
		                                        <option value="Zaire">Zaire</option>
		                                        <option value="Zambia">Zambia</option>
		                                        <option value="Zimbabwe">Zimbabwe</option>
		                                   </select>
		                                </div>
		                              </div>
		                            </li>
		                            <li>   
		                              <div class="control-group">
		                                <label class="control-label" for="inputTelephone">Telephone <sup>*</sup></label>
		                                <div class="controls">
		                                  <input type="text" id="inputTelephone" placeholder="">
		                                </div>
		                                <label class="radio b-label">
		                                    <input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
		                                    Ship to this address 
		                                </label>
		                                <label class="radio b-label">
		                                    <input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
		                                    different address 
		                                </label>
		                              </div>
		                              <div class="control-group">
		                                <label class="control-label" for="inputFax">Fax<sup>*</sup></label>
		                                <div class="controls">
		                                  <input type="text" id="inputFax" placeholder="">
		                                  <strong class="green-t">* Required Fields</strong>
		                                </div>
		                              </div>
		                            </li>
		                        	<li>
		                            	<div class="control-group">
		                                <div class="controls">
		                                  <button type="submit" class="more-btn">Continue</button>
		                                </div>
		                              </div>
		                            </li>
		                        </ul>
		                    </form>
		                </div>
		              </div>
		            </div>
		            -->
		            <div class="accordion-group">
		              <div class="accordion-heading"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseForth"> Shipping Method </a> </div>
		              <div id="collapseForth" class="accordion-body collapse">
		                <div class="accordion-inner"> <strong class="green-t">Checkout as a Guest or Register</strong>
		                  <p>Flat rate: Fixed $25.00</p>
		                  <div class="btn-holder"> <a href="#" class="more-btn left">Continue</a> <a href="#" class="more-btn2">Back</a> </div>
		                </div>
		              </div>
		            </div>
		            <div class="accordion-group">
		              <div class="accordion-heading"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseFifth"> Payment Information </a> </div>
		              <div id="collapseFifth" class="accordion-body collapse">
		                <div class="accordion-inner">
		                	<form class="form-horizontal">
		                        <ul class="billing-form">
		                            <li>   
		                              <div class="control-group">
		                                <label class="control-label" for="inputCardname">Name on Card<sup>*</sup></label>
		                                <div class="controls">
		                                  <s:textfield name="cardname" placeholder=""/>
		                                </div>
		                              </div>
		                            </li>
		                            <li>   
		                              <div class="control-group">
		                                <label class="control-label" for="inputCardtype">Credit Card Type <sup>*</sup></label>
		                                <div class="controls">
		                                  <select name="state" size="1">
		                                    <option selected="selected" value="">Please select one</option>
		                                    <option value="">Please select Two</option>
		                                    <option value="">Please select Three</option>
		                                  </select>
		                                </div>
		                              </div>
		                            </li>                            
		                            <li>   
		                              <div class="control-group">
		                                <label class="control-label" for="inputCreditcardnum">Credit Card Number  <sup>*</sup></label>
		                                <div class="controls">
		                                  <s:textfield name="creditcardnum" placeholder=""/>
		                                </div>
		                              </div>
		                              
		                            </li>
		                            <li>
		                            	<div class="control-group w-extra">
		                                <label class="control-label" for="inputExpirationdate">Expiration Date<sup>*</sup></label>
		                                <div class="controls">
		                                  <select name="state" size="1" class="month-list">
		                                    <option selected="selected" value="">January</option>
		                                    <option value="">February</option>
		                                    <option value="">March</option>
		                                    <option value="">April</option>
		                                    <option value="">May</option>
		                                    <option value="">June</option>
		                                    <option value="">July</option>
		                                    <option value="">August</option>
		                                    <option value="">September</option>
		                                    <option value="">October</option>
		                                    <option value="">November</option>
		                                    <option value="">December</option>
		                                    
		                                  </select>
		                                  <!--
		                                  <select name="state" size="1" class="year-list">
		                                    <option selected value="">Year</option>
		                                    <option selected value="">Year</option>
		                                    <option selected value="">Year</option>
		                                  </select>
		                                  -->
		                                  <s:textfield name="state" placeholder="year" ></s:textfield>
		                                </div>
		                              </div>
		                            </li>
		                            <li>   
		                              <div class="control-group">
		                                <label class="control-label" for="inputCardVerification"> Card Verification Number <sup>*</sup></label>
		                                <div class="controls">
		                                  <s:textfield name="inputCardVerification" placeholder=""/>
		                                  <strong class="green-t">* Required Fields</strong>
		                                </div>
		                              </div>
		                            </li>
		                        	<li>
		                            	<div class="control-group">
		                                <div class="controls">
		                                  <button type="submit" class="more-btn">Continue</button>
		                                </div>
		                              </div>
		                            </li>
		                        </ul>
		                    </form>
		                </div>
		              </div>
		            </div>
		            <div class="accordion-group">
		              <div class="accordion-heading"> <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseSixth"> Order Review </a> </div>
		              <div id="collapseSixth" class="accordion-body collapse">
		                <div class="accordion-inner no-p">
		                  <table width="100%" border="0" cellpadding="14">
		                    <tr class="heading-bar-table">
		                      <th width="47%" align="left">Product Name</th>
		                      <th width="18%">Price</th>
		                      <th width="19%">Quantity</th>
		                      <th width="16%">Subtotal </th>
		                    </tr>
		                    <tr>
		                      <td width="47%" align="left"><a href="#">The Kite Runner</a> by Khalid Housseni</td>
		                      <td width="18%">$1,680.00 </td>
		                      <td width="19%">1 </td>
		                      <td width="16%">$1,680.00 </td>
		                    </tr>
		                    <tr>
		                      <td align="left"><a href="#">The Kite Runner</a> by Khalid Housseni </td>
		                      <td>$60.50 </td>
		                      <td>1 </td>
		                      <td>$1,680.00 </td>
		                    </tr>
		                    <tr>
		                      <td align="left"><a href="#">The Kite Runner</a> by Khalid Housseni </td>
		                      <td>$180.20 </td>
		                      <td>1</td>
		                      <td>$1,680.00 </td>
		                    </tr>
		                    <tr>
		                      <td colspan="3" align="right">
		                      	<p>Subtotal</p>
		                        <p>Shipping & Handing (Flat rate: Fixed $25.00)</p>
		                        <p>Grand Total</p>                      </td>
		                      <td>
		                      	<p>$1,921.00</p>
		                        <p>$25.00</p>
		                        <p>$1,946.00</p>                      </td>
		                    </tr>
		                    <tr>
		                      <td colspan="3" align="left">Forgot an items? Edit your cart</td>
		                      <td><a href="#" class="more-btn">Place Order</a> </td>
		                    </tr>
		                  </table>
		                </div>
		              </div>
		            </div>
		          </div>
		          <!-- End Accordian Section -->
		        </section>
		        <section class="span3 first">
		          <div class="side-holder">
		            <div class="r-title-bar"> <strong><a href="#">Write Your Own Review</a></strong> </div>
		            <ul class="review-list">
		              <li><a href="#">Billing Information</a></li>
		              <li><a href="#">Shipping Information</a></li>
		              <li><a href="#">Shipping Method</a></li>
		              <li><a href="#">Payment Method </a></li>
		              <li><a href="#">Order Review</a></li>
		            </ul>
		          </div>
		        </section>
		      </section>
		      <!-- End Main Content -->
		    </section>
		  </section>
		  <!-- End Main Content Holder -->


		<!-- Start Footer Top 1 -->
		<%@include file="footer.jsp"%>
	</div>
	<%@include file = "footerjs.jsp" %>
	<!-- End Main Wrapper -->

</body>
</html>