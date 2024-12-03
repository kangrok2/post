# MySQL 기본 이미지를 사용 (mysql:latest)
FROM mysql:8.0

# MySQL 루트 비밀번호 설정 (환경 변수로 설정)
ENV MYSQL_ROOT_PASSWORD=root
# ENV DEFAULT-CHARACTER-SET=utf8mb4 

# MySQL 설정 파일 복사 (UTF-8 설정)
COPY ./my.cnf /etc/mysql/conf.d/

# 설정 파일 권한 변경 (644)
RUN chmod 644 /etc/mysql/conf.d/my.cnf

# MySQL 사용자 정의 데이터베이스 및 사용자 추가 (선택 사항)
# 기본적으로 MySQL 컨테이너를 실행할 때 실행할 스크립트 (예: SQL 초기화 파일)

# SQL 스크립트를 복사하여 컨테이너가 시작될 때 실행
# 컨테이너가 처음 실행될 때 /docker-entrypoint-initdb.d 디렉토리에 있는 모든 .sql 및 .sh 파일을 자동으로 실행
COPY ./createDB.sql /docker-entrypoint-initdb.d/

EXPOSE 3306
# 기본 명령: MySQL 데몬 실행
CMD ["mysqld"]