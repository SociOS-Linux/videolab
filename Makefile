			.PHONY: video-bootstrap video-rebuild video-verify video-smoketest video-shell

			video-bootstrap:
    			./scripts/bootstrap_brew_video.sh

			video-rebuild:
    			./scripts/rebuild_video_env.sh

			video-verify:
    			./scripts/verify_video_env.sh

			video-smoketest:
    			source .venv-video/bin/activate && ./scripts/smoketest_video.sh

			video-shell:
    			./scripts/video_shell.sh
