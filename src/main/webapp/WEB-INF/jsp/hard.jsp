<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Jump Game</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            overflow: hidden;
            height: 100vh;
        }
        
        .slide-container {
            width: 100%;
            height: 100%;
            background-size: cover;
            display: flex;
            align-items: center;
            overflow: hidden;
        }
        
        .slide-wrapper {
            display: flex;
            animation: slide-flow 15s infinite linear;
            height: 100%;
        }
        
        .slide {
            width: auto;
            height: 100%;
            object-fit: cover;
            background-size: cover;
        }

        @keyframes slide-flow {
            0% {
                transform: translateX(0%);
            }
            100% {
                transform: translateX(-100%);
            }
        }

        .player {
            width: 250px; 
            height: 250px;
            background-color: transparent;
            position: absolute;
            top: 50%;
            left: 25%;
            transition: transform 0.6s ease;
            z-index: 2;
            background-image: url('images/azarashi.png');
            background-size: cover;
        }

        .obstacle {
            width: 100px;
            height: 100px;
            background-color: transparent;
            position: absolute;
            top: 62%;
            right: 0;
            animation: obstacle-move 3s linear forwards;
            z-index: 2;
            background-image: url('images/kai.png');
            background-size: cover;
        }
         .obstacle-2-1 {
            width: 100px;
            height: 100px;
            background-color: transparent;
            position: absolute;
            top: 62%;
            right: -100%;
            animation: obstacle-move 3s linear forwards;
            animation-delay: 1s;
            z-index: 2;
            background-image: url('images/kai.png');
            background-size: cover;
        }
       

        .obstacle-1 {
            width: 230px;
            height: 230px;
            background-color: transparent;
            position: absolute;
            top: 48%;
            right: -400%;
            animation: obstacle-move 3s linear forwards;
            animation-delay: 2.5s;
            z-index: 2;
            background-image: url('images/kai2.png');
            background-size: cover;
        }
        .obstacle-2 {
            width: 230px;
            height: 230px;
            background-color: transparent;
            position: absolute;
            top: 48%;
            right: -500%;
            animation: obstacle-move 3s linear forwards;
            animation-delay: 4s;
            z-index: 2;
            background-image: url('images/kai2.png');
            background-size: cover;
        }
         .obstacle-3 {
            width: 100px;
            height: 100px;
            background-color: transparent;
            position: absolute;
            top: 62%;
            right: -600%;
            animation: obstacle-move 3s linear forwards;
            animation-delay: 6s;
            z-index: 2;
            background-image: url('images/kai.png');
            background-size: cover;
        }
        .obstacle-2-2 {
            width: 100px;
            height: 100px;
            background-color: transparent;
            position: absolute;
            top: 62%;
            right: -700%;
            animation: obstacle-move 3s linear forwards;
            animation-delay: 7s;
            z-index: 2;
            background-image: url('images/kai.png');
            background-size: cover;
        }
        .obstacle-4 {
            width: 100px;
            height: 100px;
            background-color: transparent;
            position: absolute;
            top: 62%;
            right: -800%;
            animation: obstacle-move 3s linear forwards;
            animation-delay: 8s;
            z-index: 2;
            background-image: url('images/kai.png');
            background-size: cover;
        }
        .obstacle-5 {
            width: 230px;
            height: 230px;
            background-color: transparent;
            position: absolute;
            top: 48%;
            right: -1000%;
            animation: obstacle-move 3s linear forwards;
            animation-delay: 10s;
            z-index: 2;
            background-image: url('images/kai2.png');
            background-size: cover;
        }

        @keyframes obstacle-move {
            from {
                right: -200px;
            }
            to {
                right: calc(100% + 200px);
            }
        }

        @keyframes jump {
            0% {
                top: 50%;
            }
            50% {
                top: 15%;
            }
            100% {
                top: 50%;
            }
        }

        @keyframes double-jump {
            0% {
                top: 30%;
            }
            50% {
                top: 5%;
            }  
            100% {
                top: 50%;
            }
        }

        .player.jump {
            animation: jump 1s ease-in-out;
            background-image: url('images/jumpazarashi.png');
        }

        .player.double-jump {
            animation: double-jump 1.3s ease-in-out;
            background-image: url('images/jumpazarashi.png');
        }

        .clear-message {
            display: none;
            position: absolute;
            top: 30%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 150px;
            color: #ffd900;
            z-index: 3;
        }
        
        

        .game-over {
            display: none;
            position: absolute;
            top: 27%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 100px;
            color: red;
            z-index: 3;
        }
        .retry {
            display: none;
            position: absolute;
            top: 32%;
            left: 50%;
            transform: translateX(-50%);
            font-size: 26px;
            padding: 10px 43px;
            margin: 10px;
            z-index: 3;
            cursor: pointer;
            background-color: #4CAF50;
            color: white;
            border-radius: 5px;
            border: none;
        }

        .top-menu {
            display: none;
            position: absolute;
            top: 39%;
            left: 50%;
            transform: translateX(-50%);
            font-size: 26px;
            padding: 10px 20px;
            margin: 10px;
            z-index: 3;
            cursor: pointer;
            background-color: #008CBA;
            color: white;
            
            
            border: none;
            
            border-radius: 5px;
            
        }

    </style>
