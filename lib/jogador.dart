import 'package:bonfire/bonfire.dart';
import 'package:escribo_pacman/animacoes.dart';

class Jogador extends RotationPlayer with ObjectCollision {
  Jogador(Vector2 position)
      : super(
            position: position,
            animRun: Animacoes().jogCorre,
            size: Vector2(16, 16),
            animIdle: Animacoes().jogPara,
            speed: 150,
            currentRadAngle: 1) {
    setupCollision(
      CollisionConfig(
        collisions: [
          CollisionArea.circle(
            radius: 8,
            align: Vector2(
              4,
              4,
            ),
          ),
        ],
      ),
    );
  }
}
