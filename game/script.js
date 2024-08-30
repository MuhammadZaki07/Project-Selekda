document.addEventListener("DOMContentLoaded", () => {
  const startButton = document.getElementById("start-game");
  const player1NameInput = document.getElementById("player1-name");
  const player2NameInput = document.getElementById("player2-name");
  const gameScreen = document.getElementById("game-screen");
  const welcomeScreen = document.getElementById("welcome-screen");
  const player1Display = document.getElementById("player1-name-display");
  const player2Display = document.getElementById("player2-name-display");
  const timerElement = document.getElementById("time");
  const ball = document.getElementById("ball");
  const player1 = document.getElementById("player1");
  const player2 = document.getElementById("player2");
  const player1Score = document.getElementById("player1-score");
  const player2Score = document.getElementById("player2-score");
  const countdownElement = document.getElementById("countdown");
  const levelSelect = document.getElementById("level");
  let intervalId;
  let ballInterval;
  let countdownInterval;

  const levelTimes = {
    easy: 30,
    medium: 20,
    hard: 15,
  };

  function checkInputs() {
    startButton.disabled = !(
      player1NameInput.value.trim() && player2NameInput.value.trim()
    );
  }

  player1NameInput.addEventListener("input", checkInputs);
  player2NameInput.addEventListener("input", checkInputs);

  startButton.addEventListener("click", startGame);

  function startGame() {
    welcomeScreen.style.display = "none";
    gameScreen.style.display = "flex";
    player1Display.textContent = player1NameInput.value;
    player2Display.textContent = player2NameInput.value;

    let countdown = 3;
    countdownElement.style.display = "block";
    countdownElement.textContent = countdown;

    countdownInterval = setInterval(() => {
      countdown--;
      countdownElement.textContent = countdown;
      if (countdown === 0) {
        clearInterval(countdownInterval);
        countdownElement.style.display = "none";

        const ballWidth = ball.offsetWidth;
        const fieldWidth = gameScreen.offsetWidth;
        ball.style.left = (fieldWidth - ballWidth) / 2 + "px";
        ball.style.display = "block";

        startGameLogic();
      }
    }, 1000);
  }

  function startGameLogic() {
    let level = levelSelect.value;
    let time = levelTimes[level];
    timerElement.textContent = time;

    resetBall();

    intervalId = setInterval(() => {
      if (time > 0) {
        time--;
        timerElement.textContent = time;
      } else {
        clearInterval(intervalId);
        clearInterval(ballInterval);
        endGame();
      }
    }, 1000);

    ballInterval = setInterval(moveBall, 50);

    let player1Pos = { left: 10, bottom: 10, velocityY: 0, isJumping: false };
    let player2Pos = { left: 80, bottom: 10, velocityY: 0, isJumping: false };

    document.addEventListener("keydown", handleKeyPress);

    function handleKeyPress(e) {
      const key = e.key.toLowerCase();
      const player1Speed = 5;
      const player2Speed = 5;
      const jumpStrength = 15;

      if (key === "a") {
        movePlayer(player1Pos, -player1Speed);
      } else if (key === "d") {
        movePlayer(player1Pos, player1Speed);
      } else if (key === "w" && !player1Pos.isJumping) {
        jumpPlayer(player1Pos, jumpStrength);
      } else if (key === "arrowleft") {
        movePlayer(player2Pos, -player2Speed);
      } else if (key === "arrowright") {
        movePlayer(player2Pos, player2Speed);
      } else if (key === "arrowup" && !player2Pos.isJumping) {
        jumpPlayer(player2Pos, jumpStrength);
      }
    }

    function movePlayer(playerPos, speed) {
      playerPos.left = Math.min(95, Math.max(0, playerPos.left + speed));
      player1.style.left = player1Pos.left + "%";
      player2.style.left = player2Pos.left + "%";
    }

    function jumpPlayer(playerPos, strength) {
      playerPos.isJumping = true;
      playerPos.velocityY = -strength;
    }

    function applyGravity(playerPos, playerElement) {
      if (playerPos.isJumping) {
        playerPos.velocityY += 0.5;
        playerPos.bottom -= playerPos.velocityY;
        if (playerPos.bottom <= 10) {
          playerPos.bottom = 10;
          playerPos.isJumping = false;
          playerPos.velocityY = 0;
        }
        playerElement.style.bottom = playerPos.bottom + "px";
      }
    }

    function animate() {
      applyGravity(player1Pos, player1);
      applyGravity(player2Pos, player2);
      requestAnimationFrame(animate);
    }
    animate();
  }

  function resetBall() {
    ball.style.left = "50%";
    ball.style.top = "10%";
  }

  function moveBall() {
    const ballPos = ball.getBoundingClientRect();
    const player1Pos = player1.getBoundingClientRect();
    const player2Pos = player2.getBoundingClientRect();

    ball.style.top = ballPos.top + 5 + "px";

    if (ballPos.bottom >= window.innerHeight) {
      ball.style.top = window.innerHeight - ball.offsetHeight + "px";
      ball.style.display = "none";
      clearInterval(ballInterval);
      endGame();
    }

    if (
      ballPos.bottom >= player1Pos.top &&
      ballPos.left >= player1Pos.left &&
      ballPos.right <= player1Pos.right
    ) {
      ball.style.top = ballPos.top - 5 + "px";
    }
  }

  function endGame() {
    alert("Game Over");
  }
});