</head>
<body>
    <div class="slide-container">
        <div class="slide-wrapper">
            <img class="slide" src="images/aaa.jpg" alt="ENFJ">
            <img class="slide" src="images/bbb.jpg" alt="ENFP">
            <img class="slide" src="images/ccc.jpg" alt="ENTJ">
            <img class="slide" src="images/aaa.jpg" alt="ENFJ">
            <img class="slide" src="images/ccc.jpg" alt="ENTJ">
            <img class="slide" src="images/bbb.jpg" alt="ENFP">
            <img class="slide" src="images/ccc.jpg" alt="ENTJ">
            <img class="slide" src="images/aaa.jpg" alt="ENFJ">
            <img class="slide" src="images/aaa.jpg" alt="ENFJ">
            <img class="slide" src="images/bbb.jpg" alt="ENFP">
            <img class="slide" src="images/ccc.jpg" alt="ENTJ">
            <img class="slide clear-slide" src="images/ok.png" alt="Clear" style="display: none;">
        </div>
        
    </div>

    <div class="player"></div>
    
    <div class="obstacle" style="right: -200px;"></div>
    <div class="obstacle-2-1" style="right: -300px;"></div>
    
    <div class="obstacle-1" style="right: -400px;"></div>
    <div class="obstacle-2" style="right: -600px;"></div>
    <div class="obstacle-3" style="right: -800px;"></div>
    <div class="obstacle-2-2" style="right: -900px;"></div>
    <div class="obstacle-4" style="right: -1000px;"></div>
    <div class="obstacle-5" style="right: -1200px;"></div>
