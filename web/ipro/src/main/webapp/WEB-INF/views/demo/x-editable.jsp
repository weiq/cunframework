﻿<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bracket Responsive Bootstrap3 Admin</title>
  <link href="${ctx}/static/css/bootstrap-editable.css" rel="stylesheet">
</head>
<body>
    <div class="pageheader">
      <h2><i class="fa fa-pencil"></i> X-Editable <span>Subtitle goes here...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li><a href="general-forms.html">Forms</a></li>
          <li class="active">X-Editable</li>
        </ol>
      </div>
    </div>
    
    <div class="contentpanel">
        
        <div class="panel panel-default">
            <div class="panel-body editable-list-group">
                
                <div class="row editable-list-item">
                    <div class="col-sm-3">Basic popup</div>
                    <div class="col-sm-9"><a id="basicPopup" data-type="text">themepixels</a></div>
                </div><!-- row -->
                
                <div class="row editable-list-item">
                    <div class="col-sm-3">Basic inline</div>
                    <div class="col-sm-9"><a id="basicInline" data-type="text">themepixels</a></div>
                </div><!-- row -->
                
                <div class="row editable-list-item">
                    <div class="col-sm-3">Popup with title</div>
                    <div class="col-sm-9"><a id="popupTitle" data-type="text">themepixels</a></div>
                </div><!-- row -->
                
                <div class="row editable-list-item">
                    <div class="col-sm-3">Empty text field, required</div>
                    <div class="col-sm-9"><a id="emptyText" data-type="text"></a></div>
                </div><!-- row -->
                
                <div class="row editable-list-item">
                    <div class="col-sm-3">Select with no buttons</div>
                    <div class="col-sm-9"><a id="selectNoBtns" data-value="5" data-type="select">Admin</a></div>
                </div><!-- row -->
                
                <div class="row editable-list-item">
                    <div class="col-sm-3">Combo Date (date)</div>
                    <div class="col-sm-9"><a data-type="combodate" id="comboDate" href="#">04 / 21 / 1986</a></div>
                </div><!-- row -->
                
                <div class="row editable-list-item">
                    <div class="col-sm-3">Combo Date (datetime)</div>
                    <div class="col-sm-9"><a data-type="combodate" id="comboDateTime" href="#">04 / 21 / 1986 10:30</a></div>
                </div><!-- row -->
                
                <div class="row editable-list-item">
                    <div class="col-sm-3">Checklist</div>
                    <div class="col-sm-9"><a data-type="checklist" id="checkList" href="#"></a></div>
                </div><!-- row -->
                
                <div class="row editable-list-item">
                    <div class="col-sm-3">Select2 (tags mode)</div>
                    <div class="col-sm-9">
                        <a href="#" id="tags" data-type="select2" data-title="Enter tags">html, javascript</a>
                    </div>
                </div><!-- row -->
                
                <div class="row editable-list-item">
                    <div class="col-sm-3">Select2 (dropdown mode)</div>
                    <div class="col-sm-9">
                        <a href="#" id="country" data-type="select2" data-value="BS" data-title="Select country"></a>
                    </div>
                </div><!-- row -->
                
            </div><!-- panel-body -->
        </div><!-- panel -->
      
    </div><!-- contentpanel -->

	<script src="${ctx}/static/js/select2.min.js"></script>
	<script src="${ctx}/static/js/bootstrap-editable.min.js"></script>
	<script src="${ctx}/static/js/bootstrap-datetimepicker.min.js"></script>
	<script src="${ctx}/static/js/moment.js"></script>
	
	<script src="${ctx}/static/js/custom.js"></script>
	<script>
	    jQuery(document).ready(function(){
	        
	        // Basic Popup Example
	        jQuery('#basicPopup').editable();
	        
	        // Basic Inline Example
	        jQuery('#basicInline').editable({
	            mode: 'inline'
	        });
	        
	        // Popup With Title
	        jQuery('#popupTitle').editable({
	            title: 'Enter Text'
	        });
	        
	        // Empty text field, required
	        jQuery('#emptyText').editable({
	            validate: function(value) {
	                if($.trim(value) == '') return 'This field is required';
	            }
	        });
	        
	        // Select with no buttons
	        jQuery('#selectNoBtns').editable({
	            source: [
	                     {value: "1", text: "Guest"},
	                     {value: "2", text: "Service"},
	                     {value: "3", text: "Customer"},
	                     {value: "4", text: "Operator"},
	                     {value: "5", text: "Admin"}
	                    ]
	        });
	        
	        // Combo Date
	        jQuery('#comboDate').editable({
	            inputclass: 'sel',
	            template: 'MM /DD / YYYY',
	            viewformat: 'MM / DD / YYYY'
	        });
	        
	        // Combo DateTime
	        jQuery('#comboDateTime').editable({
	            template: 'MM / DD / YYYY HH:mm',
	            viewformat: 'MM / DD / YYYY HH:mm',
	            combodate: {
	                firstItem: 'name'
	            }
	        });
	        
	        // Checklist
	        jQuery('#checkList').editable({
	            limit: 3,
	            title: 'Select Fruits',
	            source: [
	                {value: 1, text: 'banana'},
	                {value: 2, text: 'peach'},
	                {value: 3, text: 'apple'},
	                {value: 4, text: 'watermelon'},
	                {value: 5, text: 'orange'}
	            ]
	        });
	        
	        // Select 2 (tags mode)
	        jQuery('#tags').editable({
	            inputclass: 'sel-sm',
	            select2: {
	                tags: ['html', 'javascript', 'css', 'ajax'],
	                tokenSeparators: [",", " "]
	            }
	        });
	        
	        // Select 2 (dropdown mode)
	        var countries = [];
	        
	        $.each({"BD": "Bangladesh", "BE": "Belgium", "BF": "Burkina Faso", "BG": "Bulgaria", "BA": "Bosnia and Herzegovina", "BB": "Barbados", "WF": "Wallis and Futuna", "BL": "Saint Bartelemey", "BM": "Bermuda", "BN": "Brunei Darussalam", "BO": "Bolivia", "BH": "Bahrain", "BI": "Burundi", "BJ": "Benin", "BT": "Bhutan", "JM": "Jamaica", "BV": "Bouvet Island", "BW": "Botswana", "WS": "Samoa", "BR": "Brazil", "BS": "Bahamas", "JE": "Jersey", "BY": "Belarus", "O1": "Other Country", "LV": "Latvia", "RW": "Rwanda", "RS": "Serbia", "TL": "Timor-Leste", "RE": "Reunion", "LU": "Luxembourg", "TJ": "Tajikistan", "RO": "Romania", "PG": "Papua New Guinea", "GW": "Guinea-Bissau", "GU": "Guam", "GT": "Guatemala", "GS": "South Georgia and the South Sandwich Islands", "GR": "Greece", "GQ": "Equatorial Guinea", "GP": "Guadeloupe", "JP": "Japan", "GY": "Guyana", "GG": "Guernsey", "GF": "French Guiana", "GE": "Georgia", "GD": "Grenada", "GB": "United Kingdom", "GA": "Gabon", "SV": "El Salvador", "GN": "Guinea", "GM": "Gambia", "GL": "Greenland", "GI": "Gibraltar", "GH": "Ghana", "OM": "Oman", "TN": "Tunisia", "JO": "Jordan", "HR": "Croatia", "HT": "Haiti", "HU": "Hungary", "HK": "Hong Kong", "HN": "Honduras", "HM": "Heard Island and McDonald Islands", "VE": "Venezuela", "PR": "Puerto Rico", "PS": "Palestinian Territory", "PW": "Palau", "PT": "Portugal", "SJ": "Svalbard and Jan Mayen", "PY": "Paraguay", "IQ": "Iraq", "PA": "Panama", "PF": "French Polynesia", "BZ": "Belize", "PE": "Peru", "PK": "Pakistan", "PH": "Philippines", "PN": "Pitcairn", "TM": "Turkmenistan", "PL": "Poland", "PM": "Saint Pierre and Miquelon", "ZM": "Zambia", "EH": "Western Sahara", "RU": "Russian Federation", "EE": "Estonia", "EG": "Egypt", "TK": "Tokelau", "ZA": "South Africa", "EC": "Ecuador", "IT": "Italy", "VN": "Vietnam", "SB": "Solomon Islands", "EU": "Europe", "ET": "Ethiopia", "SO": "Somalia", "ZW": "Zimbabwe", "SA": "Saudi Arabia", "ES": "Spain", "ER": "Eritrea", "ME": "Montenegro", "MD": "Moldova, Republic of", "MG": "Madagascar", "MF": "Saint Martin", "MA": "Morocco", "MC": "Monaco", "UZ": "Uzbekistan", "MM": "Myanmar", "ML": "Mali", "MO": "Macao", "MN": "Mongolia", "MH": "Marshall Islands", "MK": "Macedonia", "MU": "Mauritius", "MT": "Malta", "MW": "Malawi", "MV": "Maldives", "MQ": "Martinique", "MP": "Northern Mariana Islands", "MS": "Montserrat", "MR": "Mauritania", "IM": "Isle of Man", "UG": "Uganda", "TZ": "Tanzania, United Republic of", "MY": "Malaysia", "MX": "Mexico", "IL": "Israel", "FR": "France", "IO": "British Indian Ocean Territory", "FX": "France, Metropolitan", "SH": "Saint Helena", "FI": "Finland", "FJ": "Fiji", "FK": "Falkland Islands (Malvinas)", "FM": "Micronesia, Federated States of", "FO": "Faroe Islands", "NI": "Nicaragua", "NL": "Netherlands", "NO": "Norway", "NA": "Namibia", "VU": "Vanuatu", "NC": "New Caledonia", "NE": "Niger", "NF": "Norfolk Island", "NG": "Nigeria", "NZ": "New Zealand", "NP": "Nepal", "NR": "Nauru", "NU": "Niue", "CK": "Cook Islands", "CI": "Cote d'Ivoire", "CH": "Switzerland", "CO": "Colombia", "CN": "China", "CM": "Cameroon", "CL": "Chile", "CC": "Cocos (Keeling) Islands", "CA": "Canada", "CG": "Congo", "CF": "Central African Republic", "CD": "Congo, The Democratic Republic of the", "CZ": "Czech Republic", "CY": "Cyprus", "CX": "Christmas Island", "CR": "Costa Rica", "CV": "Cape Verde", "CU": "Cuba", "SZ": "Swaziland", "SY": "Syrian Arab Republic", "KG": "Kyrgyzstan", "KE": "Kenya", "SR": "Suriname", "KI": "Kiribati", "KH": "Cambodia", "KN": "Saint Kitts and Nevis", "KM": "Comoros", "ST": "Sao Tome and Principe", "SK": "Slovakia", "KR": "Korea, Republic of", "SI": "Slovenia", "KP": "Korea, Democratic People's Republic of", "KW": "Kuwait", "SN": "Senegal", "SM": "San Marino", "SL": "Sierra Leone", "SC": "Seychelles", "KZ": "Kazakhstan", "KY": "Cayman Islands", "SG": "Singapore", "SE": "Sweden", "SD": "Sudan", "DO": "Dominican Republic", "DM": "Dominica", "DJ": "Djibouti", "DK": "Denmark", "VG": "Virgin Islands, British", "DE": "Germany", "YE": "Yemen", "DZ": "Algeria", "US": "United States", "UY": "Uruguay", "YT": "Mayotte", "UM": "United States Minor Outlying Islands", "LB": "Lebanon", "LC": "Saint Lucia", "LA": "Lao People's Democratic Republic", "TV": "Tuvalu", "TW": "Taiwan", "TT": "Trinidad and Tobago", "TR": "Turkey", "LK": "Sri Lanka", "LI": "Liechtenstein", "A1": "Anonymous Proxy", "TO": "Tonga", "LT": "Lithuania", "A2": "Satellite Provider", "LR": "Liberia", "LS": "Lesotho", "TH": "Thailand", "TF": "French Southern Territories", "TG": "Togo", "TD": "Chad", "TC": "Turks and Caicos Islands", "LY": "Libyan Arab Jamahiriya", "VA": "Holy See (Vatican City State)", "VC": "Saint Vincent and the Grenadines", "AE": "United Arab Emirates", "AD": "Andorra", "AG": "Antigua and Barbuda", "AF": "Afghanistan", "AI": "Anguilla", "VI": "Virgin Islands, U.S.", "IS": "Iceland", "IR": "Iran, Islamic Republic of", "AM": "Armenia", "AL": "Albania", "AO": "Angola", "AN": "Netherlands Antilles", "AQ": "Antarctica", "AP": "Asia/Pacific Region", "AS": "American Samoa", "AR": "Argentina", "AU": "Australia", "AT": "Austria", "AW": "Aruba", "IN": "India", "AX": "Aland Islands", "AZ": "Azerbaijan", "IE": "Ireland", "ID": "Indonesia", "UA": "Ukraine", "QA": "Qatar", "MZ": "Mozambique"}, function(k, v) {
	            countries.push({id: k, text: v});
	        });
	        
	        jQuery('#country').editable({
	            inputclass: 'sel-xs',
	            source: countries,
	            select2: {
	                width: 200,
	                placeholder: 'Select country',
	                allowClear: true
	            } 
	        });
	        
	    });
	</script>
</body>
</html>
