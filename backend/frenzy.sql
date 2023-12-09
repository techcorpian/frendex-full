CREATE DATABASE frendexdb;

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    image VARCHAR(255),
    username VARCHAR(255),
    acc_address VARCHAR(255),
    supply NUMERIC(20),
    key_price DECIMAL(3,2),
    unique_buyers NUMERIC(20),
    total_amount DECIMAL(3,2),
    total_spent DECIMAL(3,2),
    total_fees_earned DECIMAL(3,2),
    eth_balance DECIMAL(3,2),
    buy_key DECIMAL(3,2),
    sell_key DECIMAL(3,2),
    points NUMERIC(20),
    pandl DECIMAL(3,2),
    user_status numeric,
    created_on timestamp default CURRENT_TIMESTAMP not null,
    updated_on timestamp default CURRENT_TIMESTAMP not null
    
);

CREATE TABLE trades(
    id SERIAL PRIMARY KEY,
    user_id NUMERIC(20),
    buy DECIMAL(3,2),
    sell DECIMAL(3,2),
    created_on timestamp default CURRENT_TIMESTAMP not null,
    updated_on timestamp default CURRENT_TIMESTAMP not null
    
);

CREATE TABLE keys(
    id SERIAL PRIMARY KEY,
    holder NUMERIC(20),
    holding NUMERIC(20),
    hold_value DECIMAL(3,2),
    created_on timestamp default CURRENT_TIMESTAMP not null,
    updated_on timestamp default CURRENT_TIMESTAMP not null
    
);


INSERT INTO users (username, image, acc_address, key_price, supply, buys, sells, unique_buyers, total_spent, total_sold, total_amount, total_fees_earned) VALUES ('Musthaq','dp1.jpeg','0239x2340824', 0.872, 168, 7, 1, 0, 0.107, 0.587, 1.312, 1.058);

SELECT * FROM users;

ALTER TABLE users
ADD updated_on timestamp default CURRENT_TIMESTAMP not null,
ADD user_status numeric;

UPDATE users
SET user_status = 1;

UPDATE users
SET user_status = 1 
WHERE id=92;

SELECT SUM(column_name)
FROM table_name
WHERE condition;

SELECT COUNT(user_status)
FROM users
WHERE user_status=1;

ALTER TABLE trades
DROP user_status;

SELECT * FROM trades;

ALTER TABLE users
ADD eth_balance NUMERIC(20);

SELECT COUNT(*) FROM users WHERE created_on BETWEEN '2023-11-19 00:00:00' AND '2023-11-19 23:59:00';


