<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Flex Panels 💪</title>
    <link href='https://fonts.googleapis.com/css?family=Amatic+SC' rel='stylesheet' type='text/css'>
</head>
<body>
<style>
    html {
        box-sizing: border-box;
        background: #ffc600;
        font-family: 'helvetica neue';
        font-size: 20px;
        font-weight: 200;
    }

    h1{
        font-family: 'helvetica neue';
        font-size: 20px;
        font-weight: 200;
    }

    body {
        margin: 0;
    }

    *, *:before, *:after {
        box-sizing: inherit;
    }

    .panels {
        min-height: 100vh;
        overflow: hidden;
        display: flex;
    }

    .panel {
        background: #6B0F9C;
        box-shadow: inset 0 0 0 5px rgba(255,255,255,0.1);
        color: white;
        text-align: center;
        align-items: center;
        /* Safari transitionend event.propertyName === flex */
        /* Chrome + FF transitionend event.propertyName === flex-grow */
        transition:
                font-size 0.7s cubic-bezier(0.61,-0.19, 0.7,-0.11),
                flex 0.7s cubic-bezier(0.61,-0.19, 0.7,-0.11),
                background 0.2s;
        font-size: 20px;
        background-size: cover;
        background-position: center;
        flex: 1;
        justify-content: center;
        display: flex;
        flex-direction: column;
    }

    .panel1 { background-image:url('/static/images/1.jpg'); }
    .panel2 { background-image:url('/static/images/2.jpg'); }
    .panel3 { background-image:url('/static/images/3.jpg'); }
    .panel4 { background-image:url('/static/images/4.jpg'); }
    .panel5 { background-image:url('/static/images/5.jpg'); }

    /* Flex Items */
    .panel > * {
        margin: 0;
        width: 100%;
        transition: transform 0.5s;
        flex: 1 0 auto;
        display: flex;
        justify-content: center;
        align-items: center;
    }

    .panel > *:first-child { transform: translateY(-100%); }
    .panel.open-active > *:first-child { transform: translateY(0); }
    .panel > *:last-child { transform: translateY(100%); }
    .panel.open-active > *:last-child { transform: translateY(0); }

    .panel p {
        text-transform: uppercase;
        font-family: 'Amatic SC', cursive;
        text-shadow: 0 0 4px rgba(0, 0, 0, 0.72), 0 0 14px rgba(0, 0, 0, 0.45);
        font-size: 2em;
    }

    .panel p:nth-child(2) {
        font-size: 4em;
    }

    .panel.open {
        flex: 5;
        font-size: 40px;
    }

    @media only screen and (max-width: 600px) {
        .panel p {
            font-size: 1em;
        }
    }
</style>


<div class="panels">
    <div class="panel panel1">
        <p>TEST</p>
        <p>Hi.</p>
        <p>TEST</p>
    </div>
    <div class="panel panel2">
        <p>TEST</p>
        <p>KO</p>
        <p>TEST</p>
    </div>
    <div class="panel panel3">
        <p>TEST</p>
        <p>JungWook</p>
        <p>TEST</p>
    </div>
    <div class="panel panel4">
        <p>우리가 사귄날</p>
        <p id="loveday">00:00</p>
        <script src="/static/js/loveday.js"></script>
        <p>입니다</p>
    </div>
    <div class="panel panel5">
        <p>현재시간</p>
        <p id="clock">00:00</p>
        <script src="/static/js/clock.js"></script>
        <p>입니다</p>
    </div>
</div>
<script src="/static/js/panelEffect.js"></script>

<%--clock--%>
<%--<h1 id="clock">00:00</h1>--%>
<%--<script src="/static/js/clock.js"></script>--%>

<%--loveday--%>
<%--<h1 id="loveday">00:00</h1>--%>
<%--<script src="/static/js/loveday.js"></script>--%>

<%--todo-list--%>
<form class="js-toDoForm">
    <input type="text" placeholder="Write a to do!"/>
</form>
<ul class="js-toDoList"></ul>
<script src="/static/js/toDolist.js"></script>
</body>
</html>