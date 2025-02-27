############################
#####     LOCALHOST    #####
############################

# Kraft 모드 실행을 위한 클러스터 UUID 생성
/opt/homebrew/bin/kafka-storage random-uuid

# 기존 데이터 삭제 (이전 로그 및 메타데이터 삭제)
rm -rf /opt/homebrew/var/lib/kraft-combined-logs

# 데이터 디렉터리 포맷: 클러스터 UUID와 함께 메타데이터 초기화
kafka-storage format -t NuvLh4a8TA-vLAtXCs44Eg -c /opt/homebrew/etc/kafka/kraft/server.properties

# Kafka 브로커 시작 (KRaft 모드로 실행)
kafka-server-start /opt/homebrew/etc/kafka/kraft/server.properties