insert into users (id, image, username, key_price, supply, buys, sells, unique_buyers, total_spent, total_sold, total_amount, total_fees_earned, user_status) values (101, 'dp1.jpeg', 'jgredden0', 0.28, 54, 56, 3, 3, 1.42, 1.58, 0.23, 0.97, 1);
insert into users (id, image, username, key_price, supply, buys, sells, unique_buyers, total_spent, total_sold, total_amount, total_fees_earned, user_status) values (102, 'dp1.jpeg', 'peyeington1', 0.1, 83, 56, 13, 4, 1.58, 0.06, 1.19, 0.31, '1');
insert into users (id, image, username, key_price, supply, buys, sells, unique_buyers, total_spent, total_sold, total_amount, total_fees_earned, user_status) values (103, 'dp1.jpeg', 'wbotcherby2', 0.46, 181, 47, 18, 5, 0.31, 1.08, 1.73, 0.77, '1');
insert into users (id, image, username, key_price, supply, buys, sells, unique_buyers, total_spent, total_sold, total_amount, total_fees_earned, user_status) values (104, 'dp1.jpeg', 'mfrondt3', 0.08, 30, 35, 58, 8, 0.21, 0.96, 0.39, 1.14, '1');
insert into users (id, image, username, key_price, supply, buys, sells, unique_buyers, total_spent, total_sold, total_amount, total_fees_earned, user_status) values (105, 'dp1.jpeg', 'ffullom4', 0.78, 82, 7, 81, 5, 1.09, 1.43, 1.72, 0.79, '1');
insert into users (id, image, username, key_price, supply, buys, sells, unique_buyers, total_spent, total_sold, total_amount, total_fees_earned, user_status) values (106, 'dp1.jpeg', 'fpatey5', 0.77, 38, 79, 74, 1, 1.33, 1.69, 1.53, 1.97, '1');
insert into users (image, username, key_price, supply, buys, sells, unique_buyers, total_spent, total_sold, total_amount, total_fees_earned, user_status) values ('dp1.jpeg', 'hiozefovich6', 0.4, 18, 25, 28, 10, 0.35, 1.6, 1.57, 0.8, '1');
insert into users (image, username, key_price, supply, buys, sells, unique_buyers, total_spent, total_sold, total_amount, total_fees_earned, user_status) values ('dp1.jpeg', 'etigwell7', 0.58, 29, 11, 81, 10, 0.87, 0.17, 0.24, 0.28, '1');
insert into users (image, username, key_price, supply, buys, sells, unique_buyers, total_spent, total_sold, total_amount, total_fees_earned, user_status) values ('dp1.jpeg', 'bwinman8', 0.13, 154, 81, 40, 7, 1.08, 1.3, 1.8, 1.72, '1');
insert into users (image, username, key_price, supply, buys, sells, unique_buyers, total_spent, total_sold, total_amount, total_fees_earned, user_status) values ('dp1.jpeg', 'sdanilchenko9', 0.36, 109, 53, 60, 5, 0.53, 1.22, 0.54, 0.22, '1');
insert into users (image, username, key_price, supply, buys, sells, unique_buyers, total_spent, total_sold, total_amount, total_fees_earned, user_status) values ('dp1.jpeg', 'tearlea', 0.38, 72, 44, 7, 1, 1.79, 0.62, 0.75, 0.72, '1');
insert into users (image, username, key_price, supply, buys, sells, unique_buyers, total_spent, total_sold, total_amount, total_fees_earned, user_status) values ('dp1.jpeg', 'fceschib', 0.24, 50, 65, 52, 10, 0.91, 1.02, 0.76, 1.73, '1');
insert into users (image, username, key_price, supply, buys, sells, unique_buyers, total_spent, total_sold, total_amount, total_fees_earned, user_status) values ('dp1.jpeg', 'mjachimczakc', 0.24, 82, 13, 96, 2, 1.71, 0.55, 0.85, 1.32, '1');
insert into users (image, username, key_price, supply, buys, sells, unique_buyers, total_spent, total_sold, total_amount, total_fees_earned, user_status) values ('dp1.jpeg', 'cparradyed', 0.34, 14, 30, 76, 5, 1.19, 0.04, 0.39, 1.85, '1');
insert into users (image, username, key_price, supply, buys, sells, unique_buyers, total_spent, total_sold, total_amount, total_fees_earned, user_status) values ('dp1.jpeg', 'ojankine', 0.41, 176, 60, 39, 3, 1.02, 1.77, 1.79, 1.81, '1');
insert into users (image, username, key_price, supply, buys, sells, unique_buyers, total_spent, total_sold, total_amount, total_fees_earned, user_status) values ('dp1.jpeg', 'ddanslowf', 0.54, 84, 98, 24, 8, 1.86, 0.71, 0.96, 1.26, '1');
insert into users (image, username, key_price, supply, buys, sells, unique_buyers, total_spent, total_sold, total_amount, total_fees_earned, user_status) values ('dp1.jpeg', 'hgoodhewg', 0.15, 57, 62, 34, 4, 0.85, 1.59, 0.78, 0.46, '1');
insert into users (image, username, key_price, supply, buys, sells, unique_buyers, total_spent, total_sold, total_amount, total_fees_earned, user_status) values ('dp1.jpeg', 'vmacalpinh', 0.92, 1, 21, 98, 6, 0.31, 1.08, 0.71, 0.07, '1');

