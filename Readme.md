// --- Batch files for windows automation --- ///

// --- GIT --- //

gs      git status
ga	    git add .
gc	    git commit -m <message>
gp	    git push
gpo	    git push -u origin <branch>
gchm	  git checkout main
gch	    git checkout <branch>
gm	    git merge <branch>
	
gchb	  git checkout -b <branch>

gigapu	git init -b main
	      git add.
	      git commit -m "Initial commit"
	      git remote add origin <repo url>
	      git push -u origin main


 // --- DOCKER	--- //

d	docker

  --- CONTAINERS ---

dc	    docker container
dls	    docker container ls
dlsa  	docker container ls -a
dci	    docker container inspect <name>

  --- BUILD ---

// --- KAFKA --- //

kz-start  zookeeper-server-start.bat c:\kafka_2.12-2.6.0\config\zookeeper.properties
k-start	  kafka-server-start.bat c:\kafka_2.12-2.6.0\config\server.properties
	
ktz-tpr	  kafka-topics --zookeeper localhost:2181 --topic <name> --create --partitions <number> --replication-factor <number>
	        kafka-topics --zookeeper --bootstrap-server localhost:9092 --topic first_topic --create --partitions <number> --replication-factor <number>

  --- Kafka topics zookeeper ---

ktz-ls	    kafka-topics --zookeeper localhost:2181 --list
ktz-td	    kafka-topics --zookeeper localhost:2181 --topic <name> --describe
ktz-dt	    kafka-topics --zookeeper localhost:2181 --describe --topic <name>

  --- Kafka console producer ---

kcp-t	    kafka-console-producer --broker-list localhost:9092 --topic <name>
kcp-tp	  kafka-console-producer --broker-list localhost:9092 --topic <name> --producer-property <input>

  --- Kafka console consumer ---

kcc-t	    kafka-console-consumer --bootstrap-server localhost:9092 --topic <name>
kcc-tb	  kafka-console-consumer --bootstrap-server localhost:9092 --topic <name> --from-beginning
kcc-tg	  kafka-console-consumer --bootstrap-server localhost:9092 --topic <name> --group <name>
kcc-tgb	  kafka-console-consumer --bootstrap-server localhost:9092 --topic <name> --group <name> --from-beginning

  --- Kafka consumer groups ---

kcg-ls	    kafka-consumer-groups --bootstrap-server localhost:9092 --list
kcg-dg	    kafka-consumer-groups --bootstrap-server localhost:9092 --describe --group <name>
kcg-rge	    kafka-consumer-groups --bootstrap-server localhost:9092 --reset-offsets --group <name> --topic <name> --execute --to-earliest
kcg-rgs	    kafka-consumer-groups --bootstrap-server localhost:9092 --reset-offsets --group <name> --topic <name> --execute --shift-by <number>


