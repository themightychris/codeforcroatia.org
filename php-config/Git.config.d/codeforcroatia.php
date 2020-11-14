<?php

Git::$repositories['codeforcroatia'] = [
    'remote' => 'git@github.com:themightychris/codeforcroatia.org.git',
    'originBranch' => 'master',
    'workingBranch' => 'master',
    'trees' => [
        'data-exporters',
        'event-handlers',
        'html-templates',
        'locales',
        'php-classes',
        'php-config/ContactRequestHandler.config.d',
        'php-config/Git.config.d',
        'php-config/Laddr',
        'php-config/Laddr.config.d',
        'php-config/ProfileRequestHandler.config.d',
        'php-config/cfapi.config.php',
        'site-root'
    ]
];