<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>My Senatorial Picks</title>
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700&display=swap" rel="stylesheet">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }
    
    body {
      font-family: 'Montserrat', sans-serif;
      background: linear-gradient(135deg, #0a1f44, #ff3c38);
      overflow-x: hidden;
      animation: backgroundShift 10s infinite alternate ease-in-out;
    }

    @keyframes backgroundShift {
      0% { background: linear-gradient(135deg, #0a1f44, #ff3c38); }
      100% { background: linear-gradient(135deg, #122a58, #c02a25); }
    }

    /* Philippine Flag Animation */
    .flag-container {
      position: fixed;
      top: 10%;
      left: 50%;
      transform: translateX(-50%);
      width: 240px;
      height: 160px;
      display: flex;
      align-items: center;
    }

    .flagpole {
      width: 10px;
      height: 190px;
      background: linear-gradient(180deg, #666, #222);
      position: absolute;
      left: -12px;
      top: -10px;
      border-radius: 5px;
      box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.5);
    }

    .flag {
      width: 240px;
      height: 160px;
      background-image: url('https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Flag_of_the_Philippines.svg/400px-Flag_of_the_Philippines.svg.png');
      background-size: cover;
      animation: waveFlag 3s infinite ease-in-out;
      border-radius: 5px;
      box-shadow: 4px 4px 15px rgba(0, 0, 0, 0.3);
      filter: brightness(1.2);
    }

    @keyframes waveFlag {
      0%, 100% { transform: rotate(0deg) scale(1); }
      50% { transform: rotate(3deg) scale(1.05); }
    }

    /* Stars Animation */
    .stars {
      position: absolute;
      top: 50px;
      right: 80px;
      display: flex;
      gap: 15px;
    }

    .star {
      width: 40px;
      height: 40px;
      background: gold;
      clip-path: polygon(50% 0%, 61% 35%, 98% 35%, 68% 57%, 79% 91%, 50% 70%, 21% 91%, 32% 57%, 2% 35%, 39% 35%);
      animation: twinkle 1.5s infinite alternate ease-in-out;
      filter: drop-shadow(3px 3px 5px rgba(255, 215, 0, 0.9));
    }

    .star:nth-child(2) { animation-delay: 0.5s; }
    .star:nth-child(3) { animation-delay: 1s; }

    @keyframes twinkle {
      from { opacity: 0.6; transform: scale(1); }
      to { opacity: 1; transform: scale(1.2); }
    }

    /* Rotating Sun */
    .sun {
      position: absolute;
      bottom: 50px;
      left: 50px;
      width: 65px;
      height: 65px;
      background: gold;
      clip-path: circle(50% at 50% 50%);
      animation: rotateSun 5s linear infinite;
      filter: drop-shadow(4px 4px 7px rgba(255, 215, 0, 0.8));
    }

    @keyframes rotateSun {
      from { transform: rotate(0deg); }
      to { transform: rotate(360deg); }
    }

    /* Main Cover */
    .cover {
      position: relative;
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      text-align: center;
      color: #fff;
      overflow: hidden;
    }

    .container {
      z-index: 1;
      padding: 40px 70px;
      backdrop-filter: blur(12px);
      background: rgba(0, 0, 0, 0.7);
      border-radius: 15px;
      animation: fadeIn 2s ease-out, float 5s infinite ease-in-out alternate;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(20px); }
      to { opacity: 1; transform: translateY(0); }
    }

    @keyframes float {
      0% { transform: translateY(0px); }
      100% { transform: translateY(-10px); }
    }

    h1 {
      font-size: 4.2rem;
      margin-bottom: 15px;
      letter-spacing: 3px;
      text-shadow: 5px 5px 12px rgba(0,0,0,0.8);
      animation: slideIn 1.5s ease-in-out;
    }

    @keyframes slideIn {
      from { transform: translateY(-50px); opacity: 0; }
      to { transform: translateY(0); opacity: 1; }
    }

    /* Animated Slogan */
    .slogan {
      font-size: 1.9rem;
      font-weight: bold;
      color: #ffd700;
      animation: fadeText 3s infinite alternate ease-in-out;
      text-shadow: 2px 2px 10px rgba(255, 215, 0, 0.8);
    }

    @keyframes fadeText {
      from { opacity: 0.5; }
      to { opacity: 1; }
    }

    /* Button */
    a.button {
      text-decoration: none;
      padding: 18px 42px;
      font-size: 1.4rem;
      background: linear-gradient(90deg, #ffba08, #ff3c38);
      color: #fff;
      border-radius: 50px;
      transition: transform 0.3s, box-shadow 0.3s, background 0.5s;
      box-shadow: 0px 6px 18px rgba(255, 126, 95, 0.6);
    }

    a.button:hover {
      background: linear-gradient(90deg, #ff3c38, #ffba08);
      transform: scale(1.08);
      box-shadow: 0px 9px 25px rgba(255, 126, 95, 0.8);
    }

  </style>
</head>
<body>

  <div class="flag-container">
    <div class="flagpole"></div>
    <div class="flag"></div>
  </div>

  <div class="cover">
    <div class="container">
      <h1>My Senatorial Picks</h1>
      <p class="slogan">"Bayan, Serbisyo, Senado"</p>
      <p>Join us as we shape a better future for our country.</p>
      <br><br>
      <a href="website1.html" class="button">START</a>
    </div>
  </div>

</body>
</html>
