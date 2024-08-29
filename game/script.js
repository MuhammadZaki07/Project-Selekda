document.addEventListener('DOMContentLoaded', () => {
    const playerNameInput = document.getElementById('player-name');
    const startGameButton = document.getElementById('start-game');
    const welcomeScreen = document.getElementById('welcome-screen');
    const gameScreen = document.getElementById('game-screen');
    
    startGameButton.addEventListener('click', () => {
        if (playerNameInput.value.trim() !== '') {
            welcomeScreen.classList.add('hidden');
            gameScreen.classList.remove('hidden');
            startCountdown();
        }
    });

    function startCountdown() {
        let countdown = 3;
        const countdownInterval = setInterval(() => {
            if (countdown === 0) {
                clearInterval(countdownInterval);
                startGame();
            } else {
                console.log(countdown);
                countdown--;
            }
        }, 1000);
    }

    function startGame() {
        console.log('Game Started');
    }
});