<div class="button-container"></div>
    <div class="clear-message">Clear!</div>
    <div class="game-over">Game Over</div>
    
    <form action="RetryHardServlet" method="get">
        <button class="retry">Retry</button>
    </form>
    <button class="top-menu">Top Menu</button>

    <h1></h1>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const player = document.querySelector('.player');
            const obstacles = document.querySelectorAll
            ('.obstacle, .obstacle-1, .obstacle-2,.obstacle-3,.obstacle-4,.obstacle-5,.obstacle-2-1,.obstacle-2-2');
            const gameOverText = document.querySelector('.game-over');
            const clearMessage = document.querySelector('.clear-message');
            const slideWrapper = document.querySelector('.slide-wrapper');
            const retryButton = document.querySelector('.retry');
            const topMenuButton = document.querySelector('.top-menu');

            let isJumping = false;
            let canDoubleJump = false;
            let hasDoubleJumped = false;
            let gameOverFlag = false;
            let gameClearFlag = false;

            document.addEventListener('keydown', function(event) {
                if (event.code === 'Space') {
                    if (!isJumping) {
                        jump();
                    } else if (canDoubleJump && !hasDoubleJumped) {
                        doubleJump();
                    }
                }
            });

            function jump() {
                isJumping = true;
                canDoubleJump = true;
                player.classList.remove('double-jump');
                player.classList.add('jump');

                player.addEventListener('animationend', function() {
                    if (!hasDoubleJumped) {
                        resetJump();
                    }
                }, { once: true });
            }

            function doubleJump() {
                hasDoubleJumped = true;
                player.classList.remove('jump');
                player.classList.add('double-jump');

                player.addEventListener('animationend', function() {
                    resetJump();
                }, { once: true });
            }

            function resetJump() {
                isJumping = false;
                canDoubleJump = false;
                hasDoubleJumped = false;
                player.classList.remove('jump');
                player.classList.remove('double-jump');
            }

            function getCenter(element) {
                const rect = element.getBoundingClientRect();
                return {
                    x: rect.left + rect.width / 2,
                    y: rect.top + rect.height / 2
                };
            }

            function checkCollision() {
                const playerCenter = getCenter(player);
                const playerRadius = player.offsetWidth / 2;

                for (const obstacle of obstacles) {
                    const obstacleCenter = getCenter(obstacle);
                    const obstacleRadius = obstacle.offsetWidth / 2;

                    const distance = Math.sqrt(
                        Math.pow(playerCenter.x - obstacleCenter.x, 2) +
                        Math.pow(playerCenter.y - obstacleCenter.y, 2)
                    );

                    if (distance < playerRadius + obstacleRadius) {
                        gameOver();
                        return;
                    }
                }

                checkClear();
            }


            function checkClear() {
                let obstacleCount = obstacles.length;
                for (const obstacle of obstacles) {
                    const obstacleRect = obstacle.getBoundingClientRect();
                    if (obstacleRect.right > 0) {
                        return;
                    }
                }
                if (obstacleCount === 8) {
                    gameClear();
                }
            }

            function gameOver() {
                gameOverFlag = true;
                gameOverText.style.display = 'block';
                slideWrapper.style.animationPlayState = 'paused';
                
                for (const obstacle of obstacles) {
                    obstacle.style.animationPlayState = 'paused';
                }
                retryButton.style.display = 'block';
                topMenuButton.style.display = 'block';
            }

            function gameClear() {
                gameClearFlag = true;
                clearMessage.style.display = 'block';
                
                const clearSlide = document.querySelector('.clear-slide');
                clearSlide.style.display = 'block';
                
                const currentSlidePosition = slideWrapper.getBoundingClientRect().right;
                clearSlide.style.left = `${currentSlidePosition}px`;
                
                clearSlide.style.animation = 'slide-clear 5s linear forwards';
                
                slideWrapper.style.animationPlayState = 'paused';
                
                for (const obstacle of obstacles) {
                    obstacle.style.animationPlayState = 'paused';
                }
               
                topMenuButton.style.display = 'block';
            }


            function restartGame() {
                gameOverFlag = false;
                gameClearFlag = false;
                gameOverText.style.display = 'none';
                clearMessage.style.display = 'none';
                retryButton.style.display = 'none';
                topMenuButton.style.display = 'none';
                slideWrapper.style.animationPlayState = 'running';
                
                document.querySelectorAll('.obstacle, .obstacle-1').forEach((obstacle, index) => {
                    obstacle.style.animationPlayState = 'running';
                    obstacle.style.right = `-${(index + 1) * 200}px`;
                });

                resetJump();
                gameLoop();
            }

            retryButton.addEventListener('click', function() {
                restartGame();
            });

            topMenuButton.addEventListener('click', function() {
                window.location.href = 'index.html';
            });

            function gameLoop() {
                checkCollision();
                if (!gameOverFlag && !gameClearFlag) {
                    requestAnimationFrame(gameLoop);
                }
            }

            gameLoop();
        });
    </script>
</body>
</html>
