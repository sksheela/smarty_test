<?php

/**
 * Example Application
 *
 * @package Example-application
 */

require 'libs/Smarty.class.php';

$smarty = new Smarty;

//$smarty->force_compile = true;
$smarty->debugging = true;
$smarty->caching = true;
$smarty->cache_lifetime = 120;

$smarty->assign('title', 'Smarty');


// variable assign
$smarty->assign('fname', 'Jack');
$smarty->assign('lname', 'Mittal');
$smarty->assign("Name", 'Sandeep Kumar');



$smarty->assign('firstname', 'Doug');
$smarty->assign('lastname', 'Evans');
$smarty->assign('meetingPlace', 'New York');

//  Array variable
$smarty->assign('data', array(1, 2, 3, 4, 5, 6, 7, 8, 9));

$smarty->assign(
    'Contacts',
    array(
        'fax' => '555-222-9876',
        'email' => 'zaphod@slartibartfast.example.com',
        'phone' => array(
            'home' => '555-444-3333',
            'cell' => '555-111-1234'
        )
    )
);

$smarty->assign('Contact', array(
    '555-222-9876',
    'zaphod@slartibartfast.example.com',
    array(
        '555-444-3333',
        '555-111-1234'
    )
));


// the constant defined in php
define('MY_CONST_VAL', 'CHERRIES');

$smarty->assign('articleTitle', 'next x-men film, x3, delayed.');
$smarty->assign('articleTitle2', "Psychics predict world didn't end");


$smarty->assign('articleTitle3', 'Cold Wave Linked to Temperatures.');

$smarty->assign(
    'articleTitle4',
    "War Dims Hope for Peace. Child's Death Ruins Couple's Holiday.\n\n
                 Man is Fatally Slain. Death Causes Loneliness, Feeling of Isolation."
);


$smarty->assign(
    'articleTitle5',
    'Two Soviet Ships Collide - One Dies.
                 Enraged Cow Injures Farmer with Axe.'
);


$smarty->assign('articleTitle6', 'Dealers Will Hear Car Talk at Noon.');


$config['date'] = '%I:%M %p';
$config['time'] = '%H:%M:%S';
$smarty->assign('config', $config);
$smarty->assign('yesterday', strtotime('-1 day'));


$smarty->assign('articleTitle7', 'Dealers Will Hear Car Talk at Noon.');
$smarty->assign('email', '');



$smarty->assign(
    'articleTitle8',
    "'Stiff Opposition Expected to Casketless Funeral Plan'"
);
$smarty->assign('EmailAddress', 'smarty@example.com');




$smarty->assign(
    'articleTitle9',
    'NJ judge to rule on nude beach.
Sun or rain expected today, dark tonight.
Statistics show that teen pregnancy drops off significantly after 25.'
);


$smarty->assign('articleTitle10', 'Two Convicts Evade Noose, Jury Hung.');



$smarty->assign(
    'articleTitle11',
    "Sun or rain expected\ntoday, dark tonight"
);

$smarty->assign('articleTitle12', "Infertility unlikely to\nbe passed on, experts say.");


$smarty->assign('articleTitle13', "Child's Stool Great for Use in Garden.");

$smarty->assign('articleTitle14', 'Something Went Wrong in Jet Crash, Experts Say.');


$smarty->assign('number', 23.5787446);


$smarty->assign('articleTitle15', "Grandmother of\neight makes\t    hole in one.");


$smarty->assign(
    'articleTitle16',
    "Blind Woman Gets <font face=\"helvetica\">New
Kidney</font> from Dad she Hasn't Seen in <b>years</b>."
);

$smarty->assign('articleTitle17', 'Two Sisters Reunite after Eighteen Years at Checkout Counter.');


$smarty->assign(
    'articleTitle18',
    "Germans use &quot;&Uuml;mlauts&quot; and pay in &euro;uro"
);

$smarty->assign('articleTitle19', "If Strike isn't Settled Quickly it may Last a While.");


$smarty->assign(
    'articleTitle20',
    "Blind woman gets new kidney from dad she hasn't seen in years."
);


$smarty->assign('articleTitle21', 'Smokers are Productive, but Death Cuts Efficiency.');


$smarty->assign('to',10);



$smarty->assign('start',10);
$smarty->assign('to',5);


$arr = array('red', 'green', 'blue');
$smarty->assign('myColors', $arr);



$people = array('fname' => 'John', 'lname' => 'Doe', 'email' => 'j.doe@example.com');
$smarty->assign('myPeople', $people);




$smarty->assign('contacts', array(
    array('phone' => '555-555-1234',
          'fax' => '555-555-5678',
          'cell' => '555-555-0357'),
    array('phone' => '800-555-4444',
          'fax' => '800-555-3333',
          'cell' => '800-555-2222')
    ));


    $smarty->assign( 'data', array(1,2,3,4,5,6,7,8,9) );
// $smarty->assign( 'tr', array('bgcolor="#eeeeee"','bgcolor="#dddddd"') );



$smarty->assign('cust_ids', array(56,92,13));
$smarty->assign('cust_names', array(
                              'Joe Schmoe',
                              'Jane Johnson',
                              'Charlie Brown'));
$smarty->assign('customer_id', 92);



$smarty->assign('myOptions', array(
    1800 => 'Joe Schmoe',
    9904 => 'Jack Smith',
    2003 => 'Charlie Brown')
    );
$smarty->assign('mySelect', 9904);

// $smarty->assign("option_values", array("NY", "NE", "KS", "IA", "OK", "TX"));
// $smarty->assign("option_output", array("New York", "Nebraska", "Kansas", "Iowa", "Oklahoma", "Texas"));
// $smarty->assign("option_selected", "NE");

$smarty->display('index.tpl');