UPDATE trades
SET created_on = '2023-12-01 10:21:09.400589'
WHERE id BETWEEN 187 AND 191;

insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'rmaria0', 'gaustick0@reverbnation.com', 4, 6, 1.61, 0.35, 0.034, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'kshoesmith1', 'lgerman1@cbslocal.com', 21, 5, 1.58, 2.558, 0.047, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'bhedditeh2', 'mjorge2@scribd.com', 37, 7, 0.06, 2.96, 1.837, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'cservante3', 'odanter3@vk.com', 70, 0, 0.9, 2.512, 1.556, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'rdallinder4', 'jboadby4@who.int', 13, 3, 0.51, 2.471, 1.844, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'epoetz5', 'jwolfendell5@hatena.ne.jp', 2, 6, 1.85, 1.671, 0.565, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'cloisi6', 'mhaggart6@go.com', 85, 1, 1.33, 2.889, 1.401, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'njanikowski7', 'fvaggs7@de.vu', 11, 4, 0.17, 0.292, 1.292, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'fcridlon8', 'calphonso8@economist.com', 24, 8, 0.35, 2.914, 0.674, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'chuyche9', 'ptodarello9@tripod.com', 45, 9, 0.77, 0.215, 1.732, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'emanvellea', 'rhubbolda@marketwatch.com', 83, 1, 1.38, 0.561, 0.347, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'smilingtonb', 'lrottenburyb@reference.com', 31, 0, 1.41, 2.558, 0.578, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'dkeithc', 'sshorec@hp.com', 76, 0, 1.79, 1.799, 1.281, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'gohdirscolld', 'hnorgated@xing.com', 15, 4, 1.03, 1.415, 1.543, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'lholmyarde', 'mlampene@nydailynews.com', 59, 0, 1.65, 1.016, 0.665, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'aridwoodf', 'nbrewsef@whitehouse.gov', 74, 1, 1.22, 2.885, 0.439, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'gwalentag', 'lattwoodg@ucsd.edu', 89, 4, 1.85, 2.86, 0.245, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'ustokeyh', 'ebamleth@fema.gov', 32, 4, 0.16, 0.666, 0.589, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'graveni', 'jvanyashkini@pcworld.com', 54, 5, 1.27, 0.084, 1.243, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'mterrillj', 'wocaheyj@taobao.com', 19, 6, 1.68, 1.28, 1.732, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'kbonifaziok', 'jrancek@nbcnews.com', 62, 5, 0.49, 2.803, 1.407, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'thavilll', 'fpeplowl@newyorker.com', 64, 9, 0.67, 0.924, 0.064, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'scaddiesm', 'zbinnesm@deliciousdays.com', 63, 10, 0.59, 2.54, 0.151, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'wsudddardn', 'mcareyn@devhub.com', 20, 5, 1.47, 0.673, 0.35, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'bgettyo', 'clavisteo@tiny.cc', 100, 2, 1.5, 1.695, 1.161, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'iknightsp', 'dofergusp@list-manage.com', 7, 2, 0.13, 2.044, 1.444, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'dbirchq', 'bmeyerq@ucoz.ru', 43, 0, 0.32, 1.514, 1.045, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'smccordr', 'kcaudler@deliciousdays.com', 88, 1, 1.9, 1.643, 0.643, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'dgravellss', 'cslorances@discovery.com', 14, 4, 1.22, 2.176, 1.177, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'braddont', 'gsillimant@ted.com', 97, 8, 0.26, 1.717, 1.983, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'idanskenu', 'mmcmainsu@blogs.com', 90, 4, 1.68, 2.217, 0.338, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'lkaaskooperv', 'svilev@biblegateway.com', 16, 2, 0.19, 2.029, 1.054, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'ksheehanw', 'epauncefootw@blogger.com', 51, 2, 0.01, 2.148, 1.398, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'vingledewx', 'agravestonx@irs.gov', 74, 1, 1.44, 2.37, 1.023, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'jdallemorey', 'afozardy@facebook.com', 28, 6, 1.2, 0.552, 1.996, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'tlifez', 'afreathyz@ca.gov', 55, 10, 0.03, 0.839, 1.882, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'lshorie10', 'ematteini10@last.fm', 7, 4, 1.62, 2.208, 0.021, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'gcoop11', 'bvauls11@cloudflare.com', 94, 8, 0.39, 1.286, 1.832, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'vtedman12', 'bomara12@topsy.com', 80, 2, 0.82, 0.792, 1.862, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'isuttling13', 'ddoodney13@ebay.com', 9, 2, 1.33, 0.597, 0.353, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'estorm14', 'npane14@vistaprint.com', 34, 3, 1.39, 1.799, 1.916, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'ctumini15', 'gkropach15@odnoklassniki.ru', 44, 6, 0.98, 0.748, 1.872, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'kduckerin16', 'kparkinson16@people.com.cn', 77, 1, 1.48, 0.635, 0.057, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'rcopin17', 'astourton17@utexas.edu', 26, 10, 0.11, 2.784, 0.745, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'aalvin18', 'akears18@illinois.edu', 33, 8, 1.0, 2.11, 1.989, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'cnorwich19', 'dmcrorie19@w3.org', 30, 8, 0.41, 0.475, 1.963, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'bisley1a', 'afeander1a@biblegateway.com', 91, 10, 0.33, 2.031, 1.842, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'btonkinson1b', 'kmachoste1b@360.cn', 71, 10, 0.57, 2.813, 1.967, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'cblakeway1c', 'bexon1c@elpais.com', 87, 4, 0.06, 2.758, 1.927, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'sgoudy1d', 'asacco1d@chronoengine.com', 34, 0, 1.45, 0.811, 1.697, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'dcorse1e', 'cgoring1e@state.gov', 91, 5, 0.58, 0.68, 0.562, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'nrapinett1f', 'ecrufts1f@wix.com', 96, 5, 1.15, 0.194, 0.762, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'darrighi1g', 'dbrome1g@arizona.edu', 20, 5, 1.41, 0.062, 0.402, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'dsuttling1h', 'cbeardall1h@wsj.com', 39, 8, 0.65, 1.779, 1.47, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'jtriggs1i', 'ygrebert1i@google.com', 58, 4, 0.92, 2.144, 1.307, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'hczajkowski1j', 'hsellwood1j@fda.gov', 50, 1, 1.15, 1.318, 1.227, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'amactrustie1k', 'ckleinhausen1k@usa.gov', 15, 10, 0.52, 2.295, 0.343, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'rdolman1l', 'jyukhnev1l@godaddy.com', 11, 10, 0.83, 2.621, 0.498, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'jfilintsev1m', 'tzeplin1m@hhs.gov', 67, 4, 0.16, 0.246, 1.402, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'pkimberley1n', 'cgedge1n@jalbum.net', 85, 8, 1.1, 2.748, 1.551, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'agreader1o', 'dbyas1o@blog.com', 71, 2, 1.11, 2.868, 0.567, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'lwintersgill1p', 'jbernhard1p@altervista.org', 3, 8, 1.75, 1.503, 1.041, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'llinzee1q', 'cburston1q@webmd.com', 11, 3, 1.62, 2.589, 1.715, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'rpoxon1r', 'hawmack1r@barnesandnoble.com', 36, 4, 0.17, 0.204, 1.597, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'zcusted1s', 'jzack1s@printfriendly.com', 44, 10, 1.47, 1.074, 1.091, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'eroscam1t', 'jbust1t@tinyurl.com', 99, 5, 1.64, 2.743, 1.887, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'mkyttor1u', 'dtoghill1u@bbc.co.uk', 88, 6, 1.2, 0.84, 1.813, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'edigwood1v', 'kguillard1v@toplist.cz', 36, 8, 1.33, 1.184, 0.562, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'bphilippou1w', 'tshimmans1w@hud.gov', 76, 6, 0.69, 0.084, 1.64, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'hcolborn1x', 'lplayford1x@qq.com', 73, 2, 0.17, 0.177, 1.354, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'hpund1y', 'echapman1y@miitbeian.gov.cn', 77, 8, 1.84, 2.862, 1.966, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'bglanister1z', 'poconnolly1z@ucoz.ru', 86, 7, 0.06, 2.155, 1.756, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'warcase20', 'bstinton20@cmu.edu', 44, 6, 0.46, 1.57, 1.852, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'sthorns21', 'ehotton21@nba.com', 22, 5, 0.77, 2.297, 0.388, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'idarbon22', 'aozelton22@reuters.com', 1, 0, 1.78, 0.993, 1.958, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'cbothams23', 'ctindall23@businessinsider.com', 3, 6, 0.92, 2.888, 0.734, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'bcorrigan24', 'cdunkerton24@whitehouse.gov', 10, 5, 0.84, 1.792, 0.687, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'rgillaspy25', 'pgooding25@un.org', 38, 4, 0.52, 1.757, 1.793, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'tflintoffe26', 'bsquier26@slate.com', 40, 5, 0.03, 0.096, 1.733, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'lgeratasch27', 'csettle27@wikia.com', 78, 9, 0.07, 0.614, 1.639, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'hbelasco28', 'tnewcomb28@reuters.com', 81, 4, 1.48, 2.573, 1.504, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'blaybourne29', 'dtumilty29@boston.com', 59, 2, 1.91, 2.65, 1.109, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'ograyston2a', 'eledner2a@fda.gov', 57, 3, 0.86, 2.308, 0.087, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'smiddle2b', 'afleming2b@angelfire.com', 91, 3, 1.66, 2.474, 0.891, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'calliot2c', 'pbirchenough2c@e-recht24.de', 81, 5, 1.63, 2.047, 1.969, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'brickell2d', 'lantonellini2d@who.int', 21, 4, 0.78, 2.201, 1.07, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'mcruikshanks2e', 'sgeekin2e@gov.uk', 41, 9, 1.0, 1.618, 1.349, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'eshackesby2f', 'uwalesby2f@reference.com', 71, 5, 1.75, 0.523, 1.639, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'ccadge2g', 'gshenfisch2g@cloudflare.com', 31, 8, 1.66, 0.718, 0.465, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'cwortt2h', 'gskillanders2h@yelp.com', 21, 4, 0.86, 1.283, 0.292, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'rjacobssen2i', 'gmccrossan2i@soundcloud.com', 100, 8, 0.7, 2.628, 1.657, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'cchantler2j', 'cmarquiss2j@ca.gov', 36, 9, 1.66, 1.154, 0.017, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'drettie2k', 'dreddin2k@hugedomains.com', 4, 3, 0.03, 1.689, 1.368, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'adowry2l', 'egiffin2l@geocities.com', 40, 6, 1.57, 2.379, 1.943, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'lfreeburn2m', 'chorsfield2m@surveymonkey.com', 74, 1, 1.22, 2.037, 1.585, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'rtenniswood2n', 'sbowdery2n@github.com', 3, 10, 0.74, 0.476, 0.405, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'ovamplew2o', 'bkunkler2o@spiegel.de', 81, 5, 0.73, 2.454, 1.056, 1);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'mrammell2p', 'hkunzler2p@princeton.edu', 76, 7, 0.31, 0.424, 0.852, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'raugustin2q', 'fwoodberry2q@cornell.edu', 3, 0, 0.48, 2.747, 0.496, 0);
insert into users (image, username, acc_address, supply, unique_buyers, total_amount, total_fees_earned, eth_balance, user_status) values ('dp1.jpeg', 'ndreher2r', 'ccakes2r@seattletimes.com', 79, 1, 1.71, 0.979, 0.059, 0);

insert into trades (user_id, trade_type, trade_value) values (7, 'buy', 0.896);