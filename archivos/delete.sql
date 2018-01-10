start transaction;

use `Acme-Explorer`;

revoke all privileges on `Acme-Pad-Thai`.* from 'acme-user'@'%';
revoke all privileges on `Acme-Pad-Thai`.* from 'acme-manager'@'%';

drop user 'acme-user'@'%';
drop user 'acme-manager'@'%';

drop database `Acme-Explorer`;

commit;