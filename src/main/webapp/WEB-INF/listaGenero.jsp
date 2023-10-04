<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Generos</title>
  <link rel="stylesheet" href="/css/baseStyles.css">
  <link rel="stylesheet" href="/css/indexStyle.css">
  <link rel="stylesheet" href="/css/paginacionStyle.css">
</head>

<body>

  <%@ include file="nav.jsp" %>

    <div class="main-content">
      <h3 id="middle-title">GENEROS DE NUESTRA <span>LIBRERIA</span></h3>

      <div class="cards-container">
        <c:forEach var="genero" items="${paginaGenero.content}" begin="0" end="3">
          <div class="gender-card">
            <a href="/generos/${genero.id}/libros?page=0">${genero.nombreGenero}</a>
            <svg version="1.2" baseProfile="tiny" id="Layer_1" xmlns="http://www.w3.org/2000/svg"
              xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 256 256" xml:space="preserve" fill="#85bea2">
              <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
              <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round" stroke="#CCCCCC"
                stroke-width="1.024">
              </g>
              <g id="SVGRepo_iconCarrier">
                <g id="Layer_1_1_" display="none">
                  <circle display="inline" fill="#85bea2" stroke="#85bea2" stroke-miterlimit="10" cx="-195.7"
                    cy="86.9" r="115.4">
                  </circle>
                  <path display="inline" fill="#85bea2" stroke="#85bea2" stroke-width="7"
                    d="M-277.5,168.5c-15.5-15.6-26.8-35.8-31.4-59 c-12.5-62.7,28.2-123.6,90.9-136.1c39.2-7.8,77.8,5.2,104.2,31.4l29-29c-3.1-3.1-6.4-6.1-9.7-8.9l5.7-12l-25.5-17l-8.9,9.8 c-8-4.1-16.3-7.6-24.9-10.3l0.7-13.2l-30-6l-4.4,12.4c-8.9-0.8-17.9-0.8-27,0l-4.4-12.5l-30,6l0.7,13.2c-8.7,2.7-17,6.2-24.9,10.3 l-8.9-9.8l-25.5,17l5.7,11.9c-6.9,5.8-13.3,12.2-19.1,19.1l-12-5.7l-17,25.5l9.8,8.9c-4.1,8-7.6,16.3-10.4,24.9l-13.2-0.7l-6,30 l12.4,4.4c-0.8,8.9-0.8,17.9,0,27l-12.5,4.4l6,30l13.2-0.7c2.7,8.7,6.2,17,10.3,24.9l-9.8,8.9l17,25.5l11.9-5.6l8.9,9.7l9.7,8.9 l-5.7,12l25.5,17l8.9-9.8c8,4.1,16.3,7.6,24.9,10.3l-0.7,13.2l30,6l4.4-12.4c8.9,0.8,17.9,0.8,27,0l4.4,12.5l30-6l-0.7-13.2 c8.7-2.7,17-6.2,24.9-10.3l8.9,9.8l25.5-17l-5.7-11.9c6.9-5.8,13.3-12.2,19.1-19.1l12,5.7l17-25.5l-9.8-8.9 c4.1-8,7.6-16.3,10.3-24.9l13.2,0.7l6-30l-12.4-4.4c0.8-8.9,0.8-17.9,0-27l12.5-4.4l-6-30l-13.2,0.7c-2.7-8.7-6.2-17-10.3-24.9 l9.8-8.9l-17-25.5l-11.9,5.6c-2.8-3.4-5.8-6.6-8.9-9.7l-29,29c15.5,15.6,26.8,35.8,31.4,59c12.5,62.7-28.2,123.6-90.9,136.1 C-212.6,207.8-251.1,194.7-277.5,168.5">
                  </path>
                  <g display="inline">
                    <g id="XMLID_1_">
                      <g>
                        <polygon fill="#85bea2" points="-89.6,84.5 -89.4,85.8 -154.2,95.4 -154.4,94.1 "></polygon>
                        <polygon fill="#85bea2" points="-89.8,83.2 -89.6,84.5 -154.4,94.1 -154.6,92.7 "></polygon>
                        <polygon fill="#85bea2" points="-117.1,26.3 -116.3,27.4 -173.3,66.9 -174,65.8 "></polygon>
                        <polygon fill="#85bea2" points="-117.8,25.2 -117.1,26.3 -174,65.8 -174.8,64.7 "></polygon>
                        <polygon fill="#85bea2" points="-156,-12.3 -187.7,45 -188.9,44.3 -157.1,-13 "></polygon>
                        <polygon fill="#85bea2" points="-158.3,-13.6 -157.1,-13 -188.9,44.3 -190,43.7 "></polygon>
                        <path fill="#85bea2"
                          d="M-190.9,83.1c15.4,22.2,22.5,43.8,15.9,48.4c-1.3,0.9-3.1,1.1-5.1,0.6h0L-235,58.2 c-0.1-2.5,0.6-4.4,2.1-5.5C-226.3,48.2-206.3,60.9-190.9,83.1z">
                        </path>
                        <path fill="#85bea2"
                          d="M-180.1,132L-180.1,132l-69.2,13.2l-2.5-11l-12.4,3.2l2.8,10.1l-7.7,5.3c1.2-2.7,0.5-6.9-2.1-10.6 c-2.9-4.2-6.4-6.9-9.4-6.2l7-4.9l38.5-73.1l0,0c0.2,8.5,8.5,24.3,20.3,41.3C-202.3,117.3-188.5,130-180.1,132L-180.1,132 L-180.1,132z">
                        </path>
                        <path fill="#85bea2"
                          d="M-235,58.2l54.9,73.8c-8.4-2-22.2-14.7-34.5-32.5C-226.5,82.5-234.8,66.7-235,58.2z">
                        </path>
                        <path fill="#85bea2"
                          d="M-244.3,167.2l0.4,1.6l-1.6,1.1C-244.2,168.8-244.3,167.5-244.3,167.2z"></path>
                        <path fill="#85bea2"
                          d="M-254.5,173.3l-7-25.7l0.2-0.1l12-2.3l5,21.9c0,0,0,0,0,0.1c0,0.3,0.1,1.6-1.3,2.7l0,0l-6.2,4.3 l-0.2,0.2c-1.3,0.8-1.9,0.4-2.2-0.1L-254.5,173.3C-254.5,173.3-254.5,173.3-254.5,173.3z">
                        </path>
                        <path fill="#85bea2" d="M-244.3,167.1L-244.3,167.1C-244.3,167.2-244.3,167.1-244.3,167.1z">
                        </path>
                        <polygon fill="#85bea2"
                          points="-251.8,134.2 -249.3,145.2 -261.3,147.5 -261.5,147.6 -264.2,137.5 ">
                        </polygon>
                        <path fill="#85bea2" d="M-252,174.4l-1.8,1.2l-0.4-1.3C-253.9,174.8-253.3,175.2-252,174.4z">
                        </path>
                        <path fill="#85bea2"
                          d="M-254.2,174.3l0.4,1.3l-1.6-0.7l0.9-1.7c0,0,0,0,0,0C-254.4,173.5-254.4,173.9-254.2,174.3z">
                        </path>
                        <path fill="#85bea2"
                          d="M-271.2,142.4c2.5,3.7,3.2,7.8,2.1,10.6l-0.1,0.1l-13.6-15.2l2.2-1.6 C-277.6,135.4-274.1,138.2-271.2,142.4z">
                        </path>
                        <path fill="#85bea2"
                          d="M-269.2,153L-269.2,153c-0.3,0.8-0.8,1.5-1.6,2c-3.1,2.2-8.4,0-11.8-4.8c-3.3-4.8-2.4-11.3,0.7-13.4 c0.4-0.3,0.9-0.5,1.3-0.6l-2.2,1.6L-269.2,153z">
                        </path>
                      </g>
                    </g>
                  </g>
                  <circle display="inline" fill="#85bea2" cx="547.4" cy="130.4" r="115.4"></circle>
                  <path display="inline" fill="#85bea2" stroke="#85bea2" stroke-width="7"
                    d="M629.3,48.3c15.5,15.6,26.8,35.8,31.4,59 c12.5,62.7-28.2,123.6-90.9,136.1c-39.2,7.8-77.8-5.2-104.2-31.4l-29,29c3.1,3.1,6.4,6.1,9.7,8.9l-5.7,12l25.5,17l8.9-9.8 c8,4.1,16.3,7.6,24.9,10.3l-0.7,13.2l30,6l4.4-12.4c8.9,0.8,17.9,0.8,27,0l4.4,12.5l30-6l-0.7-13.2c8.7-2.7,17-6.2,24.9-10.3 l8.9,9.8l25.5-17l-5.7-11.9c6.9-5.8,13.3-12.2,19.1-19.1l12,5.7l17-25.5l-9.8-8.9c4.1-8,7.6-16.3,10.3-24.9l13.2,0.7l6-30 l-12.4-4.4c0.8-8.9,0.8-17.9,0-27l12.5-4.4l-6-30l-13.2,0.7c-2.7-8.7-6.2-17-10.3-24.9l9.8-8.9l-17-25.5L667.2,29l-8.9-9.7 l-9.7-8.9l5.7-12l-25.5-17l-8.9,9.8c-8-4.1-16.3-7.6-24.9-10.3l0.7-13.2l-30-6l-4.4,12.4c-8.9-0.8-17.9-0.8-27,0l-4.4-12.5l-30,6 l0.7,13.2c-8.7,2.7-17,6.2-24.9,10.3l-8.9-9.8l-25.5,17l5.7,11.9c-6.9,5.8-13.3,12.2-19.1,19.1l-12-5.7l-17,25.5l9.8,8.9 c-4.1,8-7.6,16.3-10.4,24.9L385,82.4l-6,30l12.4,4.4c-0.8,8.9-0.8,17.9,0,27l-12.5,4.4l6,30l13.2-0.7c2.7,8.7,6.2,17,10.3,24.9 l-9.8,8.9l17,25.5l11.9-5.6c2.8,3.4,5.8,6.6,8.9,9.7l29-29c-15.5-15.6-26.8-35.8-31.4-59c-12.5-62.7,28.2-123.6,90.9-136.1 C564.3,9.1,602.9,22.1,629.3,48.3">
                  </path>
                  <g display="inline">
                    <path fill="#85bea2"
                      d="M532.8,199.9c0-8.9,6.2-15.4,14.9-15.4c8.7,0,14.4,6.4,14.4,15.4c0,8.7-5.7,15.4-14.9,15.4 C538.8,215.3,532.8,208.6,532.8,199.9z M539,164.7l-3.5-119.1h23.8l-3.5,119.1H539z">
                    </path>
                  </g>
                  <polyline display="inline" fill="none" stroke="#85bea2" stroke-width="8" stroke-miterlimit="10"
                    points="-84.9,-24.2 41.8,-150.8 713.2,-150.8 "></polyline> <text
                    transform="matrix(1 0 0 1 45.8244 -158.4465)" display="inline" font-family="'ArialMT'"
                    font-size="76.3085px">Announcements</text>
                  <line display="inline" fill="none" stroke="#85bea2" stroke-width="7" stroke-miterlimit="10"
                    x1="451" y1="226.6" x2="493.2" y2="184.4"></line>
                  <path display="inline" fill="none" stroke="#85bea2" stroke-width="17" stroke-miterlimit="10"
                    d="M436.6,241">
                  </path>
                  <polyline display="inline" fill="none" stroke="#85bea2" stroke-width="8" stroke-miterlimit="10"
                    points="436.6,245.8 309.9,372.5 -361.5,372.5 "></polyline> <text
                    transform="matrix(1 0 0 1 -289.1385 363.5735)" display="inline" font-family="'ArialMT'"
                    font-size="76.3085px">Information</text>
                  <circle display="inline" fill="#85bea2" cx="-296.6" cy="-490.4" r="74.6"></circle>
                  <polygon display="inline" fill="#85bea2" stroke="#85bea2" stroke-width="2" stroke-miterlimit="10"
                    points="-351.4,-469.3 -327.9,-482.9 -318.2,-466.8 -334.6,-460.2 -343.1,-457 "></polygon>
                  <path display="inline" fill="#85bea2" stroke="#85bea2" stroke-width="2" stroke-miterlimit="10"
                    d="M-257.3-540.2l-28.9,28.9 l-10.2,10.2l-49.7,13.2c0,0,32,11.9,21,38.2l35-39.8c0,0,21.8-18.9,45.5-14.6C-244.7-504-242.9-531.1-257.3-540.2z">
                  </path>
                  <path display="inline" fill="#85bea2" stroke="#85bea2" stroke-width="2" stroke-miterlimit="10"
                    d="M-287.8-509.7 c0,0-12.4-3.1-17.4,11c0,0,10.7,2.7,9.8,15.2l3.3,20.5l7.1,8.9v-10.7l8.6,7.2c0,0-9-17.2-10.2-26.3c0,0,8.6,9.8,15.1,12.8l9.6,1.7 l-6.8-4.5l9.2-0.9c0,0-23.3-8.6-18.4-22.7C-278-497.7-278.5-509.8-287.8-509.7z">
                  </path>
                  <path display="inline" fill="none" stroke="#85bea2" stroke-width="2" stroke-miterlimit="10"
                    d="M-335.8-482.1">
                  </path>
                  <path display="inline" fill="none" stroke="#85bea2" stroke-width="2" stroke-miterlimit="10"
                    d="M-351.4-469.3">
                  </path>
                  <path display="inline" fill="#85bea2"
                    d="M-324-465.4c0,0,2.4,8.8-1.8,15.1l-3.9,1.9l-4.4-13.2L-324-465.4z">
                  </path>
                  <line display="inline" fill="none" stroke="#85bea2" stroke-width="2" stroke-miterlimit="10"
                    x1="-336.5" y1="-459.9" x2="-325.1" y2="-470"></line>
                </g>
                <g id="Layer_6"> </g>
                <g id="Layer_2"> </g>
                <g id="Layer_3" display="none">
                  <path display="inline" fill="#85bea2"
                    d="M-335.6-471.4c-3.1-0.9-6-1.4-8.7-1.4c-2.8,0-5.2,0.6-7.1,1.6c0.2,0.6,0.3,1.3,0.3,2.2 c2-1.5,4.7-1.8,6.8-1.8c2.5,0,5.2,0.5,8.1,1.4C-336.7-470.2-336.1-470.8-335.6-471.4z">
                  </path>
                </g>
                <g id="Layer_7"> </g>
                <g id="Layer_8"> </g>
                <g id="Layer_9"> </g>
                <g id="Layer_5"> </g>
                <g id="Layer_13" display="none">
                  <path display="inline" fill="none" stroke="#6AA6CD" stroke-width="8" stroke-miterlimit="10"
                    d="M-58.4,128 c0,0,120-23.4,54.6-131.8c0,0,116.4,61.7,131.8-54.5c0,0,24,121.8,131.8,54.5c0,0-65.3,115.1,54.6,131.8H-58.4z">
                  </path>
                  <path display="inline" fill="none" stroke="#6AA6CD" stroke-width="8" stroke-miterlimit="10"
                    d="M16.1,127.7 c0,0,72-13.9,32.8-78.4c0,0,69.8,36.7,79.1-32.4c0,0,14.4,72.5,79.1,32.4c0,0-39.2,68.5,32.8,78.4H16.1z">
                  </path>
                  <polyline display="inline" fill="none" stroke="#6AA6CD" stroke-width="8" stroke-miterlimit="10"
                    points="259.8,-3.8 128.3,127.7 -3.5,-4.1 "></polyline>
                  <line display="inline" fill="none" stroke="#6AA6CD" stroke-width="8" stroke-miterlimit="10"
                    x1="128" y1="-58.3" x2="128" y2="127.7"></line>
                  <path display="inline" fill="none" stroke="#6AA6CD" stroke-width="8" stroke-miterlimit="10"
                    d="M-58.4,128 c0,0,120,23.4,54.6,131.8c0,0,116.4-61.7,131.8,54.5c0,0,24-121.8,131.8-54.5c0,0-65.3-115.1,54.6-131.8H-58.4z">
                  </path>
                  <path display="inline" fill="none" stroke="#6AA6CD" stroke-width="8" stroke-miterlimit="10"
                    d="M16.1,128.3 c0,0,72,13.9,32.8,78.4c0,0,69.8-36.7,79.1,32.4c0,0,14.4-72.5,79.1-32.4c0,0-39.2-68.5,32.8-78.4L16.1,128.3L16.1,128.3z">
                  </path>
                  <polyline display="inline" fill="none" stroke="#6AA6CD" stroke-width="8" stroke-miterlimit="10"
                    points="259.8,259.8 128.3,128.3 -3.5,260.1 "></polyline>
                  <line display="inline" fill="none" stroke="#6AA6CD" stroke-width="8" stroke-miterlimit="10"
                    x1="128" y1="314.3" x2="128" y2="128.3"></line>
                  <g display="inline">
                    <path fill="#6AA6CD" stroke="#285674" stroke-width="7" stroke-miterlimit="10"
                      d="M187.1,204.3H57.5l-19.2,43.6 c-2.6,6.1-4,10.8-4,14.3c0,6.7,4.7,11.3,14,13.9v7.3h-94.4v-7.3c5.6-1.2,9.8-3.3,12.7-6.4c2.9-3,6.3-8.9,10-17.7L81.6,13.7 c3.3-7.6,5-13.6,5-18.2c0-7-4-12-12.1-15v-7.3h101.2v7.3c-8.2,2.6-12.3,7-12.3,13.4c0,4.4,1.3,9.4,4,15l108.7,239 c4.6,10.1,8.6,17.1,12.1,20.8c3.5,3.7,8.2,6.2,14,7.4v7.3h-105v-7.3c9.2-1.7,13.8-6.4,13.8-14.1c0-3.2-1.4-7.9-4.2-14.1 L187.1,204.3z M169.2,161.8L122.9,51.3l-47,110.5H169.2z">
                    </path>
                  </g>
                </g>
                <g id="Layer_14" display="none"> <text transform="matrix(1 0 0 1 -4.075 246.8225)" display="inline"
                    fill="#6AA6CD" font-family="'ArialMT'" font-size="374.3166px">A</text> <text
                    transform="matrix(1 0 0 1 -4.075 246.8225)" display="inline" fill="none" stroke="#285674"
                    stroke-width="800px">A</text> </g>
                <g id="Layer_12" display="none">
                  <g display="inline">
                    <path fill="#6AA6CD" stroke="#6AA6CD" stroke-width="22"
                      d="M284,116.7c0,23-4.3,42.9-12.9,59.8c-8.6,16.9-19.9,30.7-33.7,41.5 c-14,10.8-29.6,18.9-47,24.2c-17.4,5.3-35.4,8-53.9,8h-112v-13.5c3.7,0,8.5-0.4,14.4-1c5.9-0.7,9.8-1.5,11.7-2.4 c3.8-1.6,6.6-4.1,8.3-7.3c1.7-3.2,2.6-7.1,2.6-11.7v-195c0-4.3-0.7-8.2-2.2-11.6c-1.5-3.4-4.4-6.2-8.7-8.2 c-3.9-1.9-8.2-3.3-12.8-4.2c-4.6-0.9-8.5-1.5-11.8-1.7V-20H144c16.2,0,32.2,2.5,48,7.5c15.7,5,29.5,11.8,41.1,20.3 c15.9,11.3,28.3,26.1,37.3,44.4C279.5,70.4,284,91.9,284,116.7z M237.3,116.5c0-18.2-2.4-34.6-7.2-49.2 c-4.8-14.7-11.9-27.5-21.1-38.4c-8.8-10.4-19.5-18.6-32.3-24.6c-12.8-6-26.9-9-42.6-9c-5.2,0-11.1,0.1-17.6,0.3 C110-4.1,105.1-4,101.9-3.8v207.8c0,11.6,3.4,19.6,10.1,24c6.7,4.4,17.1,6.7,31,6.7c16.1,0,30.2-2.9,42.3-8.6 c12.1-5.7,21.8-13.6,29.3-23.8c7.9-10.7,13.6-23,17.2-37C235.5,151.1,237.3,134.9,237.3,116.5z">
                    </path>
                  </g>
                </g>
                <g id="Layer_10"> </g>
                <g id="Layer_4" display="none">
                  <path display="inline" fill="#85bea2" stroke="#85bea2" stroke-miterlimit="10"
                    d="M-350-481.9v2c0,0,25.9-0.7,25.9,17.3 c0,0,0.6,16.3-14.4,16.3c0,0-14.4-0.3-14.4-14.9c0,0,0.2-10.8,13.6-9.1c0,0-6.9-0.2-6.9,6.6c0,0,0.2,6.9,6.9,6.9c0,0,6.9-1,6.9-6.9 c0,0,0.1-5.9-6.9-7.7c0,0-8.4-2.3-13.9,2.7c0,0-1.9,4.5-1.7,7.4c0,0-0.6,14.9,16.4,16.9c0,0,15.4-0.3,16.4-16.9 C-322.1-461.1-322.4-482.7-350-481.9z">
                  </path>
                </g>
                <g>
                  <path
                    d="M202.2,204.6L202.2,204.6l1.5,3.9l4.7,12l0,0l0.5,1.2l5.1,13.1c0.1,0.4,0.6,0.6,0.9,0.4l28-10.9c0.4-0.1,0.6-0.6,0.4-0.9 l-4.3-11l0,0l-0.7-1.9L191.7,91.2l0,0l-8.5-21.8l0,0l-3.7-9.5c-0.1-0.4-0.6-0.6-0.9-0.4l-28,10.9c-0.4,0.1-0.6,0.6-0.4,0.9 L202.2,204.6z">
                  </path>
                  <path
                    d="M148.8,235.5l21.7-3.1c0.4-0.1,0.7-0.4,0.6-0.8L143.7,41.5c-0.1-0.4-0.4-0.7-0.8-0.6l-29.7,4.3c-0.4,0.1-0.7,0.4-0.6,0.8 l27.3,189.5h-27.3V42h-35v193.5l-5.3-0.1l0-205l-49.8,0.1v164.8v40.1H0.8v18.9H256v-18.9H148.8z M32.3,120.8h30.1v53.2H32.3V120.8z M28.4,195.4h37.9v13H28.4V195.4z M107.1,204.5H83v-5.2h24.1V204.5z M107.1,217.9v3.9H83v-3.9H107.1z M107.1,53.9v25.6H83V53.9 H107.1z">
                  </path>
                </g>
              </g>
            </svg>
          </div>
        </c:forEach>
      </div>

    </div>
    <div class="pagination">
      <c:if test="${paginaGenero.number > 0}">
        <a href="/generos/${paginaGenero.number}">&#8249; Anterior</a>
      </c:if>

      <c:forEach begin="1" end="${totalPages}" var="index">
        <c:choose>
          <c:when test="${paginaGenero.number + 1 == index}">
            <a class="active" href="#">${index}</a>
          </c:when>
          <c:otherwise>
            <a href="/generos/${index}">${index}</a>
          </c:otherwise>
        </c:choose>
      </c:forEach>

      <c:if test="${paginaGenero.number + 1 < totalPages}">
        <a href="/generos/${paginaGenero.number + 2}">Siguiente &#8250;</a>
      </c:if>
    </div>

    <%@ include file="footer.jsp" %>

      <script src="/javaScript/alerts.js"></script>
</body>

</html>