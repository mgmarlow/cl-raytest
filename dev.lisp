(push "~/projects/raytest/raylib/" asdf:*central-registry*)
(push "~/projects/raytest/" asdf:*central-registry*)
(asdf:load-system "game")

(game::main)
