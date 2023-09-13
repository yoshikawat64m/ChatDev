
# example: make run_task task="Develop a single pingpong game" name=pingpong
run_task:
	docker compose run --rm chatdev python3 run.py --task "${task}" --name ${name}

# example: make run_app app=pingpong_DefaultOrganization_20230912103523
run_app:
	docker compose run --rm chatdev bash -c "cd /workspace/WareHouse/${app} && python3 main.py"
