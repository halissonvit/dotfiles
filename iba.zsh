run() {
  SERVER=$(basename $PWD)
  PORT=$(cd .. &>/dev/null && exec rake -D | grep -E "Start.*$SERVER.*port: .*" | sed -E 's/.*port: ([0-9]+).*/\1/')
  (cd .. &>/dev/null && rake "stop:$SERVER" &>/dev/null)
  bundle exec rackup -p $PORT -s thin
}

restart() {
  SERVER=$(basename $PWD)
  (cd .. &>/dev/null && rake "restart:$SERVER" &>/dev/null)
}

seed_iba() {
  curl -u 'api_admin:password' --basic http://localhost:5100/seed
  curl -u 'api_admin:password' --basic http://localhost:5500/seed
}

export RUBYOPT=-Ku

export NLS_LANG="AMERICAN_AMERICA.UTF8"
export ORACLE_HOME=/opt/oracle/instantclient_10_2
export DYLD_LIBRARY_PATH=$ORACLE_HOME
export LD_LIBRARY_PATH=$ORACLE_HOME
export PATH=$ORACLE_HOME:$PATH

alias sqlplus='rlwrap sqlplus'

FTF_CONN="FTF/FTF@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=localhost)(PORT=7521))(CONNECT_DATA=(SID=TD153)))"
alias sqlplus-ftf="sqlplus '$FTF_CONN'"
CRP_CONN="ESS_USER/ESS_USER@//localhost:6521/TH154"
alias sqlplus-crp="sqlplus '$CRP_CONN'"

alias tunnel-crp='ssh -L 6521:10.80.3.201:1521 ess61'
alias tunnel-ftf='ssh -L 7521:10.195.1.124:1521 ess61'

alias rm_cassettes_spec="rm -rf spec/cassettes"
alias rm_cassettes_features="rm -rf features/cassettes"
alias rm_cassettes="rm_cassettes_spec && rm_cassettes_features"

