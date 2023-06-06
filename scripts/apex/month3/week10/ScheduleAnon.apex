string str_cron = '13 13 13 * * ?';
AccountSchedulable acs = new AccountSchedulable();

system.schedule('account schedule 13 13', str_cron, acs);