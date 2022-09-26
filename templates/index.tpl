<html>
 <head>
 </head>
 <body>
   <h1>Name : {$fname} {$lname}</h1>
   <h1>{$Name}</h1>

   {html_table loop=$data}

<table border="1">
<tbody>
<tr><td>1</td><td>2</td><td>3</td></tr>
<tr><td>4</td><td>5</td><td>6</td></tr>
</tbody>
</table>
<br/>
   
{* this is a comment *}

Hello {$firstname} {$lastname}, glad to see you can make it.
<br />
{* this will not work as $variables are case sensitive *}
This weeks meeting is in {$meetingPlace}.
{* this will work *}
This weeks meeting is in {$meetingPlace}.<br/><br/>
{$Contacts.fax}<br />
{$Contacts.email}<br />
{* you can print arrays of arrays as well *}
{$Contacts.phone.home}<br />
{$Contacts.phone.cell}<br /><br/><br/>

{$Contact[0]}<br />
{$Contact[1]}<br />
{* you can print arrays of arrays as well *}
{$Contact[2][0]}<br />
{$Contact[2][1]}<br /><br/>

{$smarty.const.MY_CONST_VAL}<br/><br/>

{$articleTitle}
{$articleTitle|capitalize}
{$articleTitle|capitalize:true}<br/><br/>

{$articleTitle2|cat:' yesterday.'}<br/><br/>

{$articleTitle3}
{$articleTitle3|count_characters}
{$articleTitle3|count_characters:true}<br/><br/>

{$articleTitle4}
{$articleTitle4|count_paragraphs}<br/><br/>

{$articleTitle5}
{$articleTitle5|count_sentences}<br/><br/>


{$articleTitle6}
{$articleTitle6|count_words}<br/><br/>


{$smarty.now|date_format}
{$smarty.now|date_format:"%D"}
{$smarty.now|date_format:$config.date}
{$yesterday|date_format}
{$yesterday|date_format:"%A, %B %e, %Y"}
{$yesterday|date_format:$config.time}<br/><br/>

{$articleTitle7|default:'no title'}
{$myTitle|default:'no title'}
{$email|default:'No email address available'}<br/><br/>



{$articleTitle7}
'Stiff Opposition Expected to Casketless Funeral Plan'

{$articleTitle7|escape}
&#039;Stiff Opposition Expected to Casketless Funeral Plan&#039;

