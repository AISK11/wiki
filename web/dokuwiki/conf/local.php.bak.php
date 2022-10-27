<?php
/*
 * Dokuwiki's Main Configuration File - Local Settings
 * Auto-generated by config plugin
 * Run for user: admin
 * Date: Thu, 27 Oct 2022 14:43:09 +0200
 */

$conf['title'] = 'Wiki';
$conf['start'] = 'index';
$conf['tagline'] = 'Personal knowledge base.';
$conf['license'] = 'cc-zero';
$conf['breadcrumbs'] = 0;
$conf['dformat'] = '%Y-%m-%d %H:%M';
$conf['tocminheads'] = '1';
$conf['useacl'] = 1;
$conf['passcrypt'] = 'argon2id';
$conf['superuser'] = '@admin';
$conf['disableactions'] = 'register';
$conf['usewordblock'] = 0;
$conf['relnofollow'] = 0;
$conf['usedraft'] = 0;
$conf['subscribers'] = 1;
$conf['updatecheck'] = 0;
$conf['userewrite'] = '1';
$conf['useslash'] = 1;
$conf['canonical'] = 1;
$conf['plugin']['cli']['prompt'] = '/^.{0,30}?[$%>#] /';
$conf['plugin']['cli']['continue'] = '/^.{0,30}?> /';
$conf['plugin']['cli']['comment'] = '/(^#)| #/';
$conf['plugin']['cli']['namedprompt'] = 'irb:/(?x) ^ ( > | irb.*?:\\d+:\\d+ | (?: ruby-?)? \\d.*?:\\d+\\s )>\\s /
nospace:/^.{0,30}[$%>#]/
dos:/^[A-Z]:.{0,28}>/
';
$conf['plugin']['cli']['namedcontinue'] = 'irb:@(?x) ^ ( \\?> | irb.*?:\\d+:\\d+[]\'"/`*>] | (?: ruby-?)? \\d.*?:\\d+[]\'"/`?]> )\\s @
R:/^\\+ /
python:...
dos:undef continue
nospace:undef continue
';
$conf['plugin']['cli']['namedcomment'] = 'irb:/#(?!{)/
dos:/^\\s*rem(\\s+|$)/
';
$conf['plugin']['toctweak']['tocPosition'] = '9';
$conf['plugin']['toctweak']['tocminheads'] = '1';
$conf['plugin']['dw2pdf']['output'] = 'browser';
$conf['plugin']['dw2pdf']['usecache'] = '0';
