<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Calendar</title>
  <link href="${ctx}/static/css/fullcalendar.min.css" rel="stylesheet">
</head>
<body>

<section>
    <div class="pageheader">
      <h2><i class="fa fa-calendar"></i> Calendar <span>Subtitle goes here...</span></h2>
      <div class="breadcrumb-wrapper">
        <span class="label">You are here:</span>
        <ol class="breadcrumb">
          <li><a href="index.html">Bracket</a></li>
          <li><a href="calendar.html">Pages</a></li>
          <li class="active">Calendar</li>
        </ol>
      </div>
    </div>
    
    <div class="contentpanel">
      <p class="mb20"><a href="http://arshaw.com/fullcalendar/" target="_blank">FullCalendar</a> is a jQuery plugin that provides a full-sized, drag & drop calendar like the one below. It uses AJAX to fetch events on-the-fly for each month and is easily configured to use your own feed format (an extension is provided for Google Calendar).</p>
      <div class="row">
        <div class="col-md-3">
          <div class="panel panel-default panel-dark panel-alt">
            <div class="panel-heading">
              <h4 class="panel-title">Draggable Events</h4>
            </div>
            <div class="panel-body">
              <div id='external-events'>
                <div class='external-event'>My Event 1</div>
                <div class='external-event'>My Event 2</div>
                <div class='external-event'>My Event 3</div>
                <div class='external-event'>My Event 4</div>
                <div class='external-event'>My Event 5</div>
              </div>
            </div>
          </div>
        </div><!-- col-md-3 -->
        <div class="col-md-9">
          <div id="calendar"></div>
        </div><!-- col-md-9 -->
      </div>
    </div>
    
	<script src="${ctx}/static/js/jquery-ui-1.10.3.min.js"></script>
	<script src="${ctx}/static/js/moment.js"></script>
	<script src="${ctx}/static/js/fullcalendar.min.js"></script>
	<script src='${ctx}/static/js/fullcalendar/lang-all.js'></script>
	<script src="${ctx}/static/js/jquery.ui.touch-punch.min.js"></script>
	
	<script src="${ctx}/static/js/custom.js"></script>
	<script>
	
	  jQuery(document).ready(function() {
	    
	    	"use strict";
		
			/* initialize the external events
			-----------------------------------------------------------------*/
			jQuery('#external-events div.external-event').each(function() {
			
				// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
				// it doesn't need to have a start or end
				var eventObject = {
					title: $.trim($(this).text()) // use the element's text as the event title
				};
				
				// store the Event Object in the DOM element so we can get to it later
				jQuery(this).data('eventObject', eventObject);
				
				// make the event draggable using jQuery UI
				jQuery(this).draggable({
					zIndex: 999,
					revert: true,      // will cause the event to go back to its
					revertDuration: 0  //  original position after the drag
				});
				
			});
		
			/* initialize the calendar
			-----------------------------------------------------------------*/
			
			jQuery('#calendar').fullCalendar({
				header: {
					left: 'prev,next today',
					center: 'title',
					right: 'month,agendaWeek,agendaDay'
				},
				editable: true, 
				//buttonIcons: false, //
				weekNumbers: true,
				lang: 'zh-cn',
				droppable: true, // this allows things to be dropped onto the calendar !!!
				drop: function(date, allDay) { // this function is called when something is dropped
				
					// retrieve the dropped element's stored Event Object
					var originalEventObject = jQuery(this).data('eventObject');
					
					// we need to copy it, so that multiple events don't have a reference to the same object
					var copiedEventObject = $.extend({}, originalEventObject);
					
					// assign it the date that was reported
					copiedEventObject.start = date;
					copiedEventObject.allDay = allDay;
					
					// render the event on the calendar
					// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
					jQuery('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
					
					// is the "remove after drop" checkbox checked?
					if (jQuery('#drop-remove').is(':checked')) {
						// if so, remove the element from the "Draggable Events" list
						jQuery(this).remove();
					}
				}
			});
		});
	</script>
</body>
</html>