{$articleTitle7|escape:'html'}    {* escapes  & " ' < > *}
&#039;Stiff Opposition Expected to Casketless Funeral Plan&#039;

{$articleTitle7|escape:'htmlall'} {* escapes ALL html entities *}
&#039;Stiff Opposition Expected to Casketless Funeral Plan&#039;

<a href="?title={$articleTitle7|escape:'url'}">click here</a>
<a
href="?title=%27Stiff%20Opposition%20Expected%20to%20Casketless%20Funeral%20Plan%27">click here</a>

{$articleTitle7|escape:'quotes'}
\'Stiff Opposition Expected to Casketless Funeral Plan\'

<a href="mailto:{$EmailAddress|escape:"hex"}">{$EmailAddress|escape:"hexentity"}</a>
{$EmailAddress|escape:'mail'}    {* this converts to email to text *}
<a href="mailto:%62%6f%..snip..%65%74">&#x62;&#x6f;&#x62..snip..&#x65;&#x74;</a>

{'mail@example.com'|escape:'mail'}
smarty [AT] example [DOT] com<br/><br/>

{$articleTitle9}

{$articleTitle9|indent}

{$articleTitle9|indent:10}

{$articleTitle9|indent:1:"\t"}<br/><br/>


{$articleTitle10}
{$articleTitle10|lower}<br/><br/>

{$articleTitle11|nl2br}


{* replace each carriage return, tab and new line with a space *}

{$articleTitle12}
{$articleTitle12|regex_replace:"/[\r\t\n]/":" "}<br/><br/>

{$articleTitle13}
{$articleTitle13|replace:'Garden':'Vineyard'}
{$articleTitle13|replace:' ':'   '}<br/><br/>

{$articleTitle14}
{$articleTitle14|spacify}
{$articleTitle14|spacify:"^^"}<br/><br/>

{$number}
{$number|string_format:"%.2f"}
{$number|string_format:"%d"}<br/><br/>

{$articleTitle15}
{$articleTitle15|strip}
{$articleTitle15|strip:'&nbsp;'}<br/><br/>

{$articleTitle16}
{$articleTitle16|strip_tags} {* same as {$articleTitle16|strip_tags:true} *}
{$articleTitle16|strip_tags:false}<br/><br/>


{$articleTitle17}
{$articleTitle17|truncate}
{$articleTitle17|truncate:30}
{$articleTitle17|truncate:30:""}
{$articleTitle17|truncate:30:"---"}
{$articleTitle17|truncate:30:"":true}
{$articleTitle17|truncate:30:"...":true}
{$articleTitle17|truncate:30:'..':true:true}<br/><br/>


{$articleTitle18}
Germans use &quot;&Uuml;mlauts&quot; and pay in &euro;uro

{$articleTitle18|unescape:"html"}
Germans use "&Uuml;mlauts" and pay in &euro;uro

{$articleTitle18|unescape:"htmlall"}
Germans use "Ümlauts" and pay in €uro<br/><br/>

{$articleTitle19}
{$articleTitle19|upper}


<br/><br/>

{$articleTitle20}

{$articleTitle20|wordwrap:30}

{$articleTitle20|wordwrap:20}

{$articleTitle20|wordwrap:30:"<br />\n"}

{$articleTitle20|wordwrap:26:"\n":true}<br/><br/>

{$articleTitle21}
{$articleTitle21|upper|spacify}
{$articleTitle21|lower|spacify|truncate}
{$articleTitle21|lower|truncate:30|spacify}
{$articleTitle21|lower|spacify|truncate:30:". . ."}<br/><br/>


{* define the function *}
{function name=menu level=0}
  <ul class="level{$level}">
  {foreach $data as $entry}
    {if is_array($entry)}
      <li>{$entry@key}</li>
      {call name=menu data=$entry level=$level+1}
    {else}
      <li>{$entry}</li>
    {/if}
  {/foreach}
  </ul>
{/function}

{* create an array to demonstrate *}
{$menu = ['item1','item2','item3' => ['item3-1','item3-2','item3-3' =>
['item3-3-1','item3-3-2']],'item4']}

{* run the array through the function *}
{call name=menu data=$menu}
{call menu data=$menu} {* short-hand *}<br/><br/>

<ul>
{for $foo=1 to 3}
    <li>{$foo}</li>
{/for}
</ul><br/>


<ul>
{for $foo=3 to $to max=3}
    <li>{$foo}</li>
{/for}
</ul>

<br/>


<ul>
{for $foo=$start to $to}
    <li>{$foo}</li>
{forelse}
  no iteration
{/for}
</ul>

<ul>
{foreach $myColors as $color}
    <li>{$color}</li>
{/foreach}
</ul>


<ul>
{foreach $myPeople as $value}
   <li>{$value@key}: {$value}</li>
{/foreach}
</ul>


{* key always available as a property *}
{foreach $contacts as $contact}
  {foreach $contact as $value}
    {$value@key}: {$value}
  {/foreach}
{/foreach}

{* accessing key the PHP syntax alternate *}
{foreach $contacts as $contact}
  {foreach $contact as $key => $value}
    {$key}: {$value}
  {/foreach}
{/foreach}


<br/><br/>



  {$data = [1,2,3,4,5]}
  {foreach $data as $value}
    {if $value == 3}
      {* skip this iteration *}
      {continue}
    {/if}
    {$value}
  {/foreach}
  {*
    prints: 1 2 4 5
  *}
<br/><br/>




{**** Example One ****}
{html_table loop=$data}

<table border="1">
<tbody>
<tr><td>1</td><td>2</td><td>3</td></tr>
<tr><td>4</td><td>5</td><td>6</td></tr>
<tr><td>7</td><td>8</td><td>9</td></tr>
</tbody>
</table>

<select name="customer_id" size="{$cust_names|@count}">
   {html_options values=$cust_ids output=$cust_names selected=$customer_id}
</select>
<br/><br/>
   {textformat wrap=40}

   This is foo.
   This is foo.
   This is foo.
   This is foo.
   This is foo.
   This is foo.

   This is bar.

   bar foo bar foo     foo.
   bar foo bar foo     foo.
   bar foo bar foo     foo.
   bar foo bar foo     foo.
   bar foo bar foo     foo.
   bar foo bar foo     foo.
   bar foo bar foo     foo.

   {/textformat}

   <br/><br/>
   {html_select_date}
   <img src="pumpkin.jpg" alt="" width="44" height="68" />


 </body>
</html>