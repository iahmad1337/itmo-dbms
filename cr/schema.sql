create table if not exists Teams
(
    Teamid   Integer      not null,
    Teamname Varchar(128) not null,
    constraint "pk_Teams" primary key (Teamid)
);

create table if not exists Contests
(
    Contestid   Integer      not null,
    Contestname Varchar(128) not null,
    constraint "pk_Contests" primary key (Contestid)
);

create table if not exists Problems
(
    Contestid   Integer      not null,
    Letter      Char         not null,
    Problemname Varchar(128) not null,
    constraint "pk_Problems" primary key (Contestid, Letter),
    constraint "fk_Problems_Contests" foreign key (Contestid) references Contests (Contestid)
);

create table if not exists Sessions
(
    Sessionid Integer   not null,
    Teamid    Integer   not null,
    Contestid Integer   not null,
    Start     Timestamp not null,
    constraint "pk_Sessions" primary key (Sessionid),
    constraint "fk_Sessions_Teams" foreign key (Teamid) references Teams (Teamid),
    constraint "fk_Sessions_Contests" foreign key (Contestid) references Contests (Contestid)
);

create table if not exists Runs
(
    Runid      Integer  not null,
    Sessionid  Integer  not null,
    Letter     Char     not null,
    Submittime Integer  not null,
    Accepted   Smallint not null, --only 0,1
    constraint "pk_Runs" primary key (Runid),
    constraint "fk_Runs_Sessions" foreign key (Sessionid) references Sessions (Sessionid)
);

