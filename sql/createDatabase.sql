create database ruoyi;

create user ruoyi with password 'ruoyi';

revoke connect on database ruoyi from public;

grant all on database ruoyi to ruoyi;