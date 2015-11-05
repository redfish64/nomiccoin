<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1443874855599" ID="ID_742251330" MODIFIED="1444694480094" TEXT="Voting Coin">
<node CREATED="1444028673000" ID="ID_652303042" MODIFIED="1445910359530" POSITION="right" TEXT="closed questions">
<node CREATED="1444085352876" ID="ID_1218864503" MODIFIED="1444199799258" TEXT="XX % votes necessary">
<node CREATED="1444028881917" ID="ID_463104325" MODIFIED="1444298105738" TEXT="determined by sampling any sort of transaction over 2 weeks prior?">
<node CREATED="1444200267510" ID="ID_1458619998" MODIFIED="1444522611176" TEXT="Maybe automatic &quot;0&quot; vote every 2 weeks for online nodes? (free txn)">
<node CREATED="1444522606201" ID="ID_276846222" MODIFIED="1444522608699" TEXT="FUTURE">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1444200591246" ID="ID_995287969" MODIFIED="1444298112978" TEXT="Maybe just voters?">
<node CREATED="1444200463454" HGAP="7" ID="ID_900547189" MODIFIED="1444200644946" TEXT="There&apos;s a difference between being on the network and politicially involved" VSHIFT="-1"/>
<node CREATED="1444298114051" ID="ID_1289031456" MODIFIED="1444298226683" TEXT="But then we have a problem if the minter can alter the election signficiantly by ignoring votes">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      If we take any action at all, then the minter would basically be not helping out the network at all. If they were successful enough to alter voting, they'd also be sucessful enough to destroy the whole coin. Since they are minting with owned coins, it would be in their best interest not to do this.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1444982168778" ID="ID_1730871817" MODIFIED="1444982197324" TEXT="Just voters.. voters can &quot;register to vote&quot; in order to vote nea on everything">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1444982199314" ID="ID_1646426610" MODIFIED="1444982209430" TEXT="We have to make sure people are involved in the political process"/>
</node>
</node>
<node COLOR="#009999" CREATED="1444085388773" FOLDED="true" ID="ID_1927218558" MODIFIED="1444622881871" TEXT="vote % target adjusts for 1 poll per week?">
<node CREATED="1444199366814" ID="ID_825508835" MODIFIED="1444199368562" TEXT="FUTURE"/>
</node>
<node CREATED="1444028788767" ID="ID_1601664234" MODIFIED="1444199393130" TEXT="51% vote necessary to win"/>
</node>
<node CREATED="1444028966750" ID="ID_1742226302" MODIFIED="1444622829771" TEXT="most votes gets to run script">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Script is run by someone creating a txn that matches the txn_hash that won the initial vote
    </p>
  </body>
</html></richcontent>
<node COLOR="#009999" CREATED="1444534942463" ID="ID_128446323" MODIFIED="1444622884961" TEXT="Person running script pays a fee to the minter.. Minter doesn&apos;t necessarily have to process all vote result script. Minter gets fee regardless if vote passes or not?">
<node CREATED="1444534999262" ID="ID_1857219212" MODIFIED="1444560870401" TEXT="Is paying the minter regardless of whether script passes or not feasible?"/>
<node CREATED="1444560824655" ID="ID_1676109916" MODIFIED="1444560871614" TEXT="I don&apos;t think an extra fee is necessary. Given that we don&apos;t encrypt the vote, votes can be sorted, can be totaled within the block, etc. It will end up fast enough">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1444029046621" ID="ID_1530107778" MODIFIED="1444560900510" TEXT="Polls can take place at any time.">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      If it gets 51% of the vote, then it runs.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1444029105484" ID="ID_1289068667" MODIFIED="1444029196194" TEXT="vote script have special powers">
<node CREATED="1444029200893" ID="ID_1220322872" MODIFIED="1444029204825" TEXT="Spend pool money">
<node CREATED="1444623457345" ID="ID_255579966" MODIFIED="1444623626117" TEXT="This is done by invoking the special pool script"/>
<node CREATED="1444623626697" ID="ID_617136135" MODIFIED="1444624499501" TEXT="The pool script contains: OP_POLL_UNLOCKED">
<node CREATED="1444624050866" ID="ID_983563016" MODIFIED="1444624100717" TEXT="The txn needs to supply an input script which contains OP_UNLOCK_POLL &lt;deadline&gt;"/>
</node>
<node CREATED="1444624114472" ID="ID_196013488" MODIFIED="1444624121277" TEXT="Unlocking it will release all funds to the txn"/>
</node>
<node CREATED="1444029209133" ID="ID_1648724080" MODIFIED="1444029223040" TEXT="Request/enforce upgrade of official client">
<node CREATED="1444624519865" ID="ID_918380935" MODIFIED="1444624561229" TEXT="Contains OP_POLL_UPGRADE &lt;hash of source of new code&gt; &lt;block where upgrade is enforced&gt;"/>
</node>
<node CREATED="1444029232741" ID="ID_1234189419" MODIFIED="1444029243768" TEXT="Display message in client">
<node CREATED="1444029581853" ID="ID_1016316310" MODIFIED="1444085474929" TEXT="Whats the point if so much participation is necessary?">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The point is that an idea can be floated, such as &quot;Do you support increasing the interest rate?&quot; without actually creating the code necessary to do it, not knowing whether it will succeed or not.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1444624136769" ID="ID_752836638" MODIFIED="1444624164261" TEXT="Contains OP_POLL_DISPLAY &lt;message&gt; &lt;block where message disappears&gt;"/>
</node>
</node>
<node CREATED="1444085569981" ID="ID_1838405731" MODIFIED="1444085574369" TEXT="UI">
<node CREATED="1444085481373" ID="ID_320685966" MODIFIED="1444085500225" TEXT="To vote, paste a base64 blob">
<node CREATED="1444085504669" ID="ID_1083007587" MODIFIED="1444085512728" TEXT="Blob contains">
<node CREATED="1444085526829" ID="ID_1068826274" MODIFIED="1444085538617" TEXT="Block deadline"/>
<node CREATED="1444085540213" ID="ID_975782327" MODIFIED="1444624588373" TEXT="txn to run">
<node CREATED="1444624597648" ID="ID_951448902" MODIFIED="1444625728588" TEXT="We need this to be a txn rather than a script because a script can&apos;t specify how much of the pool to spend. The pool address is the input address"/>
</node>
</node>
</node>
<node CREATED="1444085580861" ID="ID_855582610" MODIFIED="1444098480430" TEXT="Shown to user ">
<node CREATED="1444085612516" ID="ID_1517133175" MODIFIED="1444085617289" TEXT="Vote deadline"/>
<node CREATED="1444085621877" ID="ID_1762544535" MODIFIED="1444625744012" TEXT="Human readable txn"/>
<node CREATED="1444085627941" ID="ID_277436710" MODIFIED="1444085641649" TEXT="Pasted blob"/>
<node CREATED="1444085671453" ID="ID_315919070" MODIFIED="1444561035714" TEXT="Current poll votes">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The number of coins that already voted for poll
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1444094619726" ID="ID_591790047" MODIFIED="1444298477325" TEXT="Votes needed to win (currently)">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Total 100% of voting population divided by 2
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1444098429559" ID="ID_1334600508" MODIFIED="1444098539057" TEXT="Invalid (non standard) scripts are rejected"/>
</node>
<node CREATED="1444085648685" ID="ID_1166122250" MODIFIED="1444298507078" TEXT="User votes Yea or Nea ">
<node CREATED="1444088465477" ID="ID_1690598974" MODIFIED="1444626011277" TEXT="Nea is the same as transferring the money to yourself, and only really helps you by registrating you to vote"/>
</node>
<node CREATED="1444298519450" ID="ID_604913285" MODIFIED="1444298531982" TEXT="Explained that moving coins will negate vote, but vote may be recast"/>
<node CREATED="1444298544299" ID="ID_763886705" MODIFIED="1444298553766" TEXT="Explained that staking will not negate vote"/>
<node CREATED="1444561078736" ID="ID_1972808819" MODIFIED="1444561090107" TEXT="What about DoS by voting too many times?">
<node CREATED="1444625790146" ID="ID_1820751432" MODIFIED="1444625791758" TEXT="Fees"/>
</node>
</node>
<node CREATED="1444088496301" ID="ID_1120039614" MODIFIED="1444088502960" TEXT="Implementation">
<node CREATED="1444028682661" ID="ID_809883464" MODIFIED="1444625924725" TEXT="to vote: OP_VOTE txn_hash deadline">
<node CREATED="1444300778331" ID="ID_1816757668" MODIFIED="1444300790958" TEXT="If coins are spent before deadline, vote is invalid"/>
</node>
<node CREATED="1444096167767" ID="ID_1913606226" MODIFIED="1444098517536" TEXT="Workflow">
<node CREATED="1444300822002" ID="ID_73838141" MODIFIED="1444626038588" TEXT="Interested Party creates an poll txn">
<node CREATED="1444469693281" ID="ID_357207552" MODIFIED="1444626448738" TEXT="Create through client?">
<node CREATED="1444626437762" ID="ID_611783520" MODIFIED="1444626445501" TEXT="cmdline at first I think"/>
</node>
<node CREATED="1444626045433" ID="ID_731986072" MODIFIED="1444626073070" TEXT="A vote txn has an input of the spending pool if pool funds are to be used"/>
<node CREATED="1444626073962" ID="ID_1782995806" MODIFIED="1444626086254" TEXT="It has one or more output scripts to send the pool fund money"/>
<node CREATED="1444626086786" ID="ID_1973347641" MODIFIED="1444626114301" TEXT="Output scripts can also contain display message and upgrade client commands"/>
</node>
<node CREATED="1444300848915" ID="ID_994016205" MODIFIED="1444626366326" TEXT="IP publishes txn and deadline in a base64 blob"/>
<node CREATED="1444300871403" ID="ID_239674975" MODIFIED="1444300878990" TEXT="Voters paste blob into client"/>
<node CREATED="1444096177870" ID="ID_1443854479" MODIFIED="1444300890671" TEXT="Voters create vote txns"/>
<node CREATED="1444300943011" ID="ID_389973440" MODIFIED="1444300950430" TEXT="If IP loses, nothing happens"/>
<node CREATED="1444098520237" ID="ID_545958826" MODIFIED="1444098532025" TEXT="Voting result scripts are standardized">
<node CREATED="1444626410802" ID="ID_1908681065" MODIFIED="1444626412734" TEXT="FUTURE"/>
</node>
</node>
<node CREATED="1444197008382" ID="ID_948753356" MODIFIED="1444197010562" TEXT="Pool">
<node COLOR="#009999" CREATED="1444197025038" ID="ID_1616848283" MODIFIED="1444626465210" TEXT="Pool amount stored in block?">
<node CREATED="1444197061926" ID="ID_126498864" MODIFIED="1444626475734" TEXT="no, a script"/>
</node>
<node CREATED="1444199967310" ID="ID_186340188" MODIFIED="1444199982810" TEXT="How does the pool script get introduced?">
<node CREATED="1444199984014" ID="ID_1167793686" MODIFIED="1444199989362" TEXT="Genesis Block"/>
</node>
<node CREATED="1444301210563" ID="ID_376245874" MODIFIED="1444626501042" TEXT="How do the clients know what the pool address is?">
<node CREATED="1444626502650" ID="ID_1711531087" MODIFIED="1444626507222" TEXT="It&apos;s hardcoded"/>
</node>
<node CREATED="1444199997638" ID="ID_1718091863" LINK="#ID_617136135" MODIFIED="1444626543291" TEXT="What is the script contents?"/>
</node>
<node CREATED="1444632235941" ID="ID_1356695553" MODIFIED="1444632252168" TEXT="How to give nomiccoin out in genesis?">
<node CREATED="1444632253493" ID="ID_1440547071" MODIFIED="1444632266320" TEXT="Read public keys from text file?"/>
<node CREATED="1444632274709" ID="ID_48108268" MODIFIED="1444632289905" TEXT="How to generate public/private keys?"/>
</node>
</node>
<node CREATED="1444094371949" ID="ID_500004707" MODIFIED="1444095258121" TEXT="Upgrade client">
<node CREATED="1444094437782" ID="ID_1736399655" MODIFIED="1444095780943" TEXT="Multiple OS, 32 vs 64 bit, multiple builds, which is correct?">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_1736399655" ENDARROW="Default" ENDINCLINATION="163;0;" ID="Arrow_ID_1098582104" SOURCE="ID_1484430559" STARTARROW="None" STARTINCLINATION="163;0;"/>
<node CREATED="1444094466797" ID="ID_1945090005" MODIFIED="1444095661881" TEXT="How will user know the build was done properly?">
<node CREATED="1444094700750" ID="ID_160702373" MODIFIED="1444094708018" TEXT="Integrate compiler into coin?">
<node CREATED="1444095717647" ID="ID_592496620" MODIFIED="1444095720660" TEXT="FUTURE"/>
</node>
<node CREATED="1444095665587" ID="ID_134526728" MODIFIED="1444095705654" TEXT="Same way they &quot;know&quot; builds are correct for their other software today. Trust as determined by them"/>
</node>
</node>
<node CREATED="1444094523661" ID="ID_1505159766" MODIFIED="1444094940006" TEXT="Changing a constant, such as % earned require a build?">
<node CREATED="1444095789415" ID="ID_1027911593" MODIFIED="1444095792803" TEXT="For now, yes"/>
</node>
<node CREATED="1444094917679" ID="ID_1484430559" MODIFIED="1444095780943" TEXT="Build contains md5sum of source">
<arrowlink DESTINATION="ID_1736399655" ENDARROW="Default" ENDINCLINATION="163;0;" ID="Arrow_ID_1098582104" STARTARROW="None" STARTINCLINATION="163;0;"/>
</node>
</node>
<node CREATED="1444098138742" ID="ID_1447993648" MODIFIED="1444098173741" TEXT="Checkpoints?">
<node CREATED="1444098150726" ID="ID_1671173630" MODIFIED="1444811546744" TEXT="No checkpoints">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1444098258126" ID="ID_1779384701" MODIFIED="1444098271777" TEXT="Multiple checkpoint senders?">
<node CREATED="1444098276285" ID="ID_688940101" MODIFIED="1444098277673" TEXT="FUTURE"/>
<node CREATED="1444098291453" ID="ID_1040678965" MODIFIED="1444098306001" TEXT="Voters can vote people in and out of checkpoint responsibility"/>
</node>
</node>
<node CREATED="1444098181214" ID="ID_1285501141" MODIFIED="1444098187689" TEXT="Derive source code from?">
<node CREATED="1444098190773" ID="ID_544426887" MODIFIED="1444098200089" TEXT="Neucoin with Peerunity integration?">
<node CREATED="1444098203965" ID="ID_84426059" MODIFIED="1444098215146" TEXT="We can try this if it doesn&apos;t look too hairy. "/>
<node CREATED="1444098221550" ID="ID_569457897" MODIFIED="1444098236401" TEXT="Get staking screen from Peerunity"/>
</node>
<node CREATED="1444098604949" ID="ID_1505398898" MODIFIED="1444098610329" TEXT="Start from Neucoin"/>
</node>
<node CREATED="1444198543806" ID="ID_1881359814" MODIFIED="1444198831094" TEXT="Should we cache things in the block?">
<node CREATED="1444626681498" ID="ID_606314004" MODIFIED="1444626691678" TEXT="In general, caching should be done by the client outside of the block"/>
<node CREATED="1444198556270" ID="ID_533510654" MODIFIED="1444198831862" TEXT="Pool value?">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1444198882942" ID="ID_1093947240" MODIFIED="1444198908130" TEXT="No, because the pool value can be calculated easily, and better to be some p2sh script"/>
</node>
<node CREATED="1444198569374" ID="ID_65715704" MODIFIED="1444198829302" TEXT="Vote results?">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1444198833631" ID="ID_748874038" MODIFIED="1444198859522" TEXT="No, because calculating vote results is a lot like checking for double spends"/>
</node>
<node CREATED="1444198593134" ID="ID_193221521" MODIFIED="1444198605594" TEXT="This stuff is rather complex to calcuate, especially vote results"/>
<node CREATED="1444198643078" ID="ID_1178721098" MODIFIED="1444198723106" TEXT="Having conflicting data is rather complex in itself, though"/>
<node CREATED="1444198777878" ID="ID_1700502196" MODIFIED="1444198792586" TEXT="Also it precludes us from later having special scripts for special pools"/>
<node CREATED="1444199000302" ID="ID_1343230867" MODIFIED="1444199006114" TEXT="Participation %?">
<node CREATED="1444199106246" ID="ID_1985381469" MODIFIED="1444298758990" TEXT="No, when using the vote results, the interested party will go through, looking for votes, and UTXO&apos;s in the last 2 weeks"/>
<node CREATED="1444298776939" ID="ID_573985658" MODIFIED="1444298796310" TEXT="Although a somewhat intensive process, vote passing should happen rarely enough that it won&apos;t hurt the network"/>
</node>
</node>
<node CREATED="1444225241249" ID="ID_1518178913" MODIFIED="1444982054802" TEXT="stake and vote interplay">
<node CREATED="1444225249158" ID="ID_903706015" MODIFIED="1444287839466" TEXT="if everyone is voting, who will stake?">
<node CREATED="1444225266323" ID="ID_1325700328" MODIFIED="1444287838529" TEXT="Can we vote and stake at the same time?">
<node CREATED="1444287833697" ID="ID_936216574" MODIFIED="1444287835133" TEXT="Yes"/>
</node>
<node CREATED="1444287816034" ID="ID_1048366658" MODIFIED="1444287829157" TEXT="Staking will be allowed in parallel to voting">
<node CREATED="1444298822690" ID="ID_1866135247" MODIFIED="1444298835646" TEXT="Otherwise no one will stake, and we get attack opportunity"/>
</node>
</node>
<node CREATED="1444262768922" ID="ID_821792826" MODIFIED="1444287784913" TEXT="Should we have a separate &quot;vote&quot; object, rather than coerce txn?">
<node CREATED="1444287786937" ID="ID_1290894951" MODIFIED="1444287970420" TEXT="Yes, because we need to allow staking at the same time as voting">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      And without allowing staking and voting at the same time, we open ourselves up to a double spend attack.
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#cc3300" CREATED="1444563834193" ID="ID_1628508922" MODIFIED="1444563863424" TEXT="What if we just revoted everytime someone staked?">
<node CREATED="1444563866096" ID="ID_1700826029" MODIFIED="1444563875227" TEXT="Then we wouldn&apos;t need a separate &quot;vote&quot; object"/>
</node>
</node>
</node>
<node COLOR="#009999" CREATED="1444290072466" ID="ID_1300786329" MODIFIED="1444811523975" TEXT="Minimum time for vote?">
<node CREATED="1444463373846" ID="ID_1230309887" MODIFIED="1444989284357" TEXT="I don&apos;t think a minimum time is necessary. If a user wants to attack the network with votes somehow, a minimum time won&apos;t stop them">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1444463435087" ID="ID_1481244043" MODIFIED="1444463457954" TEXT="They can always hide the election. An election puts nothing concrete into the chain"/>
</node>
</node>
<node CREATED="1444290122186" FOLDED="true" ID="ID_296047853" MODIFIED="1444630909272" TEXT="Voter registration">
<node CREATED="1444290127178" ID="ID_172829074" MODIFIED="1444290134510" TEXT="Registration is automatic when voting"/>
<node CREATED="1444290136850" ID="ID_1100154611" MODIFIED="1444290141742" TEXT="Lasts for 2 weeks"/>
<node CREATED="1444290146610" ID="ID_986076541" MODIFIED="1444290154742" TEXT="Used to determine if vote passes"/>
<node COLOR="#009999" CREATED="1444290164154" ID="ID_618849242" MODIFIED="1444626797082" TEXT="Should we enforce only registered voters can vote?">
<node CREATED="1444626799050" ID="ID_1227874174" MODIFIED="1444626806956" TEXT="No">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1444290181082" ID="ID_811022490" MODIFIED="1444626745890" TEXT="What if someone doesn&apos;t vote for a long time, then suddenly votes?">
<node CREATED="1444626746977" ID="ID_1509377275" MODIFIED="1444626768054" TEXT="Doing so won&apos;t make a vote more likely to pass, so I don&apos;t see a problem with this"/>
</node>
</node>
</node>
<node COLOR="#009999" CREATED="1444292585850" FOLDED="true" ID="ID_1347811899" MODIFIED="1444630906657" TEXT="Should votes carry over across txns?">
<node CREATED="1444292620194" ID="ID_1197106708" MODIFIED="1444292649270" TEXT="If someone stakes right before the vote, and we don&apos;t allow this, then they may miss their chance to vote"/>
<node CREATED="1444292653259" ID="ID_1599193448" MODIFIED="1444292733190" TEXT="If we allow this, then someone can vote with coins already spent"/>
<node CREATED="1444292750418" FOLDED="true" ID="ID_612860248" MODIFIED="1444563675265" TEXT="No, we don&apos;t allow votes to carry over, but when staking, the prior vote automatically gets recreated">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1444296777738" ID="ID_427679434" MODIFIED="1444296791734" TEXT="This prevents the staker from losing their vote"/>
</node>
</node>
<node COLOR="#009999" CREATED="1444294380298" FOLDED="true" ID="ID_1725020290" MODIFIED="1444811404300" TEXT="Hidden vote?">
<node CREATED="1444294417778" FOLDED="true" ID="ID_1126954970" MODIFIED="1444563646488" TEXT="Implementation">
<node CREATED="1444294388034" ID="ID_912629385" MODIFIED="1444300657200" TEXT="Voting party signs their vote, and encrypts it with a public key given by the IP(Interested Party)"/>
<node CREATED="1444294441450" ID="ID_951897852" MODIFIED="1444300689430" TEXT="Interested Party decrypts the votes, looking for votes to him"/>
<node CREATED="1444294466738" ID="ID_958847908" MODIFIED="1444294488774" TEXT="If votes are over 50% of registered voters, interested party can run associated script"/>
</node>
<node CREATED="1444294548083" ID="ID_371424785" MODIFIED="1444294565599" TEXT="Would prevent problems with peers not passing votes along they did not like"/>
<node CREATED="1444295168186" FOLDED="true" ID="ID_80381427" MODIFIED="1444563646489" TEXT="With hidden vote, is there any incentive to pass anyones vote along?">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      There is no penalty for not storing votes in the block chain. The less votes stored by a minter (besides his own), the more powerful the minter becomes.
    </p>
    <p>
      So rationally, then, only minters would have votes that count
    </p>
  </body>
</html></richcontent>
<node CREATED="1444296577530" FOLDED="true" ID="ID_1985208417" MODIFIED="1444563645777" TEXT="1. Any action at all is considered registration">
<node CREATED="1444296600522" ID="ID_886469703" MODIFIED="1444296608998" TEXT="Creating a txn"/>
<node CREATED="1444296610251" ID="ID_1259208063" MODIFIED="1444296639062" TEXT="Any vote, including &quot;0&quot; vote"/>
<node CREATED="1444296623442" ID="ID_1590030168" MODIFIED="1444296625494" TEXT="staking"/>
</node>
<node CREATED="1444296642154" ID="ID_369638808" MODIFIED="1444296660262" TEXT="2. Staker wants vote to win"/>
<node CREATED="1444296665946" ID="ID_561901700" MODIFIED="1444296709414" TEXT="In this case, without any other votes, the staker cannot win, so he must pass votes onward"/>
</node>
<node CREATED="1444297820762" FOLDED="true" ID="ID_1248112322" MODIFIED="1444563646489" TEXT="Would prevent problems with forking. We can hold back the results of the election until a certain number of blocks have passed">
<node CREATED="1444532157598" ID="ID_1372814931" MODIFIED="1444532197857" TEXT="A situation could develop where minters only include votes that they agree with, and decide to fork the chain to include only blocks they agree with"/>
</node>
<node CREATED="1444533090255" FOLDED="true" ID="ID_78522400" MODIFIED="1444563646493" TEXT="How do we reveal the votes?">
<node CREATED="1444533128110" ID="ID_1864477436" MODIFIED="1444533151361" TEXT="If we create one transaction to do it, it will be too big"/>
<node CREATED="1444533151781" FOLDED="true" ID="ID_1129837897" MODIFIED="1444563641026" TEXT="If we leave them encrypted and provide a key, it will take too long to decrypt">
<node CREATED="1444533168525" ID="ID_217423392" MODIFIED="1444533176258" TEXT="Also DoS attack"/>
</node>
<node CREATED="1444533239359" ID="ID_1435636590" MODIFIED="1444533303713" TEXT="If the voters are to do it themselves, the minter&apos;s can refuse the transactions and fork"/>
<node CREATED="1444534412150" FOLDED="true" ID="ID_770347819" LINK="#ID_1167114248" MODIFIED="1444563641027" TEXT="But does the forking attack make sense?">
<node CREATED="1444534430741" ID="ID_1174505571" MODIFIED="1444534454033" TEXT="If the minters, who are representive of the general public, own less than 50% of the coin, any fork they try to do will fail"/>
</node>
</node>
<node CREATED="1444299351066" FOLDED="true" ID="ID_838470922" MODIFIED="1444563646494" TEXT="There could be millions of voters, How can we suppose the network will handle a transaction with millions of inputs (one for each nonce)?">
<node CREATED="1444300298467" FOLDED="true" ID="ID_1374935839" MODIFIED="1444563645786" TEXT="Could the voters encrypt their vote with the Interested Party&apos;s public key?">
<node CREATED="1444300424859" ID="ID_84042561" MODIFIED="1444300449670" TEXT="Yes, then to unlock them, the IP must post their private key into the block chain"/>
<node CREATED="1444300454971" ID="ID_1766141428" MODIFIED="1444300492863" TEXT="This reveals all the votes for the Interested Party. Then the votes can be verified and he can be selected winner"/>
<node CREATED="1444300504898" ID="ID_1836660612" MODIFIED="1444300538838" TEXT="A txn with the winning script as an input is created"/>
<node CREATED="1444300540243" ID="ID_1358600653" MODIFIED="1444300595926" TEXT="The next block minter just verifies that enough votes decrypt to the winning script hash and therefore verifies the transaction"/>
</node>
</node>
<node CREATED="1444534575789" ID="ID_1167114248" MODIFIED="1444534680414" TEXT="No, let not include this. First, its arguable whether its a problem, since as long as 50% of the minters agree with the vote, which they should (as being members of the general public), then it should pass. Second, there seems to be no good way of revealing the votes all at once without either a huge transaction, or a huge amount of processing to unlock the votes">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1444299633275" ID="ID_628035443" MODIFIED="1444463163094" TEXT="Why store results in blockchain at all before deadline?">
<node CREATED="1444299654874" ID="ID_134830972" MODIFIED="1444299671166" TEXT="Interested Party can ask for signatures and UTXO&apos;s"/>
<node CREATED="1444299672314" ID="ID_714261308" LINK="#ID_73838141" MODIFIED="1444626876730" TEXT="Once enough are received, Interested Party can then place something on the block chain, but what?"/>
<node CREATED="1444563457041" ID="ID_1504243141" MODIFIED="1444563476024" TEXT="Too many voters. They all can&apos;t vote at once">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1444348643078" ID="ID_1769946597" MODIFIED="1444460308002" TEXT="Network security">
<node CREATED="1444348648094" ID="ID_111834533" MODIFIED="1444626889360" TEXT="Do we need some sort of mining to bootstrap? 20 minting peers, only mintable every 1.6 days means blocks be signed for several hours possibly">
<node CREATED="1444461424734" ID="ID_680951259" MODIFIED="1444461670665" TEXT="Without miners this will leave gaps when few minters are creating blocks.">
<node CREATED="1444461479813" ID="ID_1514978022" MODIFIED="1444461520953" TEXT="An attacker could conceivably create more blocks during that timeframe having a better block height in secret">
<node CREATED="1444461530597" ID="ID_1868159341" MODIFIED="1444461537633" TEXT="Using millions of UTXO&apos;s"/>
</node>
<node CREATED="1444461577902" ID="ID_1986498813" MODIFIED="1444461616226" TEXT="If miners are working in parallel as minters, then miners could make up the slack. Attackers wouldn&apos;t have the hash power of the main chain, conceivably, making it impossible for them to perform the attack."/>
</node>
<node CREATED="1444626908290" ID="ID_295116166" MODIFIED="1444626921837" TEXT="Probably a fixed period for mining should be good enough">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1444461672229" ID="ID_1824377267" MODIFIED="1444626924061" TEXT="Miners should be employed when the target hash for minters indiciates that few minters are participating">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1444461708006" ID="ID_922621987" MODIFIED="1444461715850" TEXT="We can work this out in the code"/>
<node CREATED="1444626928555" ID="ID_542858137" MODIFIED="1444626930334" TEXT="FUTURE"/>
</node>
</node>
<node CREATED="1444348691142" ID="ID_1724572450" MODIFIED="1444626935166" TEXT="What about UTXO splitting that SunnyKing put in?">
<node CREATED="1444376152526" ID="ID_22187907" MODIFIED="1444461834421" TEXT="Should we enforce it? Verify that it occurs?">
<node CREATED="1444461747038" ID="ID_1733549313" MODIFIED="1444461767010" TEXT="Some UTXO splitting is a good idea to prevent gaps"/>
<node CREATED="1444461784302" ID="ID_1218767910" MODIFIED="1444461804762" TEXT="It actually makes it easier for the user to spend a certain percentage of funds without losing a good deal of their unclaimed rewards"/>
<node CREATED="1444461805278" ID="ID_1693862243" MODIFIED="1444461855079" TEXT="So make it optional. If people don&apos;t use it, then miners should take up the slack">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1444348755846" ID="ID_1904514118" MODIFIED="1444626950096" TEXT="Can we have mining make up for lack of security due to a low number of peers?">
<node CREATED="1444461849445" ID="ID_535701644" MODIFIED="1444461853959" TEXT="Yes">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1444563348592" ID="ID_1705477654" MODIFIED="1444563363804" TEXT="We can decide on this after we know how many people are getting involved"/>
</node>
<node CREATED="1444348785006" ID="ID_1474023147" MODIFIED="1444626956811" TEXT="What kind of attacks can occur if most minters are in the 1.6 day holding period?">
<node CREATED="1444461865062" ID="ID_18581600" MODIFIED="1444461872986" TEXT="Double spend could occur">
<node CREATED="1444461881861" ID="ID_1712123511" MODIFIED="1444461929314" TEXT="Attacker could create more blocks then the rest of the network during the slow down period (in the past. remember that it doesn&apos;t matter how much horse power the attacker has if they can create a limited number hashes per second due to the search space)"/>
</node>
</node>
<node CREATED="1444360450994" ID="ID_1483928954" MODIFIED="1444626959429" TEXT="From neucoin wp: euCoin is considering is to modify the client so that it does not accept reorganizations deeper than h hours worth of blocks. Good idea?">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      From neucoin WP:27
    </p>
    <p>
      The downside of this defense is that new nodes would have to rely on trusted nodes from whom they
    </p>
    <p>
      download the block chain. The NeuCoin Code Foundation, which is controlled by NeuCoin holders, would at
    </p>
    <p>
      least be an excellent entity to fulfill this role
    </p>
  </body>
</html></richcontent>
<node CREATED="1444461959909" ID="ID_928313126" MODIFIED="1444461969834" TEXT="I don&apos;t think it&apos;s necessary.">
<node CREATED="1444461990894" ID="ID_1616087864" MODIFIED="1444462013027" TEXT="The checkpoint inside the release and manually setting a checkpoint should be good enough"/>
<node CREATED="1444462028079" ID="ID_198301388" MODIFIED="1444462166970" TEXT="It has some weird implications, that I don&apos;t completely understand. If someone got stuck on an attacker&apos;s fork..."/>
</node>
<node CREATED="1444462174381" ID="ID_148082539" MODIFIED="1444462176625" TEXT="FUTURE"/>
</node>
<node CREATED="1444361891024" ID="ID_1632617530" MODIFIED="1444626963550" TEXT="Coldminting makes doublespend possible if attacker can get enough coldminting addresses">
<node CREATED="1444362024040" ID="ID_1255670610" MODIFIED="1444462592686" TEXT="Remove? Alter?"/>
<node CREATED="1444462193350" ID="ID_1998909286" MODIFIED="1444462230489" TEXT="Neucoin put this in all by themselves, by just cutting pasting someone elses code. Nothing in whitepaper, done by their weak team member, arcanis. I think its dangerous"/>
<node CREATED="1444462515302" ID="ID_1865710632" MODIFIED="1444462533385" TEXT="We may be able to do this, if we enforce a password... at least that would be a start"/>
<node CREATED="1444462958879" ID="ID_1973536935" MODIFIED="1444462998562" TEXT="Peerunity / Peercoin just disables certain commands, such as sendmoney, with a boolean flag"/>
<node CREATED="1444462568998" ID="ID_1333474474" MODIFIED="1444463052746" TEXT="Copy Peerunity/ Peercoin method">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1444374471641" ID="ID_216371137" MODIFIED="1444626970423" TEXT="When you vote, could you also be voting on a block chain, replacing checkpointing somehow?">
<node CREATED="1444375715692" ID="ID_137756767" MODIFIED="1444390335615" TEXT="Suppose that the election creator has to specify a checkpoint along with the other election data">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Since putting the wrong checkpoint along with the polling data would prevent the vote from suceeding, the creator of the election is highly persuaded to use what he considers is the right one.
    </p>
  </body>
</html></richcontent>
<node CREATED="1444375881480" ID="ID_1430985626" MODIFIED="1444375917453" TEXT="Anyone that has not signed up for a time and is voting on an issue will immediately have a valid checkpoint"/>
<node CREATED="1444375918224" ID="ID_1279753225" MODIFIED="1444375984670" TEXT="If the checkpoint is invalid, anyone who has already signed in will distrust the checkpoint, but as a consequence, will not be able to vote for the proposal."/>
<node CREATED="1444375995987" ID="ID_50757518" MODIFIED="1444460790221" TEXT="Anyone who has signed in can point to the checkpoint, and declare it invalid to warn the others">
<node CREATED="1444384935520" ID="ID_1780366488" MODIFIED="1444460789285" TEXT="Having anonymous people warn of invalid checkpoints is a bad idea, right?"/>
</node>
<node CREATED="1444376091661" ID="ID_1859851782" MODIFIED="1444460765895" TEXT="There is a core concept here... the real world people can figure out authority better than in a network. What is that concept?"/>
<node CREATED="1444390345416" ID="ID_1114843648" MODIFIED="1444390373308" TEXT="At least it would enforce putting checkpoints on the web at various places"/>
<node CREATED="1444390391505" ID="ID_561665111" MODIFIED="1444390423429" TEXT="When a vote passes, the clients could use the checkpoint as a basis"/>
<node CREATED="1444392400569" ID="ID_866707598" MODIFIED="1444392579352" TEXT="No, because we can&apos;t tell a serious item, like spending money, vs a non serious item, like showing a message. Heck, maybe even giving to charity would be a non serious item, or at least less serious then paying someone to upgrade the client, etc.">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1444390436040" ID="ID_1618863175" MODIFIED="1444390446629" TEXT="What about just checkpointing when a vote passes?">
<node CREATED="1444390449729" ID="ID_508466981" MODIFIED="1444390474188" TEXT="Probably not a good idea"/>
<node CREATED="1444390476000" ID="ID_710857214" MODIFIED="1444390494813" TEXT="Low hanging fruit for attacker. Reach vote passing, and bam! locked in"/>
</node>
<node CREATED="1444391624473" ID="ID_712943461" MODIFIED="1444391654085" TEXT="The idea is that the vote creator is choosing a particular blockchain that they believe is correct">
<node CREATED="1444391656769" ID="ID_713836386" MODIFIED="1444391709037" TEXT="They do so to get the most chance of winning the election"/>
<node CREATED="1444391710169" ID="ID_256857371" MODIFIED="1444392040012" TEXT="This should be useful in some way, but how?"/>
<node CREATED="1444392193601" ID="ID_1925337909" MODIFIED="1444392223829" TEXT="If a person is putting information in a vetted forum.. in a situation where consensus about what is true and what isn&apos;t can be reached">
<node CREATED="1444392227560" ID="ID_1085583434" MODIFIED="1444392250525" TEXT="Then also putting the checkpoint there can be an indicator that the checkpoint is also true"/>
<node CREATED="1444392252361" ID="ID_1697426037" MODIFIED="1444392278172" TEXT="If the person voting has made the determination that the thing to vote for is valid enough that they do in fact vote for it">
<node CREATED="1444392281817" ID="ID_672215961" MODIFIED="1444392292365" TEXT="Then can you also say that they agree the checkpoint is valid?">
<node CREATED="1444392294577" ID="ID_233006710" MODIFIED="1444392327613" TEXT="I&apos;d say no. It&apos;s not the same thing. . The user could be voting to displpay &quot;Hi There!&quot; in the client"/>
<node CREATED="1444392330624" ID="ID_1132926252" MODIFIED="1444392356189" TEXT="For a serious vote, then yes">
<node CREATED="1444392357680" ID="ID_1074083352" MODIFIED="1444392374356" TEXT="But telling a serious vote from a non serious vote is a lot of work."/>
</node>
</node>
</node>
</node>
<node CREATED="1444460812782" ID="ID_928411010" MODIFIED="1444460841942" TEXT="The most common purpose is to get votes on the official chain, but that doesn&apos;t mean a voter creator could be trying to attack the network">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1444392584001" ID="ID_277588747" MODIFIED="1444392597789" TEXT="What if the voter, not the vote creator is involved somehow?"/>
<node CREATED="1444463107711" ID="ID_622403175" MODIFIED="1444463146639" TEXT="I don&apos;t think this will work.. vote creator can&apos;t be trusted. They may make a silly election such as, display &quot;Hi there!&quot; in client">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1444460315995" ID="ID_721210345" MODIFIED="1444627055303" TEXT="We won&apos;t have checkpointing per se">
<node CREATED="1444460424101" ID="ID_1619214338" MODIFIED="1444460432954" TEXT="Every release will have a checkpoint built into it"/>
<node CREATED="1444460665814" ID="ID_334929335" MODIFIED="1444460710705" TEXT="The first release, especially will have a checkpoint, and each user will already have their sum. Unless all these users are corrupted (at least more than decide to mint) then the network cannot be commadeered"/>
<node CREATED="1444460494517" ID="ID_1994513245" MODIFIED="1444460504297" TEXT="For added checkpoints, users can ask from a trusted source">
<node CREATED="1444460509020" ID="ID_1694196271" MODIFIED="1444460649104" TEXT="Using a trusted source for a checkpoint is the same action as installing the code">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      When a user installs a client, even for bitcoin, they trust that the genesis block is correct, and the other network parameters that show they are on the true version of bitcoin.
    </p>
    <p>
      So in this sense, bitcoin uses a trusted source as well.
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1444469289362" ID="ID_1717534406" MODIFIED="1444627062900" TEXT="How to release coin?">
<node CREATED="1444469299665" ID="ID_465205250" MODIFIED="1444469309549" TEXT="Everyone who asks gets an equal share?">
<node CREATED="1444469311441" ID="ID_168708387" MODIFIED="1444469320878" TEXT="How to prevent double dippers?">
<node CREATED="1444469325170" ID="ID_397048244" MODIFIED="1444469354989" TEXT="Less notority means less chance for sybil attack"/>
</node>
</node>
<node CREATED="1444469376714" ID="ID_1939822998" MODIFIED="1444469411610" TEXT="Don&apos;t worry to much about this. Make it seem not a big deal. Just offer to whoever asks. Frame it as an experiment">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1444563168872" ID="ID_876404005" MODIFIED="1444563180890" TEXT="No more voting result private key">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1444563221961" FOLDED="true" ID="ID_1636733465" MODIFIED="1444563235105" TEXT="old questions">
<node CREATED="1444301371619" ID="ID_1268664558" MODIFIED="1444301804747" TEXT="Can IP create a DoS attack by posting a losing script and declare it winning?">
<node CREATED="1444301529051" ID="ID_1140279319" MODIFIED="1444473158299" TEXT="IP will be required to send indexes of votes for him along with Private Key?">
<node CREATED="1444472170739" ID="ID_243110412" MODIFIED="1444472177183" TEXT="Maybe too much information to send"/>
<node CREATED="1444472304187" ID="ID_635436013" MODIFIED="1444474120972" TEXT="Minter can&apos;t ask vote creator for information directly, because it doesn&apos;t know the ip. The transaction was sent through the network">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1444472331172" ID="ID_1715482184" MODIFIED="1444474121820" TEXT="Vote creator sends IP along with vote collection script? Then minter asks the vote creator directly for the votes">
<node CREATED="1444472390451" ID="ID_92644131" MODIFIED="1444472402630" TEXT="May work because minter checks hash target before creating block"/>
<node CREATED="1444472427340" ID="ID_939245933" MODIFIED="1444472460238" TEXT="Helps a lot, because otherwise the minter must go through at least 50% of the votes to figure out the vote creator didn&apos;t actually pass, otherwise"/>
<node CREATED="1444472924716" ID="ID_679311058" MODIFIED="1444473274924" TEXT="Place result in count_votes script op">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      First we send a tx with the unaltered vote script as the output, and just a fee as the input.
    </p>
    <p>
      Then to unlock it, we create a second transaction that has an input script with:
    </p>
    <p>
      
    </p>
    <p>
      count_votes_op &lt;script hash&gt; &lt;vote creator priv key&gt; &lt;vote creator ip:port&gt;
    </p>
    <p>
      
    </p>
    <p>
      If there are funds to be spent from the original script, the output script can create a utxo or whatever it wants.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1444473275307" ID="ID_38287949" MODIFIED="1444473306032" TEXT="FUTURE, the fee can be applied even if votes fail to add up, so this is not necessary">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1444474534660" ID="ID_56731991" MODIFIED="1444474549462" TEXT="Won&apos;t work. Everyone needs to validate the block, not just the minter">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1444521287090" ID="ID_62356705" MODIFIED="1444521393829" TEXT="And the minter could just pretend that a vote creator contacted him. And then he could just publish a block with say, 1 million vote result txn&apos;s, all fake, which would cripple the network">
<node CREATED="1444521418266" ID="ID_848049917" MODIFIED="1444522075442" TEXT="How can this be prevented?">
<node CREATED="1444521580257" ID="ID_863197623" MODIFIED="1444521587766" TEXT="Voters vote"/>
<node CREATED="1444521588729" ID="ID_1610430456" MODIFIED="1444521592837" TEXT="Election is over"/>
<node CREATED="1444521593345" ID="ID_1597577925" MODIFIED="1444521624245" TEXT="Election creator posts private key to block chain"/>
<node CREATED="1444521625161" ID="ID_500934648" MODIFIED="1444521998758" TEXT="Txns are posted to unlock private keys and create a running tally by anyone who wishes to do so">
<node CREATED="1444523151546" ID="ID_33556776" MODIFIED="1444523296582" TEXT="Another way to crack into the system...">
<node CREATED="1444523298153" ID="ID_386130840" MODIFIED="1444523308925" TEXT="If we charge a fee, it should be like any other transaction"/>
</node>
<node CREATED="1444523310850" ID="ID_1216038766" MODIFIED="1444523363622" TEXT="We&apos;d need two types, one to unlock the votes and another to tally prior unlocks"/>
<node CREATED="1444524008782" ID="ID_854375540" MODIFIED="1444524032714" TEXT="How many inputs can a txn have in bitcoin?">
<node CREATED="1444524360478" ID="ID_781597852" MODIFIED="1444524376474" TEXT="The size is limited so a transaction can only take 1/5 of a block"/>
<node CREATED="1444524379766" ID="ID_1650661003" MODIFIED="1444524387209" TEXT="Also a fee is charged for each input"/>
</node>
</node>
<node CREATED="1444521635097" ID="ID_351293924" MODIFIED="1444522029077" TEXT="The final tally is then present with no calculation needed"/>
<node CREATED="1444522030353" ID="ID_1515656509" MODIFIED="1444522064187" TEXT="The point is to prevent a single transaction from having millions of inputs and therefore slowing the network, so we do it in these steps">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1444472179274" ID="ID_997799311" MODIFIED="1444473313268" TEXT="IP sends a high fee to compensate minter?">
<node CREATED="1444472199387" ID="ID_195921053" MODIFIED="1444472209791" TEXT="If validation fails, how can fee be taken?">
<node CREATED="1444473178771" ID="ID_353608558" MODIFIED="1444473249127" TEXT="Fee is still taken, because a failing vote_results doesn&apos;t prevent the tx from being published"/>
</node>
<node CREATED="1444473320260" ID="ID_1620093939" MODIFIED="1444473337360" TEXT="Fee is decided upon by vote creator"/>
</node>
<node CREATED="1444301574467" ID="ID_467806568" MODIFIED="1444301595895" TEXT="If minter can&apos;t decrypt one of the indexes, minter refuses the transaction"/>
<node CREATED="1444474182779" ID="ID_626130188" MODIFIED="1444563149280" TEXT="But what about everyone else trying to validate the block? They still need to go through all the votes">
<node CREATED="1444474206900" ID="ID_1545945884" MODIFIED="1444563148479" TEXT="This is especially a problem for failed vote claims">
<node CREATED="1444474309444" ID="ID_416998483" MODIFIED="1444474390248" TEXT="Maybe for failed vote claims, minter adds a special txn reporting the vote to have failed.">
<node CREATED="1444474463708" ID="ID_428821571" MODIFIED="1444474467040" TEXT="But minter could lie"/>
</node>
</node>
</node>
<node CREATED="1444474504141" ID="ID_721817495" MODIFIED="1444563149768" TEXT="And passing the ip address of the vote creator won&apos;t help them"/>
<node CREATED="1444301725971" ID="ID_1549215472" MODIFIED="1444301794527" TEXT="Therefore, only IP&apos;s with a large amount of votes could disrupt anything, and in that case, it would be easy to identify the bad party">
<node CREATED="1444301811011" ID="ID_217387301" MODIFIED="1444470126305" TEXT="Do we need to add code to do penalize the bad party?">
<node CREATED="1444470092362" ID="ID_914811060" MODIFIED="1444470143742" TEXT="The time limit should prevent too much disruption. Maybe identify the node as a spammer?"/>
<node CREATED="1444470169194" ID="ID_24443434" MODIFIED="1444470175110" TEXT="It&apos;s only affecting the minter, anyway"/>
</node>
</node>
<node CREATED="1444470057241" ID="ID_1658979230" MODIFIED="1444470084838" TEXT="We need a time limit, after which the winnings can no longer be retrieved"/>
</node>
<node CREATED="1444301075443" FOLDED="true" ID="ID_1072742497" MODIFIED="1444563121998" TEXT="Where does the private key from the IP go when running the script?">
<node CREATED="1444301890299" ID="ID_403504472" MODIFIED="1444302184640" TEXT="If the output script that was signed is a template, and the actual output script contained the private key, it would work">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The idea is that we don't want to alter the transaction format in any way from the original code.
    </p>
    <p>
      
    </p>
    <p>
      To do this:
    </p>
    <p>
      Voters would vote on a template, where the Private Key is replaced in the actual script.<br />
    </p>
    <p>
      When the actual script is created, it has the private key embedded in it, and its created in such a way that if you pass a magic keyword &quot;0&quot; or something, it returns the private key.
    </p>
    <p>
      Otherwise it does its regular action (spend pool funds, etc.)
    </p>
    <p>
      
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1444302394443" ID="ID_1634889" MODIFIED="1444563118808" TEXT="Or, the output script expects the IP private key supplied. The private key is actually stored in the input script of the txn">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      In this way,no template is needed. When validating votes, we just look inside the inpu
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1444563104152" ID="ID_454283757" MODIFIED="1444563114396" TEXT="There is no private key. We won&apos;t encrypt votes">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1444096213327" ID="ID_136861202" MODIFIED="1444522109466" TEXT="If IP wins, IP posts a transaction with the input being the winning script and private key (where does the private key go?)">
<node CREATED="1444096782998" ID="ID_631154214" MODIFIED="1444301175490" TEXT="If upgrade client, then client will prompt user to get next version and shutdown">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      IP's transaction will have zero outputs in this case
    </p>
  </body>
</html></richcontent>
<node CREATED="1444096847445" ID="ID_908557932" MODIFIED="1444096881699" TEXT="Only version with declared source md5sum matching latest change version script can run (officially)"/>
<node CREATED="1444301134915" ID="ID_291350796" MODIFIED="1444469987354" TEXT="How to prevent double spend attack here?">
<node CREATED="1444469779153" ID="ID_622984953" MODIFIED="1444469984818" TEXT="Grace period to upgrade?"/>
<node CREATED="1444469884633" ID="ID_1491005545" MODIFIED="1444469915013" TEXT="If there are changes to the rules, we can force them at a particular block (ahead of the current one)"/>
<node CREATED="1444469915993" ID="ID_338223438" MODIFIED="1444469938134" TEXT="We can specify a block where the client will refuse to run anymore, and just prompt the user to upgrade"/>
<node CREATED="1444469967513" ID="ID_1934931684" MODIFIED="1444469980310" TEXT="FUTURE - it should be good enough, I think"/>
</node>
</node>
<node CREATED="1444096889438" ID="ID_255697357" MODIFIED="1444301187311" TEXT="If spendable, they just take the funds"/>
<node CREATED="1444096919982" ID="ID_1629498259" MODIFIED="1444096957787" TEXT="If &quot;client message&quot;, then client will display message until deadline in the script"/>
</node>
</node>
</node>
<node CREATED="1444301596899" ID="ID_1612306024" MODIFIED="1444627097243" TEXT="Can minters refuse to accept txn, and block the vote at that time?">
<node CREATED="1444301694763" ID="ID_254076421" MODIFIED="1444301715415" TEXT="Yes, but given that over 50% voted yes, there will come along a minter who wants to process it "/>
</node>
<node CREATED="1444562491696" ID="ID_909147881" MODIFIED="1444624690074" TEXT="Fee?">
<node CREATED="1444562498008" ID="ID_1562468646" MODIFIED="1444562514979" TEXT="Yes, otherwise DoS"/>
<node CREATED="1444562515536" ID="ID_1301740533" MODIFIED="1444562648026" TEXT="Maybe fee can be subtracted out during next UTXO">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      In other words, we create the vote as if there is no fee, but then when we go and transfer funds out of the UTXO, the fee is automatically subtracted for the vote
    </p>
  </body>
</html></richcontent>
<node CREATED="1444562566856" ID="ID_551569659" MODIFIED="1444562573420" TEXT="So it doesn&apos;t effect staking at all"/>
</node>
<node CREATED="1444562648008" ID="ID_88045662" MODIFIED="1444624734388" TEXT="Another option is when we vote, we could send the UTXO back to the same address, minus the fee amount">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1444562697352" ID="ID_1801635937" MODIFIED="1444562718284" TEXT="And then we&apos;d have to trace it back to find the staked UTXO balance"/>
<node CREATED="1444562722064" ID="ID_331504678" MODIFIED="1444562749659" TEXT="Shouldn&apos;t be too hard.. probably easier then trying to subtract out the fee every time we look at the UTXO value"/>
</node>
<node CREATED="1444624736992" ID="ID_1508091568" MODIFIED="1444624745149" TEXT="Fee&apos;s go to the pool. They are not eaten">
<node CREATED="1444624747224" ID="ID_342852501" MODIFIED="1444624776844" TEXT="This is so that when we create a vote txn, we can make it static. Otherwise we have to create a UTXO that sends the change back to the pool"/>
<node CREATED="1444624811329" ID="ID_1762818177" MODIFIED="1444624912023" TEXT="This will cause a problem, because the pool will then get millions of UTXO&apos;s. This actually will happen anyway, because it gets a UTXO per stake.">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      This is a problem because a txn can only be so big. If it has too many inputs, then we can't fit it into a block
    </p>
  </body>
</html></richcontent>
<node CREATED="1444624914505" ID="ID_1041309890" MODIFIED="1444624931118" TEXT="We&apos;ll solve this by consolidating UTXO&apos;s in the pool at every mint"/>
</node>
<node CREATED="1444625012289" ID="ID_1128789689" MODIFIED="1444625050445" TEXT="This happens as a consolidated transaction when minting. We don&apos;t send pennies to the pool individually for each transaction"/>
</node>
</node>
<node CREATED="1444811594767" ID="ID_502270088" MODIFIED="1444959757492" TEXT="How to tell if there are duplicate transactions for the same vote?">
<node CREATED="1444811657919" ID="ID_909658653" MODIFIED="1444959741340" TEXT="Voting is done against a txn hash. The txn will contain a future block as its timestamp. So only that one transaction can be posted... Possibly?">
<node CREATED="1444811711375" ID="ID_629999899" MODIFIED="1444959744404" TEXT="Will clients discard txns too far in the future?">
<node CREATED="1444811766087" ID="ID_1007275606" MODIFIED="1444959745732" TEXT="What is the timeframe? If it&apos;s too short we&apos;ll have to revist"/>
</node>
<node CREATED="1444811728759" ID="ID_600321981" MODIFIED="1444811758227" TEXT="If the txn is posted too late, it won&apos;t go through at all"/>
<node CREATED="1444959770061" ID="ID_436074851" MODIFIED="1444959791632" TEXT="It will just have the timestamp of the poll deadline. A txn signed a long time ago can still be included in a block"/>
</node>
</node>
<node CREATED="1444812219695" ID="ID_479637884" LINK="#ID_629999899" MODIFIED="1444959696444" TEXT="When can user start broadcasting it nodes?">
<node CREATED="1444959698516" ID="ID_786865117" MODIFIED="1444959708680" TEXT="As soon as the poll ends"/>
</node>
<node CREATED="1444891307258" ID="ID_95498414" MODIFIED="1444891319630" TEXT="enough people minting?">
<node CREATED="1444891340226" ID="ID_301178068" MODIFIED="1444891372286" TEXT="There are 2304 minutes in 1.6 days"/>
<node CREATED="1444891375970" ID="ID_655539735" MODIFIED="1444891381464" TEXT="Each block is a minute long"/>
<node CREATED="1444891381930" ID="ID_1352284918" MODIFIED="1444891422519" TEXT="With 100 initial founders each will need 23 or 24 txns so that all blocks are minting"/>
<node CREATED="1444892302019" ID="ID_1126241670" MODIFIED="1444892311582" TEXT="If only half mint, then that&apos;s 50 each"/>
<node CREATED="1444892312163" ID="ID_156715045" MODIFIED="1444892332030" TEXT="What is the relationship between minting and mining?">
<node CREATED="1444894105827" ID="ID_1235677799" MODIFIED="1444894128951" TEXT="Minting and mining are separate in neucoin. The prev block is calculated separately"/>
</node>
<node CREATED="1444894129611" ID="ID_1917303435" MODIFIED="1444894227328" TEXT="Minting computes a target and multiplies that by the number of coins (satoshis) and the constant of the number of seconds in 1.6 days">
<node CREATED="1444894171876" ID="ID_201402395" MODIFIED="1444894185288" TEXT="Peercoin also multiplies the stake age"/>
</node>
<node CREATED="1444892333260" ID="ID_106219201" MODIFIED="1444894236848" TEXT="Can we make mining profitable only when needed?"/>
<node CREATED="1444895511955" ID="ID_78251665" MODIFIED="1444895524815" TEXT="Best Minting block chain">
<node CREATED="1444895526387" ID="ID_1087044876" MODIFIED="1444895553383" TEXT="This is determined by adding 1/difficulty for proof of stake blocks">
<node CREATED="1444895581283" ID="ID_779225614" MODIFIED="1444895593071" TEXT="So proof of work blocks are hardly trusted at all, they get a value of 1"/>
</node>
</node>
<node CREATED="1444896665467" ID="ID_1290914060" MODIFIED="1444896749869" TEXT="We can&apos;t let the thing fail before it starts. If everyone gets locked into the pre-minting 1.6 days to mint, the experiment is over">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1444896705707" ID="ID_869462798" MODIFIED="1444896745591" TEXT="So if the time period between blocks falls to certain percentage over target, we allow POW">
<node CREATED="1444902568891" ID="ID_1119312199" MODIFIED="1444902594839" TEXT="We can&apos;t use the current time, because there is up to 2 hours of clock drift"/>
<node CREATED="1444902595355" ID="ID_1829790705" MODIFIED="1444902608023" TEXT="So instead, we use the time between the last 2 proof of stake blocks"/>
<node CREATED="1444902608523" ID="ID_439258070" MODIFIED="1444902628032" TEXT="If the proof of stake time is too long, we allow proof of work until the next proof of stake block"/>
<node CREATED="1444902628459" ID="ID_206880362" MODIFIED="1444902657271" TEXT="Since PoW are not trusted anyways, having a bunch of PoW blocks can&apos;t be used to fork"/>
</node>
<node CREATED="1444896750475" ID="ID_12537786" MODIFIED="1444896768207" TEXT="Since PoW is defined to be not trusted, it shouldn&apos;t affect anything"/>
</node>
</node>
<node CREATED="1445063806929" ID="ID_388481060" MODIFIED="1445063817486" TEXT="How do we keep staking going through a vote?">
<node CREATED="1445063820690" ID="ID_1929247227" MODIFIED="1445063829862" TEXT="When we vote, we use a specially crafted transaction">
<node CREATED="1445063820690" ID="ID_521070232" MODIFIED="1445063939989" TEXT="script">
<node CREATED="1445063830442" ID="ID_1032718002" MODIFIED="1445063835598" TEXT="VOTE xxx"/>
<node CREATED="1445063838345" ID="ID_435657986" MODIFIED="1445063878309" TEXT="DUP"/>
<node CREATED="1445063882466" ID="ID_700170419" MODIFIED="1445063887758" TEXT="HASH160"/>
<node CREATED="1445063891970" ID="ID_1004397517" MODIFIED="1445063902917" TEXT="(push) &lt;public key hash&gt;"/>
<node CREATED="1445063903658" ID="ID_822502385" MODIFIED="1445063914357" TEXT="EQUALVERIFY"/>
<node CREATED="1445063914569" ID="ID_1714678811" MODIFIED="1445063916550" TEXT="CHECKSIG"/>
</node>
<node CREATED="1445063950138" ID="ID_1902968832" MODIFIED="1445063972550" TEXT="The public key hash is compared to the transaction input&apos;s public key"/>
<node CREATED="1445063976898" ID="ID_1110310735" MODIFIED="1445063994469" TEXT="Only if they match, do we let staking go through the transaction"/>
<node CREATED="1445063996049" ID="ID_1542596437" MODIFIED="1445064003901" TEXT="Also the transaction must only have 1 input and 1 output"/>
</node>
</node>
<node CREATED="1445166642310" ID="ID_536540031" MODIFIED="1445166651811" TEXT="How will we count votes?">
<node CREATED="1445166653783" ID="ID_1651221567" MODIFIED="1445166664706" TEXT="We can store it in the block index">
<node CREATED="1445166666191" ID="ID_510505184" MODIFIED="1445166675867" TEXT="Could potentially take a lot of space"/>
<node CREATED="1445166676599" ID="ID_306177749" MODIFIED="1445166680316" TEXT="A lot of duplicated data"/>
</node>
<node CREATED="1445166681742" ID="ID_1181264758" MODIFIED="1445166727327" TEXT="Create a new type of db record">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1445166694486" ID="ID_113908316" MODIFIED="1445166701922" TEXT="Based only on the best chain"/>
<node CREATED="1445166702487" ID="ID_852747745" MODIFIED="1445166718858" TEXT="Tx&apos;s are the same way (they are also only based on the best chain), so we have established precedence"/>
</node>
</node>
<node COLOR="#009999" CREATED="1444622775937" ID="ID_455938583" MODIFIED="1444622914048" TEXT="light blue means No to a Yes/No question"/>
<node CREATED="1445167131383" ID="ID_864387018" MODIFIED="1445167592056" TEXT="Why can&apos;t the deadline be the txn time? In other words, make the txn time future timestamped.">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1445167156823" ID="ID_578590590" MODIFIED="1445167252772" TEXT="If we did this, we&apos;d still need some kind of deadline, or we&apos;d have to vote for a raw txn rather than a txn hash">
<node CREATED="1445167212759" ID="ID_1668332340" MODIFIED="1445167252774" TEXT="Otherwise, how&apos;d we know when the election ended"/>
</node>
<node CREATED="1445167253399" ID="ID_1839734787" MODIFIED="1445167288467" TEXT="If we voted for a raw txn, then we could verify that it was within our guidelines."/>
<node CREATED="1445167296695" ID="ID_1621836290" MODIFIED="1445167311011" TEXT="It would also be easy to see what it was. Which would increase the openness"/>
<node CREATED="1445167321847" ID="ID_478918800" MODIFIED="1445167369139" TEXT="It would increase the voting txn size, and there will be millions of them."/>
<node CREATED="1445167505175" ID="ID_1871965333" MODIFIED="1445167595066" TEXT="It&apos;s a good idea, but I think it could potentially increase the size of the block chain too much">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1445167537440" ID="ID_1006987410" MODIFIED="1445167554212" TEXT="And we can always reject the transaction at redeem time"/>
<node CREATED="1445167556903" ID="ID_1179539539" MODIFIED="1445167583884" TEXT="We could change the vote rpc call to accept a transaction and convert it to txn hash, deadline format when storing in block chain">
<node CREATED="1445167588000" ID="ID_1697677648" MODIFIED="1445167589588" TEXT="FUTURE"/>
</node>
</node>
<node CREATED="1445160080411" ID="ID_1381558090" MODIFIED="1445160695731" TEXT="Should we allow someone to vote for two proposals at the same time?">
<node CREATED="1445160602243" ID="ID_1580442743" MODIFIED="1445160625391" TEXT="As long as the deadlines differ, they&apos;d be able to do this anyway">
<node CREATED="1445160686795" ID="ID_1100260026" MODIFIED="1445160693351" TEXT="But if the deadlines are the same, they would not"/>
</node>
<node CREATED="1445160626075" ID="ID_905585254" MODIFIED="1445160658479" TEXT="But it&apos;s someone complicated, because it prevents a user from reverting their vote, unless they move funds"/>
<node CREATED="1445160663107" ID="ID_1225697076" MODIFIED="1445160697180" TEXT="Maybe better to only allow to dedicate coins to one proposal">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1445410698446" ID="ID_1307502137" MODIFIED="1445410703794" TEXT="Should we allow a partial vote?">
<node CREATED="1445410705950" ID="ID_932884072" MODIFIED="1445410720753" TEXT="Help with testing. No need to vote all coins at once"/>
<node CREATED="1445410722063" ID="ID_1695876266" MODIFIED="1445410757635" TEXT="Won&apos;t matter for staking except that it would split staking up, which is good for network"/>
<node CREATED="1445410761606" ID="ID_1225482478" MODIFIED="1445415947180" TEXT="Easy to do">
<node CREATED="1445415056616" ID="ID_260861529" MODIFIED="1445415958124" TEXT="If there is any change, we handle it by creating a null vote"/>
</node>
<node CREATED="1445410769894" ID="ID_494428060" MODIFIED="1445416089292" TEXT="No">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1445416099545" ID="ID_1299293618" MODIFIED="1445416133700" TEXT="It&apos;s not useful to the user. If they want to vote on two things, they should vote all their coins on one, then after the deadline of the first, vote all their coins on the second"/>
</node>
</node>
<node CREATED="1445569997733" ID="ID_1581672533" MODIFIED="1445724330592" TEXT="Should we put the vote on the input rather than the output?">
<node CREATED="1445570011005" ID="ID_261012601" MODIFIED="1445570047490" TEXT="If we do so, then the input script hash will match the output script hash exactly"/>
<node CREATED="1445570049173" ID="ID_533375854" MODIFIED="1445570060010" TEXT="This will make it easier to verify that a vote is correct"/>
<node CREATED="1445583253630" ID="ID_127018036" MODIFIED="1445583276890" TEXT="It&apos;s a little odd though. The input script signature usually doesn&apos;t include itself. In this case it would have to."/>
<node CREATED="1445724333751" ID="ID_1015013963" MODIFIED="1445724336306" TEXT="Yes">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1445691131839" ID="ID_515587099" MODIFIED="1445691173563" TEXT="Does the final vote participation tallly count from the last block before/on the deadline or the first block after it?">
<node CREATED="1445691184791" ID="ID_1102666322" MODIFIED="1445691221347" TEXT="I say block before/on, it prevents people from trying to revert out a vote at the last second"/>
<node CREATED="1445691221711" ID="ID_574868604" MODIFIED="1445691237387" TEXT="6 of one, half dozen of the other"/>
<node CREATED="1445691237999" ID="ID_272611385" MODIFIED="1445730591979" TEXT="before or equal">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1445825173727" ID="ID_509861348" MODIFIED="1445825345804" TEXT="Proposal txn has a title, created with OP_PROPOSAL_TITLE?">
<node CREATED="1445825217623" ID="ID_1349910809" MODIFIED="1445825301795" TEXT="Why store a title?">
<node CREATED="1445825321687" ID="ID_1306282875" MODIFIED="1445825330811" TEXT="It doesn&apos;t seem like it needs to be in the block chain"/>
</node>
<node CREATED="1445825333191" ID="ID_686419771" MODIFIED="1445825335280" TEXT="FUTURE">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1445328928830" ID="ID_602214935" MODIFIED="1445333839142" TEXT="Should we just use transactions after the fact?">
<node CREATED="1445328959926" ID="ID_1964564743" MODIFIED="1445328977074" TEXT="It may be simpler than trying to change the code, affecting money supply, etc."/>
<node CREATED="1445328981062" ID="ID_1818362765" MODIFIED="1445328999882" TEXT="But we need an initial amount, anyway, I suppose we could do the standard first mined block gets a huge payout"/>
<node CREATED="1445329053678" ID="ID_1659295338" MODIFIED="1445329069049" TEXT="We also wouldn&apos;t need to keep changing the genesis block everytime"/>
<node CREATED="1445333855782" ID="ID_1697435562" MODIFIED="1445333867258" TEXT="For spending pool, we&apos;ll just create a transaction with a huge fee"/>
<node CREATED="1445333834734" ID="ID_823427773" MODIFIED="1445333837615" TEXT="Yes">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1444694509415" ID="ID_817034730" MODIFIED="1444696764204" TEXT="base58">
<node CREATED="1444696745057" ID="ID_391636309" MODIFIED="1445912842332" TEXT="prefix">
<node CREATED="1444694513152" ID="ID_1286198681" MODIFIED="1444696316651" TEXT="The version is the most significant digit in the actual encoding"/>
<node CREATED="1444696455472" ID="ID_803860895" MODIFIED="1444696596067" TEXT="Since &apos;1&apos; in base58 is 0 the &apos;1&apos; digit is created by prepending &apos;1&apos; explicitly. It&apos;s the equivalent of 004 for the value 4."/>
<node CREATED="1444696630848" ID="ID_493437405" MODIFIED="1444696677621" TEXT="The size for the input matters then, as far as choosing the digit"/>
<node CREATED="1444696678745" ID="ID_1687249484" MODIFIED="1444696733740" TEXT="The output size is always (input *138/100+1)"/>
<node CREATED="1444696999633" ID="ID_1958082517" MODIFIED="1444697016261" TEXT="For a bitcoin address, the raw data to encode is always 25 bytes"/>
<node CREATED="1444697017169" ID="ID_1738457801" MODIFIED="1444697041164" TEXT="So the output must be 35 bytes"/>
<node CREATED="1444697053848" ID="ID_1232710707" MODIFIED="1444698809132" TEXT="So given a 25 byte number, where the first byte is the version, what value do we need to use for the version to get &apos;E&apos;?">
<node CREATED="1444698820528" ID="ID_1677928971" MODIFIED="1444698866037" TEXT="We take (2 ** (8 * 25)) % 58 = 32"/>
<node CREATED="1444698873448" ID="ID_1328467363" MODIFIED="1444698888157" TEXT="Then take the base58 rep and find the number we want"/>
</node>
<node CREATED="1444701353482" ID="ID_159726860" MODIFIED="1444701357695" TEXT="Found by trial and error"/>
</node>
</node>
<node CREATED="1445829597665" ID="ID_286982106" MODIFIED="1445835329043" TEXT="OP_CHECKPOINT???">
<node CREATED="1445829607881" ID="ID_223558610" MODIFIED="1445829628885" TEXT="Creates a checkpoint"/>
<node CREATED="1445829633241" ID="ID_1053626802" MODIFIED="1445829652813" TEXT="Interesting because people can now vote whether they trust a checkpoint or not"/>
<node CREATED="1445830266040" ID="ID_203616311" MODIFIED="1445830295229" TEXT="But if checkpoint is in blockchain, how can it be used to verify the blockchain. An attacker could create their own checkpoints"/>
<node CREATED="1445835332164" ID="ID_432824246" MODIFIED="1445835338069" TEXT="No">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1445829855017" ID="ID_946705461" MODIFIED="1445830170249" TEXT="Alternative: founders get written into genesis. That is the checkpoint">
<node CREATED="1445830170737" ID="ID_997106242" MODIFIED="1445911129060" TEXT="Not good enough. Trust in the founders forever?">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1445162731365" ID="ID_1355198042" MODIFIED="1445163705133" TEXT="what if we didn&apos;t use an address for the funds pool?">
<node CREATED="1445162744253" ID="ID_529442147" MODIFIED="1445162811305" TEXT="If we just keep track of the funds received (just like peercoin is doing in ConnectBlock()) we won&apos;t need an address, and then we don&apos;t need to worry about the millions of tiny utxo&apos;s that would otherwise occur"/>
<node CREATED="1445162878084" ID="ID_1317323724" MODIFIED="1445162896785" TEXT="We&apos;d also be able to freeze the vote txn beforehand. No more txn template with missing input"/>
<node CREATED="1445163707470" ID="ID_1920250947" MODIFIED="1445163718894" TEXT="I&apos;m going to go ahead and do this, it solves a lot of problems">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1445163610446" ID="ID_578086084" MODIFIED="1445724260727" TEXT="But how does the redeeming txn get to unlock the funds?">
<node CREATED="1445163667030" ID="ID_1853279045" MODIFIED="1445724253891" TEXT="The redeeming txn is a special type, much like coinbase, except its prev pointer is -2 rather than -1"/>
</node>
</node>
<node CREATED="1445502574963" ID="ID_1788275487" MODIFIED="1445915269432" TEXT="How do we deal with vote amounts so small they are less than the minimum txn amount?">
<node CREATED="1445502610059" ID="ID_2554190" MODIFIED="1445502638791" TEXT="We could just let them through if they&apos;re vote transactions, but then there is this weird zero output txn, and I don&apos;t know how it might effect the wallet code"/>
<node CREATED="1445502771195" ID="ID_1813375873" MODIFIED="1445502797967" TEXT="I think we may be better off refusing to vote with UTXO&apos;s that small">
<node CREATED="1445502799851" ID="ID_208378298" MODIFIED="1445502816768" TEXT="It will cause an annoyance, since not all the user&apos;s funds will be voted to the new proposal"/>
<node CREATED="1445502817275" ID="ID_527260292" MODIFIED="1445502840542" TEXT="But it should happen so rarely, that I don&apos;t think it makes much of a difference, and isn&apos;t worth spending time on right now"/>
</node>
<node CREATED="1445502845643" ID="ID_902400812" MODIFIED="1445502848211" TEXT="FUTURE">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1446393602453" ID="ID_1902095867" MODIFIED="1446426480096" TEXT="Should we add a function to see proposals that will deadline soon (that have been voted on)?">
<node CREATED="1446393645509" ID="ID_586436728" MODIFIED="1446426478275" TEXT="I think that would be better served  by a block explorer">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1444694502424" ID="ID_1517243472" MODIFIED="1445724347479" POSITION="right" TEXT="coding">
<node CREATED="1444787018887" ID="ID_816583240" MODIFIED="1444787028837" TEXT="temp addresses">
<node CREATED="1444787030352" ID="ID_1551747574" MODIFIED="1444792498397" TEXT="Ei1DSRm1D6rtaERGE14uh5Yze5LxMF6RaJ">
<node CREATED="1444787041344" ID="ID_857877843" MODIFIED="1444787043699" TEXT="FBxDbfkmiF8WH6vgpQ3CpU64ks1eLSLDXowfjFUUMkqG779YPsNP"/>
</node>
<node CREATED="1444787053088" ID="ID_1455205995" MODIFIED="1444787055612" TEXT="Eu28WPKMYryQhaGRVZPjwsMbpFYV6dxsfS">
<node CREATED="1444787066719" ID="ID_1092050335" MODIFIED="1444787068443" TEXT="FBqqyE97iaswsDijpdsJmf9UJ1v9eeBEDawWUMkkHU3C56QwUmcL"/>
</node>
<node CREATED="1444787077136" ID="ID_210194158" MODIFIED="1444787080144" TEXT="EnBsTsftjzi3CdjaoMwLrg7apiMbB4uamM">
<node CREATED="1444787080145" ID="ID_431244803" MODIFIED="1444787087915" TEXT="F4kkYxVFteotUCxpSirixJZRfGgENASKNwqpyVfdfdts8KVyHHHn"/>
</node>
<node CREATED="1444787090591" ID="ID_99078524" MODIFIED="1444787103324" TEXT="F2pRXKgBsctLRYRfu9XQPCPPgBvPwkP8gp">
<node CREATED="1444787104687" ID="ID_1302722204" MODIFIED="1444787113691" TEXT="F6fQQoazrQjqAYjUXmwnAi3peXz6erq3hTwZthCeurWa4cDGaizB"/>
</node>
<node CREATED="1444787395112" ID="ID_385583189" MODIFIED="1444787409824" TEXT="EgzqvBu4cFMZ2CLRHhi1Tj9kFkcd1NkYnp">
<node CREATED="1444787409825" ID="ID_492452408" MODIFIED="1444787417843" TEXT="FCGNoJ72aq36g1XW8EvGXLnrquYgjhatVnikxmN78g2ptwUGk5fQ"/>
</node>
</node>
<node CREATED="1444787383783" ID="ID_208007625" MODIFIED="1446682192937" TEXT="new ops">
<node COLOR="#ff0000" CREATED="1444804794921" ID="ID_64752469" MODIFIED="1446682342530" TEXT="OP_UPGRADE_CLIENT &lt;block deadline&gt; &lt;git commit&gt; ..">
<node CREATED="1444804822257" ID="ID_1322557771" MODIFIED="1446682311595" TEXT="Causes the client to upgrade. git commit of the source code">
<node CREATED="1445835367404" ID="ID_1256118459" MODIFIED="1445835385144" TEXT="User must still figure out where to go themselves to download client"/>
<node CREATED="1445835412844" ID="ID_1579658579" MODIFIED="1445910484146" TEXT="Should source code contain md5sums of prior versions?">
<node CREATED="1445835433420" ID="ID_1160602152" MODIFIED="1445835454872" TEXT="This is to prevent the code from asking to be upgraded while reading the block chain"/>
<node CREATED="1445910438866" ID="ID_928440310" MODIFIED="1445910482718" TEXT="No, we will use a version number to prevent asking for an upgrade to a prior version">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1445835477356" ID="ID_1957285607" MODIFIED="1445910871395" TEXT="What about downgrading?">
<node CREATED="1445835488251" ID="ID_890748329" MODIFIED="1445835498256" TEXT="The code would slightly change because it would have a new version number"/>
<node CREATED="1445835500908" ID="ID_280125969" MODIFIED="1445835506144" TEXT="Version must always increase"/>
</node>
<node CREATED="1445835556548" ID="ID_1003054333" MODIFIED="1445910902691" TEXT="What if upgrade op had a version number as well?">
<node CREATED="1445839711005" ID="ID_852705690" MODIFIED="1445839734602" TEXT="We could then only force an upgrade if our version is less than the upgrade"/>
<node CREATED="1445910921715" ID="ID_1971858783" MODIFIED="1445910925005" TEXT="Yes">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1445839748525" ID="ID_1057974861" MODIFIED="1445839782905" TEXT="What about md5sum of various binaries, so we&apos;d have args &lt;os code&gt; &lt;binary md5sum&gt; &lt;os code2&gt; &lt;binary md5sum&gt;...">
<node CREATED="1445839786989" ID="ID_985489928" MODIFIED="1445908367309" TEXT="Then we could even download the upgrade from the network and automatically install it. Should we do this?">
<node CREATED="1445908013529" ID="ID_1878758337" MODIFIED="1445908072592" TEXT="But how would we prevent people from storing arbritrary filles?">
<node CREATED="1445908036217" ID="ID_208601543" MODIFIED="1445908068317" TEXT="Because the clients won&apos;t store anything they don&apos;t approve of"/>
</node>
<node CREATED="1445908079985" ID="ID_819114101" MODIFIED="1445908150105" TEXT="How would we download it? One peer just gives it to another? It&apos;s too big, like 50 megs">
<node CREATED="1445908139441" ID="ID_1259873920" MODIFIED="1445908178933" TEXT="If we do a bittorrent chunks thing, this will be a lot of work"/>
</node>
<node CREATED="1445908368953" ID="ID_701345088" MODIFIED="1445908371771" TEXT="FUTURE">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1445908373417" ID="ID_962440996" MODIFIED="1445908409733" TEXT="It&apos;s too much work, and it&apos;s kind of weird. Trusting the blockchain so much that if it fails it can own your computer is kind of weird"/>
</node>
</node>
<node CREATED="1445839811110" ID="ID_1352719483" MODIFIED="1445839840224" TEXT="For rare OS&apos;s, the user would have to compile it themselves"/>
<node CREATED="1445910912442" ID="ID_724010565" MODIFIED="1445910917098" TEXT="Yes">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1445995747610" ID="ID_53798050" MODIFIED="1445995755742" TEXT="Can we use a git commit for this?">
<node CREATED="1445995898498" ID="ID_481146801" MODIFIED="1445995922214" TEXT="git prepends &quot;blob &lt;num&gt;\0&quot; to the object before creating the hash"/>
<node CREATED="1445995861418" ID="ID_1348621464" MODIFIED="1445995872686" TEXT="git uses sha-1, is it safe enough?">
<node CREATED="1445996353210" ID="ID_1673851807" MODIFIED="1445998598807" TEXT="It seems safe enough for git, but I wouldn&apos;t use binaries placed into git (they don&apos;t make sense there anyway)"/>
</node>
</node>
<node CREATED="1445998601467" ID="ID_1462153673" MODIFIED="1445998622261" TEXT="We create sha2 hashes for binaries and require a git commit for the source">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node COLOR="#ff0000" CREATED="1446001956997" ID="ID_983022076" MODIFIED="1446001959501" TEXT="TODO"/>
</node>
<node CREATED="1446001277557" ID="ID_1483312421" MODIFIED="1446001845623" TEXT="What happens if there are two upgrade clients calls in the same block?">
<node CREATED="1446001451205" ID="ID_1133956769" MODIFIED="1446001467560" TEXT="The problem is that we are storing only one CPublicProposalData per block"/>
<node CREATED="1446001508157" ID="ID_1034270459" MODIFIED="1446001517177" TEXT="The two upgrades may have conflicting deadlines"/>
<node CREATED="1446001469173" ID="ID_1374086573" MODIFIED="1446001482400" TEXT="Its such a rare thing to occur I don&apos;t want to complicate the code for this."/>
<node CREATED="1446001518085" ID="ID_635340999" MODIFIED="1446001533503" TEXT="We will use the earliest of the deadlines regardless of the upgrade that created it">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#ff0000" CREATED="1446001947141" ID="ID_203529055" MODIFIED="1446001949853" TEXT="TODO"/>
</node>
<node CREATED="1446001846933" ID="ID_1305752118" MODIFIED="1446001942353" TEXT="We can&apos;t delete prior upgrades, because we can&apos;t allow the client to be downgraded after it was upgraded. How do we handle this?">
<node CREATED="1446001877229" ID="ID_371204405" MODIFIED="1446001892441" TEXT="If the user decides to go back to the prior version, we can&apos;t allow it to run"/>
<node CREATED="1446001893685" ID="ID_1159605649" MODIFIED="1446001931341" TEXT="I think we can accomplish this by having a version stored in the db. If the client attempts to downgrade, it will not allow it based on the db.">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#ff0000" CREATED="1446001943788" ID="ID_1420747305" MODIFIED="1446001946277" TEXT="TODO"/>
</node>
<node CREATED="1446002008308" ID="ID_1446918280" MODIFIED="1446002018817" TEXT="Do we need to store messages somewhere?">
<node CREATED="1446002021125" ID="ID_1980182557" MODIFIED="1446002044968" TEXT="Yes, we will store messages in some sort of bucket that can be read back later. Old messages will be deletable"/>
<node COLOR="#ff0000" CREATED="1446002072589" ID="ID_1804253203" MODIFIED="1446002090341" TEXT="How do we store a bucket of messages?"/>
<node COLOR="#ff0000" CREATED="1446002045645" ID="ID_1030039522" MODIFIED="1446002057109" TEXT="TODO">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1446028520171" ID="ID_1993156353" MODIFIED="1446028555568" TEXT="What happens if user is shown upgrade message, and then block chain reorgs?">
<node CREATED="1446028557644" ID="ID_364778146" MODIFIED="1446028623664" TEXT="Maybe we should keep everything in the block index, and reference it from there">
<node CREATED="1446028634876" ID="ID_548773268" MODIFIED="1446028660968" TEXT="This would cause bloat if we copied the messages and the upgrade client stuff to the future blocks as they connect"/>
<node COLOR="#ff0000" CREATED="1446028698739" ID="ID_466996106" MODIFIED="1446028805764" TEXT="What if we had a link to the past block in the form of an index?">
<node CREATED="1446028735820" ID="ID_10195509" MODIFIED="1446028770840" TEXT="If it&apos;s present, we go back to that block to find the upgrade necessary"/>
<node CREATED="1446028772036" ID="ID_664915778" MODIFIED="1446028777984" TEXT="If it isn&apos;t we do nothing"/>
<node COLOR="#ff0000" CREATED="1446028778980" ID="ID_1629381455" MODIFIED="1446028801771" TEXT="But how does that work for messages?"/>
</node>
<node COLOR="#ff0000" CREATED="1446028806212" ID="ID_1697018565" MODIFIED="1446028831252" TEXT="Is there a better way?">
<node CREATED="1446028848420" ID="ID_1893582068" MODIFIED="1446028855056" TEXT="I think we need to think relationally"/>
<node CREATED="1446028855612" ID="ID_755440715" MODIFIED="1446028861887" TEXT="A seperate table for messages">
<node CREATED="1446028870380" ID="ID_179762871" MODIFIED="1446028877664" TEXT="Each message has a &quot;read&quot; flag"/>
</node>
<node CREATED="1446028862356" ID="ID_1483000061" MODIFIED="1446028868328" TEXT="A separate table for client upgrades"/>
<node CREATED="1446028895468" ID="ID_1656383780" MODIFIED="1446028918000" TEXT="The block chains then link to the appropriate messages and client upgrade">
<node CREATED="1446029232157" ID="ID_448569910" MODIFIED="1446029246847" TEXT="Child block indexes will inherit parents"/>
</node>
<node CREATED="1446028942652" ID="ID_1024025281" MODIFIED="1446028970279" TEXT="When the system asks for the current upgrade, or messages, it will reference the current block index"/>
<node CREATED="1446028980884" ID="ID_953273489" MODIFIED="1446029002392" TEXT="From there, for messages, it can mark them as read, delete them or whatever."/>
<node CREATED="1446029003004" ID="ID_1266771692" MODIFIED="1446029021887" TEXT="For client upgrades, we just check the conditions of the upgrade"/>
<node CREATED="1446029324396" ID="ID_425425220" MODIFIED="1446029364609" TEXT="If we reorg, we just leave the entries (this should happen rarely enough that we don&apos;t worry about deleting the objects"/>
<node CREATED="1446029022572" ID="ID_1840283809" MODIFIED="1446029194519" TEXT="I wonder if we could simplify this into vector&lt;pair&lt;id,type&gt; &gt; to allow other types later on besides messages and client upgrades">
<node CREATED="1446075526055" ID="ID_656492174" MODIFIED="1446075540274" TEXT="Nice, but we need to be able to combine upgrades into one, don&apos;t we?">
<node CREATED="1446075566246" ID="ID_1362445130" MODIFIED="1446075596947" TEXT="We could do it after the fact, when we look at the current block index, we read all the upgrade objects, combine them and decide what to do"/>
</node>
<node CREATED="1446075879223" ID="ID_1767053642" MODIFIED="1446075926131" TEXT="We can&apos;t let this vector get too big, so we&apos;ll have to let messages expire on their own."/>
</node>
</node>
</node>
</node>
<node CREATED="1446682345865" ID="ID_1233356391" MODIFIED="1446682350845" TEXT="Enforcement">
<node COLOR="#ff0000" CREATED="1446682352794" ID="ID_1870972562" MODIFIED="1446682660543" TEXT="if past the deadline, upgrade information is shown, system won&apos;t start"/>
<node COLOR="#ff0000" CREATED="1446682374401" ID="ID_560528344" MODIFIED="1446682660311" TEXT="If an &quot;unsafe&quot; command is used, error will be shown"/>
<node COLOR="#ff0000" CREATED="1446682429241" ID="ID_1267419512" MODIFIED="1446682660079" TEXT="getupgradeinfo will show upgrade information"/>
<node COLOR="#ff0000" CREATED="1446682447976" ID="ID_1073954145" MODIFIED="1446682659809" TEXT="upgrade message is repeatedly shown in the log">
<node CREATED="1446682492729" ID="ID_1293730630" MODIFIED="1446682498596" TEXT="frequency?">
<node CREATED="1446682499664" ID="ID_1125849435" MODIFIED="1446682535645" TEXT="Every received block?">
<node CREATED="1446682640104" ID="ID_1204925875" MODIFIED="1446682658073" TEXT="Should be good enough">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1444811335783" ID="ID_1202491412" MODIFIED="1444811385763" TEXT="OP_DISPLAY_MSG &lt;msg&gt;">
<node COLOR="#ff0000" CREATED="1445912895490" ID="ID_370974018" MODIFIED="1445912903179" TEXT="TODO"/>
<node CREATED="1445923032154" ID="ID_1815934047" MODIFIED="1445923037877" TEXT="There is no limit to msg size"/>
</node>
<node CREATED="1445068782820" ID="ID_769852395" MODIFIED="1445913589636" TEXT="OP_VOTE &lt;block deadline&gt; &lt;txn hash&gt;">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1445068899691" ID="ID_1371650880" MODIFIED="1445068912608" TEXT="block deadline is an epoch time"/>
<node CREATED="1445068913043" ID="ID_257750203" MODIFIED="1445068957145" TEXT="Vote is only valid if it appears in a block where the block&apos;s epoch time &lt;= the deadline"/>
<node CREATED="1445068957748" ID="ID_1675412541" MODIFIED="1445912922807" TEXT="txn is a proposal txn"/>
<node CREATED="1445507643238" ID="ID_1522598173" MODIFIED="1445509581095" TEXT="Should we allow to vote with premature stakes/coinbase?">
<node CREATED="1445507676853" ID="ID_1640787620" MODIFIED="1445509581095" TEXT="For coinbase, no">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1445507682341" ID="ID_345537577" MODIFIED="1445509581095" TEXT="For stakes, the problem is that if the user stakes right before they wanted to vote, then they won&apos;t be able to vote until the staking confirms"/>
<node CREATED="1445507719877" ID="ID_1822723908" MODIFIED="1445509581097" TEXT="It is complicated to do this, because we don&apos;t want the voting txn to be a way around the min maturity for the coinstake"/>
<node CREATED="1445508539414" ID="ID_1721476046" MODIFIED="1445509581099" TEXT="The other problem is that the maturity factor is relevant to nomiccoin">
<node CREATED="1445508558110" ID="ID_1833683050" MODIFIED="1445509581099" TEXT="Quote: Currently coins can be spend 30 blocks after they were mined. That is 30 minutes, much lower than the nearly 17 hours used by Bitcoin.  My understanding is that this time is mostly protection in case of a fork: Since transactions are relayed around the whole network, most transactions should end up in the blockchain on both sides of a fork. The notable exeption are block rewards which were mined on one side of the fork. They are invalid on the other side of the fork, since that block wasn&apos;t mined there. So if anybody knows that a long fork is happening, he can spend freshly mined coins and have a notable chance that that payment is confirmed but later marked as invalid when the fork is resolved.  "/>
</node>
<node CREATED="1445508580854" ID="ID_1228512341" MODIFIED="1445509581101" TEXT="I say no for coinstake also">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1445508635710" ID="ID_1530331366" MODIFIED="1445509581101" TEXT="If someone wants to vote, they should have done so long enough before the deadline that this isn&apos;t an issue (500 blocks = around 8 hours currently)"/>
<node CREATED="1445508678062" ID="ID_1654495927" MODIFIED="1445509581102" TEXT="If someone stakes while holding a vote, the stake automatically still holds onto the original vote"/>
<node CREATED="1445508793327" ID="ID_689179141" MODIFIED="1445509581104" TEXT="I think that, in order to prevent a forked block because the staked vote pushed the election over the 51% required, and a fork would destroy it can be solved by not allowing the vote to redeem for 8 hours after it has won"/>
</node>
<node CREATED="1445509384350" ID="ID_1246543394" MODIFIED="1445733798693" TEXT="What if we made votes have to mature as well?">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1445509432982" ID="ID_493897822" MODIFIED="1445509581105" TEXT="It would mean that we wouldn&apos;t have to search back through the txn history looking for a coinbase or coinstake"/>
<node CREATED="1445509461270" ID="ID_1172560644" MODIFIED="1445509581107" TEXT="We could allow votes to occur right after a coinstake, it wouldn&apos;t be a big deal, because the coins still couldn&apos;t be moved (and spent with a merchant)"/>
<node CREATED="1445509562422" ID="ID_769847997" MODIFIED="1445733792936" TEXT="Probably the easiest solution and it seems fair enough. I doubt there will be many complaints">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1445913554723" ID="ID_748204266" MODIFIED="1445913577443" TEXT="Fallback if chasing the ancestors is too much of a pain">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#ff0000" CREATED="1445913577987" ID="ID_1927579689" MODIFIED="1445913580427" TEXT="TODO"/>
</node>
<node CREATED="1445510066119" ID="ID_205432673" MODIFIED="1445510451260" TEXT="voting freezes funds until coinbase_maturity?">
<node CREATED="1445510081246" ID="ID_380593311" MODIFIED="1445510362226" TEXT="This is to prevent problems with double spends and coinstake. A voting transaction can occur with out respecting coinbase_maturity. This is to allow the user to vote even if they staked right before an election. However, doing so masks the coinstake. Rather than chasing it its ancestors to determine if they are coinstake/coinbase and haven&apos;t matured, we just check this">
<node CREATED="1445510365751" ID="ID_343334720" MODIFIED="1445510392930" TEXT="FUTURE - we may want to remove this restriction, it reduces complexity in its explaination"/>
</node>
<node CREATED="1445510451886" ID="ID_552019510" MODIFIED="1445913550503" TEXT="But, available credit is shown based on maturity. So that means whenever someone votes, their balance appears to go to zero for 8 hours. It&apos;s complex from a UI perspective, and annoying to the user">
<node CREATED="1445913370131" ID="ID_1773593501" MODIFIED="1445913382062" TEXT="We create spendable balance and balance to make this more clear"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1445922620082" ID="ID_80061481" MODIFIED="1445922631190" TEXT="OP_PUBLIC_SCRIPT">
<node CREATED="1445922635314" ID="ID_269153272" MODIFIED="1445922993502" TEXT="This is for a proposal that the public runs. For the public to run a script, this must be the first op code in a script, and must be in a redeemed proposal. If it is not present, the public won&apos;t run the script. If it is, it can&apos;t be run as a private script"/>
<node CREATED="1445922930706" ID="ID_1474328782" MODIFIED="1445922955918" TEXT="If a script with OP_PUBLIC_SCRIPT is run by a private entity, it will always return false"/>
<node CREATED="1445922665202" ID="ID_1804295920" MODIFIED="1445922693693" TEXT="A proposal txn may contain both public and private outputs">
<node CREATED="1445922695433" ID="ID_1970408472" MODIFIED="1445922712749" TEXT="A public output everyone should run, and has display msg and upgrade client ops in it"/>
</node>
<node COLOR="#ff0000" CREATED="1445923078930" ID="ID_85123002" MODIFIED="1445923081721" TEXT="TODO"/>
</node>
<node COLOR="#ff0000" CREATED="1446002470581" ID="ID_859581316" MODIFIED="1446002552117" TEXT="OP_REGISTER_ALERT_PUBLIC_KEY????">
<node CREATED="1446002482197" ID="ID_392360717" MODIFIED="1446002499097" TEXT="Allows a new user to send an alert to the network"/>
</node>
<node COLOR="#ff0000" CREATED="1446002501453" ID="ID_1413491840" MODIFIED="1446002552405" TEXT="OP_REVOKE_ALERT_PUBLIC_KEY????">
<node CREATED="1446002512205" ID="ID_1762033954" MODIFIED="1446002518345" TEXT="Revokes an alert public key"/>
</node>
</node>
<node CREATED="1445911135323" ID="ID_1928758003" MODIFIED="1445911137415" TEXT="checkpoints">
<node CREATED="1445829674457" ID="ID_875566654" MODIFIED="1445911148650" TEXT="Publish checkpoints to forums/public places">
<node CREATED="1445829808817" ID="ID_1148533373" MODIFIED="1445911112423" TEXT="Add rpc to enforce checkpoint"/>
<node COLOR="#ff0000" CREATED="1445912959042" ID="ID_1388228549" MODIFIED="1445912962131" TEXT="TODO"/>
</node>
<node CREATED="1445829731113" ID="ID_1760783197" MODIFIED="1445911174386" TEXT="Checkpoint is harded coded into source and can be upgraded">
<node COLOR="#ff0000" CREATED="1445912964722" ID="ID_1080183006" MODIFIED="1445912966763" TEXT="TODO"/>
</node>
</node>
<node CREATED="1444811826007" ID="ID_70535443" MODIFIED="1446682078051" TEXT="new rpc commands">
<node CREATED="1444811832655" ID="ID_536155444" MODIFIED="1444997746588" TEXT="createproposal &lt;poll deadline&gt; [commands...]">
<node CREATED="1444811867511" ID="ID_1627882680" MODIFIED="1444811870516" TEXT="commands are:">
<node CREATED="1444811871543" ID="ID_1550214091" MODIFIED="1444811880348" TEXT="display_msg &lt;message&gt;">
<node CREATED="1444960272645" ID="ID_827995741" MODIFIED="1444990436979" TEXT="What is the max message size?">
<node CREATED="1444990439658" ID="ID_608735069" MODIFIED="1444990441727" TEXT="140 chars"/>
</node>
</node>
<node CREATED="1444811881535" ID="ID_1712691062" MODIFIED="1444811895475" TEXT="upgrade_client &lt;md5 sum&gt; &lt;deadline&gt;"/>
<node CREATED="1444811896263" ID="ID_572978824" MODIFIED="1444811911099" TEXT="spend_pool &lt;to_address&gt; &lt;amt&gt;"/>
</node>
<node CREATED="1444811955303" ID="ID_1721155090" MODIFIED="1444812072032" TEXT="returns">
<node CREATED="1444812057719" ID="ID_765820127" MODIFIED="1444812061019" TEXT="vote blob">
<node CREATED="1444811975423" ID="ID_1281186894" MODIFIED="1444811979500" TEXT="blob contains:">
<node CREATED="1444811981079" ID="ID_1680189055" MODIFIED="1444811991011" TEXT="raw txn"/>
<node CREATED="1444811991711" ID="ID_1530000969" MODIFIED="1444812054651" TEXT="poll_deadline"/>
<node CREATED="1445910403250" ID="ID_1759899215" MODIFIED="1445910405502" TEXT="checksum"/>
</node>
</node>
<node CREATED="1444812191544" ID="ID_1286388180" MODIFIED="1444999073426" TEXT="raw txn"/>
</node>
<node CREATED="1444981940827" ID="ID_951734612" MODIFIED="1444981943750" TEXT="txn">
<node CREATED="1444981945274" ID="ID_1982869491" MODIFIED="1445912997343" TEXT="txn will have no source (its almost like a coinbase)">
<node CREATED="1445912999083" ID="ID_942505510" MODIFIED="1445913003534" TEXT="money subtracted from pool"/>
</node>
<node CREATED="1444981956514" ID="ID_1177631655" MODIFIED="1444981966255" TEXT="it will not attempt to compute fees or give change">
<node CREATED="1444981968514" ID="ID_183370469" MODIFIED="1444982003718" TEXT="The money not spent will be dumped back into the pool (all transactions send fees to the pool so this will be automatic)"/>
</node>
<node CREATED="1444982499714" ID="ID_176325989" MODIFIED="1444990594638" TEXT="Txn will be partial, it will not have any inputs">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1444982554275" ID="ID_408601384" MODIFIED="1444990076805" TEXT="The presence of a vote unlock will cause the vote to be marked as received. This prevents the same proposal transaction from running twice. Since we need to cache votes to various blocks anyway, this shouldn&apos;t be a big deal.">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1444998602615" ID="ID_680113161" MODIFIED="1444998604602" TEXT="args">
<node CREATED="1444998605566" ID="ID_533375239" MODIFIED="1444998607203" TEXT="deadline"/>
</node>
</node>
<node CREATED="1444812008007" ID="ID_332911290" MODIFIED="1445914697104" TEXT="vote &lt;txn hash&gt; &lt;poll deadline&gt;">
<node CREATED="1444812123687" ID="ID_1695647757" MODIFIED="1444812141203" TEXT="User votes with all funds. Splitting vote will be too tricky"/>
<node CREATED="1444998643158" ID="ID_1501782191" MODIFIED="1444998651274" TEXT="poll deadline is in epoch seconds"/>
</node>
<node CREATED="1445911588699" ID="ID_1438884673" MODIFIED="1445911608358" TEXT="addcheckpoint &lt;checkpoint blob&gt;">
<node CREATED="1445911609707" ID="ID_905862483" MODIFIED="1445912279566" TEXT="Adds a checkpoint (manually copied from the web)"/>
<node COLOR="#ff0000" CREATED="1445914699084" ID="ID_1233201537" MODIFIED="1445914703076" TEXT="TODO"/>
</node>
<node CREATED="1445911627635" ID="ID_737243798" MODIFIED="1445912321370" TEXT="removecheckpoint &lt;checkpoint blob&gt;">
<node CREATED="1445912263785" ID="ID_1787242606" MODIFIED="1445912274934" TEXT="Removes a checkpoint"/>
<node COLOR="#ff0000" CREATED="1445914699084" ID="ID_1961142832" MODIFIED="1445914703076" TEXT="TODO"/>
</node>
</node>
<node CREATED="1444904510571" ID="ID_116372185" MODIFIED="1444904515367" TEXT="PoW">
<node CREATED="1444904518467" ID="ID_1505124101" MODIFIED="1444904531199" TEXT="PoW is activated if PoS takes over 5 minutes"/>
<node CREATED="1444904531779" ID="ID_206406262" MODIFIED="1445914726392" TEXT="For each PoW block found, 1 coin is rewarded?">
<node CREATED="1445914727948" ID="ID_1548353102" MODIFIED="1445914756544" TEXT="I think that PoW should have more strength, about the same as PoS. We can look at prior blocks and get an average strength, and then apply that to PoW"/>
<node CREATED="1445914757020" ID="ID_113850323" MODIFIED="1445914765992" TEXT="Otherwise the chain can be forked too easily"/>
<node CREATED="1445992952757" ID="ID_729082658" MODIFIED="1445992969983" TEXT="Except that, this opens up another option for anyone trying to attack the network"/>
<node CREATED="1445993015676" ID="ID_929686800" MODIFIED="1445993029576" TEXT="Maybe it should depend on how far back the fork is?"/>
<node CREATED="1445993031820" ID="ID_1969753691" MODIFIED="1445993034926" TEXT="FUTURE">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1444904553963" ID="ID_739409234" MODIFIED="1444904563527" TEXT="As soon as PoS gets going again, PoW is disallowed"/>
</node>
<node CREATED="1444990083724" ID="ID_1078318025" MODIFIED="1444990088615" TEXT="cache">
<node CREATED="1444990157810" ID="ID_822606166" MODIFIED="1445914857408" TEXT="We create a total for each txn and deadline within the db"/>
</node>
<node CREATED="1444996931023" FOLDED="true" ID="ID_1706006000" MODIFIED="1446429426198" TEXT="voting">
<node CREATED="1444996943038" ID="ID_690197111" MODIFIED="1445912547983" TEXT="Cannot take place for the first few blocks... to give people a chance to register to vote">
<node CREATED="1445912557723" ID="ID_514581827" MODIFIED="1445912615743" TEXT="A proposal can be created right away, but its deadline has to be a few weeks out"/>
<node COLOR="#ff0000" CREATED="1445912527931" ID="ID_1714713472" MODIFIED="1445912530635" TEXT="TODO"/>
</node>
<node CREATED="1445166765950" ID="ID_89787394" MODIFIED="1445328758091" TEXT="vote counting">
<node CREATED="1445166778663" ID="ID_15509234" MODIFIED="1445166790451" TEXT="new db record, based on best chain (like txn)"/>
<node CREATED="1445168341927" ID="ID_180799741" MODIFIED="1445168346116" TEXT="Before the deadline">
<node CREATED="1445168257760" ID="ID_616330575" MODIFIED="1445168284380" TEXT="When we get a vote, we add/update the corresponding record"/>
<node CREATED="1445168284967" ID="ID_1817559673" MODIFIED="1445169545885" TEXT="When we get a txn that has a prior input that is a vote, we delete the vote from the record. If the record is empty, we delete it">
<node CREATED="1445168364104" ID="ID_642445228" MODIFIED="1445168414651" TEXT="Note that if a stake is done, and combined, then votes will automatically be recast"/>
</node>
</node>
<node CREATED="1445168420168" ID="ID_153145017" MODIFIED="1445168424939" TEXT="After the deadline">
<node CREATED="1445168477663" ID="ID_1283390177" MODIFIED="1445169414725" TEXT="We reject any vote txn after deadline, regardless of timestamp"/>
<node CREATED="1445168882256" ID="ID_679658431" MODIFIED="1445169367428" TEXT="Vote count is frozen and never changes"/>
<node CREATED="1445169013416" ID="ID_1964754817" MODIFIED="1445169357477" TEXT="Note that because of forks, and possible reorgs, we can not delete vote count entries ">
<node CREATED="1445169124785" ID="ID_1906495321" MODIFIED="1445169145541" TEXT="If we have a checkpoint, we can prune out old data items, but that would include txns, too. ">
<node CREATED="1445169162064" ID="ID_1807194911" MODIFIED="1445169163869" TEXT="FUTURE"/>
</node>
</node>
</node>
<node CREATED="1445169437505" ID="ID_1653078411" MODIFIED="1445328764877" TEXT="Rewinding for a reorg">
<node COLOR="#009999" CREATED="1445328821294" FOLDED="true" ID="ID_1872478295" MODIFIED="1445328843870" TEXT="old">
<node CREATED="1445169463233" ID="ID_997560439" MODIFIED="1445328831763" TEXT="Before deadline">
<node CREATED="1445168284967" ID="ID_749629396" MODIFIED="1445169506084" TEXT="When we get a txn that has a prior input that is a vote, we add the vote to the record"/>
<node CREATED="1445168257760" ID="ID_1090237758" MODIFIED="1445169525621" TEXT="When we get a vote, we delete the vote from the corresponding record. If the record is empty, we delete it"/>
</node>
<node CREATED="1445169449105" ID="ID_1217967193" MODIFIED="1445169455477" TEXT="After deadline">
<node CREATED="1445169456849" ID="ID_75679471" MODIFIED="1445169460581" TEXT="Vote count never changes"/>
</node>
</node>
<node CREATED="1445328768269" ID="ID_1208645903" MODIFIED="1445328819327" TEXT="We don&apos;t need to worry about this. Since we aren&apos;t affecting past blocks, it doesn&apos;t matter what the block index for the disconnected block contains">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1445690993967" ID="ID_922502430" MODIFIED="1445691032746" TEXT="Votes within a block before or on the deadline counts towards it. Votes within a block after the deadline does not"/>
</node>
<node CREATED="1445169906217" ID="ID_1314047598" MODIFIED="1445169912317" TEXT="voting participation counting">
<node CREATED="1445170696890" ID="ID_1878022510" MODIFIED="1445170707277" TEXT="BlockIndex contains">
<node CREATED="1445170709096" ID="ID_381771334" MODIFIED="1445170713558" TEXT="voteDelta">
<node CREATED="1445170715752" ID="ID_271545280" MODIFIED="1445170722309" TEXT="Change in voting transactions">
<node CREATED="1445170789010" ID="ID_1666088884" MODIFIED="1445170802926" TEXT="When a voting txn is created, delta is increased"/>
<node CREATED="1445170803442" ID="ID_1291636438" MODIFIED="1445305465827" TEXT="When a voting txn is replaced, delta is decreased"/>
<node CREATED="1445170821384" ID="ID_1381255416" MODIFIED="1445170838076" TEXT="Voting deadline has no effect"/>
<node CREATED="1445170838537" ID="ID_882353901" MODIFIED="1445170876956" TEXT="The above will find the current active voters changes that this block effects"/>
</node>
</node>
<node CREATED="1445170723273" ID="ID_1298636252" MODIFIED="1445170737894" TEXT="votersInVotePeriod">
<node CREATED="1445170740594" ID="ID_1162547574" MODIFIED="1445170756661" TEXT="Rolling total voters in voting period (2 weeks or so)">
<node CREATED="1445170886593" ID="ID_295574145" MODIFIED="1445170904837" TEXT="The block exactly VOTING_PERIOD ago has it&apos;s delta subtracted from the total"/>
</node>
</node>
<node CREATED="1445170914945" ID="ID_432060281" MODIFIED="1445170959614" TEXT="The above 2 fields should calculate the votersInVotePeriod properly"/>
</node>
</node>
<node CREATED="1445506035756" ID="ID_1866982165" MODIFIED="1445912689538" TEXT="What about multisig and voting?">
<node CREATED="1445912648442" ID="ID_541741698" MODIFIED="1445912671327" TEXT="It should work, but I think I&apos;ll official test this later"/>
<node CREATED="1445912680603" ID="ID_1628718584" MODIFIED="1445912682069" TEXT="FUTURE">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff0000" CREATED="1445736539117" ID="ID_853020845" MODIFIED="1445736553893" TEXT="Should we allow voting for different entities with different accounts?">
<node CREATED="1445736557125" ID="ID_284316600" MODIFIED="1445736569161" TEXT="People might share a wallet and use different accounts for each of them"/>
<node CREATED="1445912701098" ID="ID_1816890497" MODIFIED="1445912706527" TEXT="Yes, as long as its easy"/>
<node COLOR="#ff0000" CREATED="1445912707050" ID="ID_1673348619" MODIFIED="1445912709074" TEXT="TODO"/>
</node>
<node COLOR="#ff0000" CREATED="1446393546512" ID="ID_1925200700" MODIFIED="1446393560442" TEXT="Should we prevent a deadline that is too early?">
<node CREATED="1446393566932" ID="ID_99940264" MODIFIED="1446393601386" TEXT="An attacker could see that the total votes is really low, and then set a deadline after 30 seconds or so and then immediately vote"/>
<node CREATED="1446393636313" ID="ID_667673206" MODIFIED="1446393638120" TEXT="Yes"/>
<node COLOR="#ff0000" CREATED="1446393638527" ID="ID_1845111188" MODIFIED="1446393641729" TEXT="TODO"/>
</node>
</node>
<node CREATED="1446429428140" ID="ID_1905534355" MODIFIED="1446429438130" TEXT="proposal txn">
<node CREATED="1446429442178" ID="ID_1112789658" MODIFIED="1446429572969" TEXT="Should we allow proposal txns with more than one input?">
<node CREATED="1446429467700" ID="ID_829302692" MODIFIED="1446429501163" TEXT="In other words, a txn based on another account besides the shared pool"/>
<node CREATED="1446429521406" ID="ID_1600005927" MODIFIED="1446429541378" TEXT="It could be a way for an entity to say, I&apos;ll pay some of the fee needed to accomplish this task."/>
<node CREATED="1446429541949" ID="ID_1322084809" MODIFIED="1446429545738" TEXT="Sounds useful, actually"/>
<node CREATED="1446429747315" ID="ID_433853930" MODIFIED="1446429857801" TEXT="But, suppose the entity doesn&apos;t have much funds, then the remainder will be paid by the pool">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1446429864571" ID="ID_652866961" MODIFIED="1446429873762" TEXT="There is no way to specifiy how much each input should pay"/>
</node>
<node CREATED="1446429567821" ID="ID_1187223072" MODIFIED="1446429854482" TEXT="No">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1446306157404" ID="ID_70177628" MODIFIED="1446306160213" TEXT="voting results">
<node CREATED="1446192619433" FOLDED="true" ID="ID_1763214564" MODIFIED="1446429409625" TEXT="How do we want to programmatically organize this?">
<node CREATED="1446192796937" ID="ID_1303816729" MODIFIED="1446192799574" TEXT="Operations">
<node CREATED="1446192801034" FOLDED="true" ID="ID_621414025" MODIFIED="1446194703223" TEXT="1.Create and save upgrade and messages">
<node CREATED="1446192819546" ID="ID_369438490" MODIFIED="1446192824493" TEXT="Save to db each object"/>
<node CREATED="1446192824914" ID="ID_542431916" MODIFIED="1446192830614" TEXT="Write to blockindex"/>
</node>
<node CREATED="1446192851610" ID="ID_1039330289" MODIFIED="1446194706903" TEXT="2. Load objects from db"/>
<node CREATED="1446192862282" ID="ID_928297899" MODIFIED="1446194711863" TEXT="3. Delete object from block index">
<node CREATED="1446192875666" ID="ID_1487018507" MODIFIED="1446192884878" TEXT="Maybe delete from db (not so important)"/>
</node>
</node>
<node CREATED="1446192832730" ID="ID_406366759" MODIFIED="1446192834141" TEXT="Concerns">
<node CREATED="1446192835794" ID="ID_262671166" MODIFIED="1446192849182" TEXT="Minimize memory usage of blockindex"/>
<node CREATED="1446192895522" ID="ID_1931324302" MODIFIED="1446192898005" TEXT="Expandable"/>
</node>
<node CREATED="1446192787049" ID="ID_1744781010" MODIFIED="1446193397350" TEXT="Methods">
<node CREATED="1446194354763" ID="ID_1262241963" MODIFIED="1446280962157" TEXT="m1">
<node CREATED="1446195871428" ID="ID_549761796" MODIFIED="1446196001480" TEXT="CBllockIndexObject Interface">
<node COLOR="#0033ff" CREATED="1446204880019" FOLDED="true" ID="ID_1951452773" MODIFIED="1446268335334" TEXT="Visitor">
<node CREATED="1446194319867" ID="ID_761108207" MODIFIED="1446204897319" TEXT="SaveToDbVisitor">
<node CREATED="1446204901530" ID="ID_569294926" MODIFIED="1446204901530" TEXT=""/>
</node>
<node CREATED="1446195007891" ID="ID_389047528" MODIFIED="1446204899606" TEXT="RunObjectVisitor">
<node CREATED="1446205198947" ID="ID_930875695" MODIFIED="1446205218838" TEXT="ProposalMessage">
<node CREATED="1446205220235" ID="ID_1743784865" MODIFIED="1446205376999" TEXT="collects all proposal messages in local vector"/>
<node CREATED="1446205402603" ID="ID_729635296" MODIFIED="1446205409663" TEXT="How do we remove dead messages?"/>
</node>
<node CREATED="1446205250499" ID="ID_1889288297" MODIFIED="1446205260055" TEXT="UpgradeRequest"/>
</node>
<node CREATED="1446205487531" ID="ID_142998441" MODIFIED="1446205523247" TEXT="Returns boolean false when there is an error"/>
<node CREATED="1446205523723" ID="ID_833983004" MODIFIED="1446205543590" TEXT="Has reference to var deleteMe to delete from cblockindex ">
<node CREATED="1446205578147" ID="ID_950439223" MODIFIED="1446205587375" TEXT="But it doesn&apos;t work for SaveToDbVisitor"/>
<node CREATED="1446205591355" ID="ID_1679181035" MODIFIED="1446205606151" TEXT="Maybe RunObjectVisitor doesn&apos;t implement Visitor"/>
<node CREATED="1446205607635" ID="ID_785374844" MODIFIED="1446205619015" TEXT="What if we just had a &quot;run&quot; method?">
<node CREATED="1446205626491" ID="ID_458552917" MODIFIED="1446205640311" TEXT="It could set the deleteMe ref"/>
<node CREATED="1446205640739" ID="ID_269696930" MODIFIED="1446205645614" TEXT="and return bool for an error"/>
<node CREATED="1446205683051" ID="ID_328123687" MODIFIED="1446205692142" TEXT="and update the static vars necessary for these functions directly"/>
</node>
</node>
<node CREATED="1446205498931" ID="ID_1655458191" MODIFIED="1446205503342" TEXT="What about errors?"/>
<node CREATED="1446205723699" ID="ID_848220106" MODIFIED="1446205724963" TEXT="No">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1446268344130" ID="ID_686308716" MODIFIED="1446268374108" TEXT="SaveToDb"/>
<node CREATED="1446205727235" ID="ID_745804427" MODIFIED="1446268419374" TEXT="Run">
<node CREATED="1446205733019" ID="ID_899283915" MODIFIED="1446205737703" TEXT="args">
<node CREATED="1446205739043" ID="ID_1444311665" MODIFIED="1446205745703" TEXT="CTxDb"/>
<node CREATED="1446269238313" ID="ID_488291255" MODIFIED="1446269256149" TEXT="RemoveFromNextBlock"/>
</node>
<node CREATED="1446206570052" ID="ID_1076711977" MODIFIED="1446206580639" TEXT="ProposalMessage">
<node CREATED="1446206582756" ID="ID_1712202211" MODIFIED="1446206597983" TEXT="puts messages in a global place"/>
<node CREATED="1446206598514" ID="ID_970194059" MODIFIED="1446206603128" TEXT="possibly notifies qt to update"/>
</node>
<node CREATED="1446206604483" ID="ID_659376707" MODIFIED="1446206616759" TEXT="UpgradeRequest">
<node CREATED="1446206619939" ID="ID_1275939158" MODIFIED="1446206628087" TEXT="puts deadline in global place"/>
<node CREATED="1446206628610" ID="ID_908524862" MODIFIED="1446206634470" TEXT="puts version info in global place"/>
<node CREATED="1446206634891" ID="ID_507071574" MODIFIED="1446206645407" TEXT="If already exists, updates appropriately"/>
<node CREATED="1446206645699" ID="ID_1019138508" MODIFIED="1446206659455" TEXT="Maybe uses a uber version of UpgradeRequest">
<node CREATED="1446206660916" ID="ID_1804947818" MODIFIED="1446206666495" TEXT="Deadline is updated"/>
<node CREATED="1446206666891" ID="ID_960439706" MODIFIED="1446206671791" TEXT="Version is updated"/>
</node>
</node>
<node CREATED="1446269510786" ID="ID_247224507" MODIFIED="1446269518477" TEXT="Should we create a structure to hold all this?">
<node CREATED="1446269522505" ID="ID_296034526" MODIFIED="1446269554229" TEXT="That way, we can pass it in to Run, and the methods can resonably assume the messages/upgrade request from the prior block has been cleared out already"/>
<node CREATED="1446269554753" ID="ID_529761958" MODIFIED="1446269567589" TEXT="Should we store it in CBlockIndex?">
<node CREATED="1446269568874" ID="ID_1283051655" MODIFIED="1446269600949" TEXT="I don&apos;t think thats a good idea because we don&apos;t need to waste the extra memory (although it would be small)"/>
</node>
</node>
<node CREATED="1446269636297" ID="ID_896405330" MODIFIED="1446269643173" TEXT="When should this method be called?">
<node CREATED="1446269644489" ID="ID_1267645932" MODIFIED="1446269673989" TEXT="We don&apos;t want to call it everytime we get a connect block... wait we&apos;ll have to, because we won&apos;t know when the messages and upgrade requests expire"/>
<node CREATED="1446269677329" ID="ID_1906613617" MODIFIED="1446269700277" TEXT="It will slow down the block reading a little to read the messages and upgrade requests for every block, however">
<node CREATED="1446269741297" ID="ID_1083719419" MODIFIED="1446271457534" TEXT="We can keep the array in memory, but then we still need a flag to mark messages read"/>
</node>
<node CREATED="1446269759489" ID="ID_416065588" MODIFIED="1446270078669" TEXT="Maybe we should just go back to CPublicInformation">
<node CREATED="1446270081658" ID="ID_1233650354" MODIFIED="1446270107318" TEXT="Whenever we connect a block, we just update this structure, removing expired messages, and updating upgrade requests"/>
<node CREATED="1446270116426" ID="ID_1585810395" MODIFIED="1446270349405" TEXT="What about marking messages?">
<node CREATED="1446270363218" ID="ID_877334718" MODIFIED="1446270376998" TEXT="db.WriteMessageRead(messageHash,isRead)"/>
</node>
<node CREATED="1446270394850" ID="ID_643431126" MODIFIED="1446271371946" TEXT="What about Reorg?">
<node CREATED="1446270756106" ID="ID_964369727" MODIFIED="1446270776382" TEXT="We need to be able to know which messages/upgrade requests are active for any block"/>
<node CREATED="1446270779522" ID="ID_1462610864" MODIFIED="1446270800142" TEXT="This is why we need to store them as separate objects that attach themselves to the block chain"/>
<node CREATED="1446271374898" ID="ID_378710823" MODIFIED="1446271390038" TEXT="Or at least something in the block index objects"/>
</node>
<node CREATED="1446270801458" ID="ID_1327009338" MODIFIED="1446270827150" TEXT="What if we store CPublicInformation within the CBlockIndex?">
<node CREATED="1446270828674" ID="ID_647035244" MODIFIED="1446270845270" TEXT="Then we don&apos;t need a vector of hashes any more, just a single hash to CPublicInformation"/>
<node CREATED="1446270846306" ID="ID_938432876" MODIFIED="1446270869342" TEXT="We can store it in the db until its necessary to get."/>
<node CREATED="1446270872642" ID="ID_1673214983" MODIFIED="1446271055639" TEXT="How does CDiskBlockIndex work?">
<node CREATED="1446271058730" ID="ID_1074350851" MODIFIED="1446271074950" TEXT="hashes of prev and next are kept here"/>
<node CREATED="1446271038578" ID="ID_1839439453" MODIFIED="1446271051118" TEXT="It has a constructor that takes a CBlockIndex and just hashes prev and next"/>
</node>
<node CREATED="1446271323146" ID="ID_1894981097" MODIFIED="1446271367227" TEXT="Its too much complication">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1446271399578" ID="ID_525196639" MODIFIED="1446271663123" TEXT="We can, but then we need to store CPublicInformation for every block index, and so, why not keep that information within blockindex, and if so we are kind of back where we were">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1446271594930" ID="ID_851441523" MODIFIED="1446271607598" TEXT="We could store messages as messages, and the upgrade request as a single thing"/>
<node CREATED="1446271608042" ID="ID_492816252" MODIFIED="1446271614502" TEXT="I mean, they are kind of related but not really."/>
</node>
<node CREATED="1446271652642" ID="ID_576437311" MODIFIED="1446271661627" TEXT="I think the way we&apos;re doing it is good enough">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1446194185795" ID="ID_1861283262" MODIFIED="1446196100038" TEXT="put type,hash vector into CBlockIndex">
<node CREATED="1446194193962" ID="ID_38475981" MODIFIED="1446195985272" TEXT="ReadCBlockIndexObject">
<node CREATED="1446195922844" ID="ID_5763411" MODIFIED="1446195934336" TEXT="uses switch to determine which object to read"/>
<node CREATED="1446194832291" ID="ID_1365089942" MODIFIED="1446194923031" TEXT="populates vector or smart pointer"/>
<node CREATED="1446195972140" ID="ID_381435381" MODIFIED="1446195974464" TEXT="directly in db.c"/>
<node CREATED="1446205772587" ID="ID_3635045" MODIFIED="1446205773559" TEXT="args">
<node CREATED="1446205775331" ID="ID_1080833172" MODIFIED="1446205780870" TEXT="type"/>
<node CREATED="1446205781315" ID="ID_1566663917" MODIFIED="1446205782414" TEXT="hash"/>
</node>
</node>
</node>
<node CREATED="1446196132116" ID="ID_253506751" MODIFIED="1446196155648" TEXT="Call RunObject when connecting the next block, RunObject returns false if should be removed from block chain"/>
<node CREATED="1446280937431" ID="ID_782739257" MODIFIED="1446280944051" TEXT="Where do we put these new classes?">
<node CREATED="1446280964887" ID="ID_1409571489" MODIFIED="1446280986083" TEXT="script.cpp needs them because we create them in EvalScript"/>
<node CREATED="1446280986900" ID="ID_395618631" MODIFIED="1446281014079" TEXT="Yet they need access to CTxDb which script.h doesn&apos;t have"/>
</node>
<node COLOR="#ff0000" CREATED="1446297807937" ID="ID_4986919" MODIFIED="1446298478345" TEXT="Should CBlockIndex just have an actual vector (or pointer to one) of CBlockIndexObjects?">
<node CREATED="1446297859153" ID="ID_1359580513" MODIFIED="1446298035189" TEXT="So when we connect, we build the vector, and then run it?"/>
<node CREATED="1446298035609" ID="ID_212355919" MODIFIED="1446298290214" TEXT="Then when we save it, we do the other "/>
<node CREATED="1446306015240" ID="ID_617184599" MODIFIED="1446306130429" TEXT="I don&apos;t see why we even put the vector at all, and not just the hashes">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1446306105457" ID="ID_548875537" MODIFIED="1446306124667" TEXT="We don&apos;t want to load it for every index, only the current one, and we don&apos;t need it after we have loaded it"/>
</node>
</node>
<node COLOR="#ff0000" CREATED="1446291933269" ID="ID_41317909" MODIFIED="1446307579671" TEXT="So what is the flow?">
<node CREATED="1446307579661" ID="ID_1088465509" MODIFIED="1446307586072" TEXT="ConnectBlock">
<node CREATED="1446296295496" ID="ID_638010940" MODIFIED="1446296303396" TEXT="A new block comes in"/>
<node CREATED="1446296303864" ID="ID_1007532634" MODIFIED="1446296325533" TEXT="ConnectBlock sees a redeemable proposal txn"/>
<node CREATED="1446296325968" ID="ID_1828880583" MODIFIED="1446306500433" TEXT="It calls EvalForPublic, which creates a list of public block objects"/>
<node CREATED="1446306691125" ID="ID_431013027" MODIFIED="1446306710991" TEXT="It stores the hashes of the items in the block index (to be saved within ConnectBlock)"/>
<node CREATED="1446306500865" ID="ID_91713304" MODIFIED="1446367913984" TEXT="ConnectBlock then runs BuildAppState, which sets up a CAppState object">
<font NAME="SansSerif" SIZE="13"/>
</node>
<node CREATED="1446306648509" ID="ID_1300003788" MODIFIED="1446306666634" TEXT="This object is queried when we want to read a message or whine about a necessary upgrade"/>
</node>
<node CREATED="1446307556523" ID="ID_129904958" MODIFIED="1446307590937" TEXT="LoadBlockIndex">
<node CREATED="1446307593250" ID="ID_26320904" MODIFIED="1446307617639" TEXT="After loading everything, we call LoadBlockObjects with vector of hashes"/>
<node CREATED="1446306500865" ID="ID_703262627" MODIFIED="1446367948816" TEXT="We run BuildAppState, which sets up a CAppState object">
<font NAME="SansSerif" SIZE="13"/>
</node>
<node CREATED="1446367991844" ID="ID_1369198308" MODIFIED="1446367996968" TEXT="...same as connect block"/>
</node>
<node CREATED="1446367921004" ID="ID_1751870883" MODIFIED="1446367925792" TEXT="Read message">
<node CREATED="1446368001908" ID="ID_855753695" MODIFIED="1446368017368" TEXT="We mark the message read, and call db.SaveProposalMessage"/>
</node>
<node CREATED="1446368027781" ID="ID_1211674118" MODIFIED="1446368030281" TEXT="Upgrade">
<node CREATED="1446368031628" ID="ID_95515037" MODIFIED="1446368047520" TEXT="For any rpc call, we thrown an exception stating the client needs to be upgraded"/>
<node CREATED="1446368048812" ID="ID_1262528840" MODIFIED="1446368064488" TEXT="In GUI we put it in the status bar or something"/>
</node>
</node>
<node COLOR="#ff0000" CREATED="1446370088317" ID="ID_563786974" MODIFIED="1446393537311" TEXT="Why don&apos;t we store appstate in cblockindex directly?">
<node CREATED="1446370109173" ID="ID_193544002" MODIFIED="1446370113961" TEXT="Or at least a hash to it?"/>
<node CREATED="1446370130013" ID="ID_983698006" MODIFIED="1446370182434" TEXT="Except that we need to expire messages out of it"/>
<node CREATED="1446370182829" ID="ID_1985685660" MODIFIED="1446370198298" TEXT="Of course, AppState has messages already there, anyway"/>
<node CREATED="1446370205213" ID="ID_1341274151" MODIFIED="1446370234393" TEXT="I think this makes sense. A little more brittle, but better since we don&apos;t need a list of ptrs in CBlockIndex"/>
<node CREATED="1446370541798" ID="ID_1372113124" MODIFIED="1446370566921" TEXT="Should we forgo the ptr to CAppState, and just store the object directly into CBlockIndex?">
<node CREATED="1446370568374" ID="ID_1112957113" MODIFIED="1446370637921" TEXT="If we do this, then the CAppState will be in *every* block index, but it will be simpler"/>
<node CREATED="1446370638405" ID="ID_1185641528" MODIFIED="1446370675513" TEXT="And there is really no evidence that this will be a big deal... I mean, suppose 1 million blocks, then we have maybe a message per block, if that, so that would be 100meg"/>
<node CREATED="1446370701437" ID="ID_807833339" MODIFIED="1446370731905" TEXT="But a 256hash is already 32 bytes">
<node CREATED="1446370749973" ID="ID_185802779" MODIFIED="1446370770689" TEXT="And there is no guarantee there will be any messages in CAppState at all"/>
</node>
<node CREATED="1446370743518" ID="ID_1928452904" MODIFIED="1446370747422" TEXT="So it&apos;s almost a wash">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1445502472322" ID="ID_1894994353" MODIFIED="1445502476126" TEXT="staking">
<node CREATED="1445502477587" ID="ID_916707394" MODIFIED="1445915141691" TEXT="We have to make sure that when the user votes, it doesn&apos;t change their stake hash, to prevent a grinding attack">
<font NAME="SansSerif" SIZE="12"/>
<node COLOR="#ff0000" CREATED="1445914699084" ID="ID_1522722423" MODIFIED="1445914703076" TEXT="TODO"/>
</node>
<node CREATED="1445502505363" ID="ID_1734967915" MODIFIED="1445502528631" TEXT="Staking always falls through to the previous transaction if the current txn is a vote"/>
<node CREATED="1445915388988" ID="ID_19568538" MODIFIED="1445915400032" TEXT="After minting, the vote is reinstated in the same block">
<node COLOR="#ff0000" CREATED="1445915401715" ID="ID_31971496" MODIFIED="1445915404836" TEXT="TODO"/>
<node COLOR="#ff0000" CREATED="1445915409172" ID="ID_886312442" MODIFIED="1445915412500" TEXT="TODO test this"/>
</node>
</node>
<node CREATED="1445504345683" ID="ID_1389366058" MODIFIED="1445504351247" TEXT="proposal txn">
<node CREATED="1445504352708" ID="ID_580089223" MODIFIED="1445504360391" TEXT="This is the txn used when creating a proposal"/>
<node CREATED="1445504360836" ID="ID_860343474" MODIFIED="1445504378160" TEXT="It has a null input, like a coin base, but a index of -2, rather than -1"/>
<node CREATED="1445508896534" ID="ID_1469687555" LINK="#ID_1522598173" MODIFIED="1445509644434" STYLE="fork" TEXT="It cannot be put into the block until after COINBASE_MATURITY"/>
<node COLOR="#ff0000" CREATED="1445504379204" ID="ID_1389536906" MODIFIED="1445504383860" TEXT="TODO">
<node CREATED="1445504385996" ID="ID_1968195892" MODIFIED="1445504407096" TEXT="Search for all instances of IsNull() and determine if a proposal check needs to be done"/>
</node>
<node CREATED="1445724377071" ID="ID_177161868" MODIFIED="1445832887977" TEXT="It&apos;s timestamp is the deadline.">
<node CREATED="1445724399607" ID="ID_889850540" MODIFIED="1445724512515" TEXT="This is necessary because there is nothing that prevents the same proposal from being voted on and passed twice. If it&apos;s represented by the exact same transaction, then the second time it passes it would be ignored"/>
</node>
<node CREATED="1445834975003" ID="ID_555961240" MODIFIED="1445909499506" TEXT="How do we get clients to execute it?">
<node CREATED="1445834983298" ID="ID_1675621776" MODIFIED="1445835025192" TEXT="Do we make them just run the TxOut&apos;s that don&apos;t require to be signed?">
<node CREATED="1445835092803" ID="ID_1741413661" MODIFIED="1445909493886" TEXT="Maybe just run all outputs. The ones that don&apos;t pass don&apos;t have any effect">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#ff0000" CREATED="1445915440052" ID="ID_1018352704" MODIFIED="1445915442740" TEXT="TODO"/>
<node CREATED="1445835115316" ID="ID_975719445" MODIFIED="1445835139575" TEXT="Or maybe even the ones that don&apos;t pass do have an effect. They just don&apos;t release funds">
<node CREATED="1445835141194" ID="ID_112708052" MODIFIED="1445835160135" TEXT="This way, we don&apos;t need seperate outputs to display a msg and release funds at the same time"/>
<node CREATED="1445909444425" ID="ID_1890819594" MODIFIED="1445909475141" TEXT="But it seems weird, since a transaction that requires itself to be signed is meant for an indivdual, not the collective"/>
</node>
</node>
<node CREATED="1445835164787" ID="ID_1862491526" MODIFIED="1445909388233" TEXT="What if there is a Reorg? Do we have to retract msgs?">
<node CREATED="1445909329642" ID="ID_341087467" MODIFIED="1445909383132" TEXT="Yes, but we&apos;ll wait a certain number of blocks before msgs are displayed or upgrade is asked for to minimize this"/>
<node COLOR="#ff0000" CREATED="1445915447084" ID="ID_1645410723" MODIFIED="1445915449787" TEXT="TODO"/>
</node>
<node CREATED="1445835188620" ID="ID_283609612" MODIFIED="1445909319930" TEXT="How are msgs to be displayed?">
<node CREATED="1445835204723" ID="ID_1130232903" MODIFIED="1445835239968" TEXT="Rpc call getmessages [mark_read=1]">
<node COLOR="#ff0000" CREATED="1445915458764" ID="ID_477861024" MODIFIED="1445915460596" TEXT="TODO"/>
</node>
<node CREATED="1445908968722" ID="ID_976326323" MODIFIED="1445908979116" TEXT="Rpc call getinfo will display latest message as well">
<node COLOR="#ff0000" CREATED="1445915458764" ID="ID_1165790349" MODIFIED="1445915460596" TEXT="TODO"/>
</node>
<node CREATED="1445835242572" ID="ID_1698459673" MODIFIED="1445835265134" TEXT="In the UI, we&apos;ll have a page for messages.">
<node CREATED="1445835267155" ID="ID_544143617" MODIFIED="1445835278895" TEXT="Also, a bubble will pop up like when receiving funds">
<node COLOR="#ff0000" CREATED="1445915458764" ID="ID_342393447" MODIFIED="1445915460596" TEXT="TODO"/>
</node>
<node COLOR="#ff0000" CREATED="1445915458764" ID="ID_3981119" MODIFIED="1445915460596" TEXT="TODO"/>
</node>
<node CREATED="1445835289420" ID="ID_533102546" MODIFIED="1445835305800" TEXT="Messages will only be displayed after X confirmations... a few minutes or so">
<node COLOR="#ff0000" CREATED="1445915458764" ID="ID_186453955" MODIFIED="1445915460596" TEXT="TODO"/>
</node>
</node>
<node CREATED="1445835307643" ID="ID_550588289" MODIFIED="1445909320642" TEXT="Client upgrades?">
<node CREATED="1445909036378" ID="ID_623486568" MODIFIED="1445909039206" TEXT="nomiccoind">
<node CREATED="1445908991250" ID="ID_1421085117" MODIFIED="1445909032838" TEXT="Should work same as CAlerts. All RPC calls will stop working until client is upgraded. Will print out &quot;Please download and install new version, md5sum &quot;xxxx&quot;, run md5sum to check">
<node COLOR="#ff0000" CREATED="1445915458764" ID="ID_989305112" MODIFIED="1445915460596" TEXT="TODO"/>
</node>
</node>
<node CREATED="1445909039706" ID="ID_662288964" MODIFIED="1445909044933" TEXT="nomiccoin-qt">
<node CREATED="1445909047130" ID="ID_1450718540" MODIFIED="1445909073381" TEXT="Place on status bar to upgrade to new version and deadline time">
<node COLOR="#ff0000" CREATED="1445915458764" ID="ID_130087727" MODIFIED="1445915460596" TEXT="TODO"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1445580878462" ID="ID_136089487" MODIFIED="1445910211426" TEXT="Is having a constant fee ok? Why don&apos;t we give it to the staker? To be &quot;fair&quot;? Or for another reason?">
<node CREATED="1445910086563" ID="ID_1227024573" MODIFIED="1445910107446" TEXT="Here are a list of reasons: https://www.reddit.com/r/peercoin/comments/1s3y70/analysis_peercoin_01ppc_destroyed_when_a/"/>
<node CREATED="1445910108330" ID="ID_316590205" MODIFIED="1445910180045" TEXT="I think that we should give it to the staker and let the pool take its cut from all of it">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1445910185058" ID="ID_848169588" MODIFIED="1445910186262" TEXT="It won&apos;t really effect the network until we are processing a gazillion txns per day, and at that time, the code will have voted through a lot of changes already "/>
<node CREATED="1445910285298" ID="ID_1387131630" MODIFIED="1445910302301" TEXT="This will, however, give more to big minters that mint more often">
<node CREATED="1445910312786" ID="ID_211725276" MODIFIED="1445910320070" TEXT="Although the effect initially will be tiny"/>
<node CREATED="1445910324330" ID="ID_1075600388" MODIFIED="1445910346638" TEXT="This should be ok, because we the code will change through voting"/>
</node>
<node COLOR="#ff0000" CREATED="1445913112131" ID="ID_1042284547" MODIFIED="1445913173907" TEXT="TODO">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1445910194746" ID="ID_710058765" MODIFIED="1445910210484" TEXT="We need a minimum fee or the whole thing can be swamped by a DoS">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1445910218921" ID="ID_1404743375" MODIFIED="1445910227982" TEXT="What should the minimum fee be?">
<node CREATED="1445910229506" ID="ID_831929622" MODIFIED="1445910276550" TEXT="Lets go for about $1 per nomiccoin, and 0.1 cent per transaction">
<node CREATED="1445915531795" ID="ID_1214188496" MODIFIED="1445915545192" TEXT="How much to distribute initially for this goal?">
<node CREATED="1445915548188" ID="ID_437752166" MODIFIED="1445915643872" TEXT="Assume $10 million market cap then 10 million, initially"/>
</node>
</node>
</node>
</node>
<node COLOR="#ff0000" CREATED="1446305382166" ID="ID_828673164" MODIFIED="1446305400107" TEXT="TODO use CLIENT_VERSION for our version number">
<node CREATED="1446305402942" ID="ID_723219768" MODIFIED="1446305408502" TEXT="it exists already, bitcoin uses it"/>
</node>
<node CREATED="1446684396617" ID="ID_1099367642" MODIFIED="1446684596215" TEXT="We are relying too much on the idea that if 51% vote on a proposal, then it must be safe I think. There is no automated check to see if a script is safe, so we are relying on people to eyeball the script, which they probably won&apos;t do">
<node CREATED="1446684491752" ID="ID_1302332192" MODIFIED="1446684595391" TEXT="Should we go as far as making &quot;STANDARD&quot; proposals, and only accepting standard stuff?">
<node CREATED="1446684532327" ID="ID_735965972" MODIFIED="1446684569772" TEXT="Yea, I don&apos;t really see much leeway for creative scripts. There is only a few things that can be done"/>
<node CREATED="1446684575808" ID="ID_1892253110" MODIFIED="1446684586700" TEXT="This should also make it easier in the gui to describe what the script does"/>
<node CREATED="1446684587096" ID="ID_708935987" MODIFIED="1446684605642" TEXT="Yes">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#ff0000" CREATED="1446684599031" ID="ID_1591337978" MODIFIED="1446684602983" TEXT="TODO"/>
</node>
</node>
</node>
<node CREATED="1444095910607" FOLDED="true" ID="ID_1067944322" MODIFIED="1444622773581" POSITION="left" TEXT="v1">
<node CREATED="1443875039576" ID="ID_428257359" MODIFIED="1443875049556" TEXT="Voting">
<node CREATED="1443875052536" ID="ID_1015844854" MODIFIED="1443875134979" TEXT="Voting should not disrupt staking">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      We can't wipe out unclaimed rewards for voting, or people trying to stake can't vote. So we simply identify vote UTXO's and walk through them when determining coin age.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1443875223960" ID="ID_209059009" MODIFIED="1443875735332" TEXT="Poll type: Spend pool money">
<node CREATED="1443911562122" ID="ID_57807352" MODIFIED="1443920082110" TEXT="No split money at first">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Because scripts can't split funds, we won't handle giving some money to X and some to Y.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1443929458251" ID="ID_1002516809" MODIFIED="1443929484278" TEXT="Max frequency: 1 per day"/>
<node COLOR="#999900" CREATED="1443929636314" ID="ID_1031978435" MODIFIED="1443929640658" TEXT="script"/>
</node>
<node CREATED="1443920402631" ID="ID_142074629" MODIFIED="1443920409731" TEXT="Poll result hash">
<node CREATED="1443920560951" ID="ID_1985406034" MODIFIED="1443928866214" TEXT="poll_data">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      hash is simply a hash of the poll data
    </p>
    <p>
      The poll data is
    </p>
    <p>
      result script
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1443920665560" ID="ID_753121091" MODIFIED="1443928922035" TEXT="NO url">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Displaying a web page that can be made to say anything by the poll creator is not good.
    </p>
    <p>
      We will just have a poll id, and some choices instead. The user is on their own to find out what
    </p>
    <p>
      a poll means, ie using google, etc.
    </p>
  </body>
</html></richcontent>
<node COLOR="#999999" CREATED="1443920669975" ID="ID_1791342548" MODIFIED="1443928800659" TEXT="How can it be verified that receiver of pool money is correct?">
<font NAME="SansSerif" SIZE="10"/>
<node COLOR="#999999" CREATED="1443920906296" ID="ID_1566804641" MODIFIED="1443928805252" TEXT="pgp keys signing destination?">
<font NAME="SansSerif" SIZE="10"/>
</node>
</node>
</node>
</node>
<node CREATED="1443929038138" ID="ID_349788315" MODIFIED="1443929049094" TEXT="Interpreting Voting Results">
<node CREATED="1443875244416" ID="ID_472438691" MODIFIED="1443929334368" TEXT="Hard code initial frequency for polls">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      We don't want them too often, obviously. A fixed schedule sounds good, unless a change needs to be rolled back. Then what?
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<node COLOR="#999900" CREATED="1443929334362" ID="ID_395698319" MODIFIED="1443929411534" TEXT="FUTURE: What about emergency polls?">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Maybe ignore for now. In the future, maybe allow 75% of the network to propose that a poll be conducted immediately
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1443929096051" ID="ID_911599073" MODIFIED="1443929215140" TEXT="Stakers used to determine poll turnout">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      We will take the last two weeks of coin stakers to represent active coins.
    </p>
    <p>
      
    </p>
    <p>
      If 75% of stakers respond to a poll, then we consider that a 75% response of live coins.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1443929221762" ID="ID_1064105789" MODIFIED="1443929271709" TEXT="Frequency of polls in client">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      We want the client to store all the rules for when polls can be started, etc. That's what it's there for, these meta rules.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1444027693903" FOLDED="true" ID="ID_237401081" MODIFIED="1444562451370" TEXT="DoS from too many voters?">
<node CREATED="1444028389018" ID="ID_1264813451" MODIFIED="1444562448483" TEXT="We charge .01 vote fee">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Even though we are going to keep coin stake through the transaction, this does not mean we can't charge a fee for voting.
    </p>
    <p>
      The fee should eliminate DoS concerns
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1443874885262" ID="ID_1161660629" MODIFIED="1443874893436" TEXT="Creating Polls">
<node CREATED="1443874901000" ID="ID_1187595984" MODIFIED="1443875023461" TEXT="Auction">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      We need to prevent too many polls from being created. So this is a way to do that.
    </p>
    <p>
      
    </p>
    <p>
      The money of the winner goes to the pool.
    </p>
  </body>
</html></richcontent>
<node CREATED="1443874958808" ID="ID_1639036532" MODIFIED="1443874995634" TEXT="Many people can support a poll">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Without that, only rich people can make the polls
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1443911895075" ID="ID_71463486" MODIFIED="1443912010682" TEXT="Similar to Poll">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Maybe just a different script???
    </p>
    <p>
      We assume we can trust the blockchain, and look for all bidders.
    </p>
    <p>
      However, instead of refunding the money at the end, if the bidder is the winner, we take that money to the pool
    </p>
  </body>
</html></richcontent>
<node COLOR="#999900" CREATED="1443912021033" ID="ID_248433041" MODIFIED="1443929540915" TEXT="script"/>
</node>
</node>
</node>
<node CREATED="1443875149144" ID="ID_1308949662" MODIFIED="1443919608187" TEXT="Poll type: Client Upgrades">
<node CREATED="1443875159048" ID="ID_1319025310" MODIFIED="1443875166044" TEXT="What about emergency patches??"/>
<node CREATED="1443875610024" ID="ID_585787989" MODIFIED="1443919589471" TEXT="test net"/>
<node COLOR="#999900" CREATED="1443928925259" ID="ID_619954650" MODIFIED="1443929623146" TEXT="poll_result script"/>
<node CREATED="1443929567563" ID="ID_1549368110" MODIFIED="1443929575934" TEXT="Max frequency, 1 per day"/>
</node>
<node CREATED="1443875232296" ID="ID_829914096" MODIFIED="1443920108515" TEXT="Poll type: Non binding">
<node COLOR="#999900" CREATED="1443919518559" ID="ID_445309942" MODIFIED="1443920390015" TEXT="poll_result script">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      script is simply:
    </p>
    <p>
      
    </p>
    <p>
      OP_VOTE_URL_HASH (hash)
    </p>
    <p>
      
    </p>
    <p>
      The client code itself will tally the votes and display them
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1443929582394" ID="ID_417982659" MODIFIED="1443929590767" TEXT="Max frequency: 3 per day"/>
</node>
<node CREATED="1443875295776" ID="ID_346899376" MODIFIED="1443875306107" TEXT="How to deal with non voters?">
<node CREATED="1443875310608" FOLDED="true" ID="ID_648137091" MODIFIED="1443875406984" TEXT="If you stake, you are considered a voter">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      We must have a certain election turnout or the poll is invalid. Even a non vote by a staker is consider a vote... for no.
    </p>
  </body>
</html></richcontent>
<node CREATED="1443875348768" ID="ID_645012981" MODIFIED="1443875361668" TEXT="What is the minimum turn out?"/>
</node>
</node>
<node CREATED="1443912045826" ID="ID_1623409513" MODIFIED="1443912056709" TEXT="script_changes">
<node CREATED="1443912062018" ID="ID_162210927" MODIFIED="1443918886234" TEXT="op_vote">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      stack vars:
    </p>
    <p>
      deadline - deadline before funds are released .. must match poll to be counted
    </p>
    <p>
      poll_address - address of poll script
    </p>
    <p>
      choice - 0 - n, voter choice
    </p>
    <p>
      &#160;
    </p>
    <p>
      This simply checks if the block height has passed the deadline. If so, returns 1, otherwise 0.
    </p>
    <p>
      
    </p>
    <p>
      When tallying votes, we'll look for a standard contract including op_vote, which will manually tally the vote.
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1443918688703" ID="ID_264123457" MODIFIED="1443919469984" TEXT="op_vote_result">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      stack vars:
    </p>
    <p>
      choice - choice to return results for
    </p>
    <p>
      
    </p>
    <p>
      This is used by a script to get the vote results. It will tally all the incoming votes based on the transaction inputs to the script address
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1445505324701" ID="ID_1068705924" MODIFIED="1445725518478" POSITION="right" TEXT="testing">
<node CREATED="1445725519536" ID="ID_1768721651" MODIFIED="1445725531840" TEXT="To test">
<node CREATED="1445725533633" ID="ID_1460002014" MODIFIED="1445725689844" TEXT="DisconnectBlock containing a vote">
<node CREATED="1445725691536" ID="ID_1101334640" MODIFIED="1445725693948" TEXT="After deadline"/>
<node CREATED="1445725697168" ID="ID_1816636427" MODIFIED="1445725699596" TEXT="Before deadline"/>
</node>
<node CREATED="1445725703472" ID="ID_1076873766" MODIFIED="1445725708948" TEXT="Voting before deadline">
<node CREATED="1445729780394" ID="ID_1337503731" MODIFIED="1445729783958" TEXT="Vote should change">
<node CREATED="1445729786034" ID="ID_855614879" MODIFIED="1445729789790" TEXT="test-simple-vote.js"/>
</node>
</node>
<node CREATED="1445725709552" ID="ID_607577579" MODIFIED="1445725713412" TEXT="Voting after deadline">
<node CREATED="1445725717009" ID="ID_165427420" MODIFIED="1445725725588" TEXT="Vote shouldn&apos;t change">
<node CREATED="1445729786034" ID="ID_1190754048" MODIFIED="1445729789790" TEXT="test-simple-vote.js"/>
</node>
</node>
<node CREATED="1445725728072" ID="ID_1233534168" MODIFIED="1445725736957" TEXT="Redeeming txn">
<node COLOR="#ff0000" CREATED="1445725739201" ID="ID_1040153395" MODIFIED="1445729776018" TEXT="displaymsg"/>
<node COLOR="#ff0000" CREATED="1445725749521" ID="ID_400011997" MODIFIED="1445729775426" TEXT="spendpool"/>
<node COLOR="#ff0000" CREATED="1445725755632" ID="ID_1006167259" MODIFIED="1445729774626" TEXT="upgradeclient"/>
<node COLOR="#ff0000" CREATED="1445725778000" ID="ID_1970580655" MODIFIED="1445729774306" TEXT="Test redeeming txn without passed vote"/>
<node COLOR="#ff0000" CREATED="1445725786017" ID="ID_1578521516" MODIFIED="1445729774050" TEXT="Test invalid redeeming txn, too big?"/>
<node COLOR="#ff0000" CREATED="1445726293968" ID="ID_829798202" MODIFIED="1445729773730" TEXT="Test redeeming txn before mature period after deadline"/>
</node>
<node COLOR="#ff0000" CREATED="1445725827088" ID="ID_1276050024" MODIFIED="1445729773146" TEXT="Staking and voting immediately"/>
<node CREATED="1445726222920" ID="ID_326360939" MODIFIED="1445741680056" TEXT="Mining and voting immediately">
<node CREATED="1445741671896" ID="ID_688613190" MODIFIED="1445741678380" TEXT="test-simple-vote.js"/>
</node>
<node COLOR="#ff0000" CREATED="1445726229041" ID="ID_1122443971" MODIFIED="1445729772578" TEXT="Trying to spend a vote txn from a stake/coinbase that didn&apos;t mature yet"/>
<node COLOR="#ff0000" CREATED="1445726334344" ID="ID_479107935" MODIFIED="1445729772298" TEXT="Voting twice should delete prior vote"/>
<node COLOR="#ff0000" CREATED="1445726347369" ID="ID_861537804" MODIFIED="1445729772018" TEXT="Spending should delete prior vote"/>
<node COLOR="#ff0000" CREATED="1445726354256" ID="ID_533586146" MODIFIED="1445729771690" TEXT="Staking should reinstate vote"/>
<node CREATED="1445726392488" ID="ID_306965743" MODIFIED="1445729768690" TEXT="Reorg">
<node COLOR="#ff0000" CREATED="1445726406896" ID="ID_1664913648" MODIFIED="1445729771098" TEXT="Check voting participation adjusts"/>
<node COLOR="#ff0000" CREATED="1445726428066" ID="ID_344371147" MODIFIED="1445729770810" TEXT="Check votes adjust"/>
<node COLOR="#ff0000" CREATED="1445726453321" ID="ID_416983723" MODIFIED="1445729770490" TEXT="Check upgradeclient turns on/off properly"/>
<node COLOR="#ff0000" CREATED="1445726468256" ID="ID_1237885544" MODIFIED="1445729770122" TEXT="spendpool"/>
</node>
<node COLOR="#ff0000" CREATED="1445728040137" ID="ID_329287652" MODIFIED="1445729765450" TEXT="Voting with wrong deadline for a txn hash"/>
<node COLOR="#ff0000" CREATED="1445729731914" ID="ID_765920006" MODIFIED="1445729764970" TEXT="Staking and then voting does not change staking hash (to prevent grinding)"/>
<node COLOR="#ff0000" CREATED="1445757702749" ID="ID_1053081013" MODIFIED="1445757747067" TEXT="Test liftoff pow code. Default set all clients to generate proof of work">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#ff0000" CREATED="1445758986820" ID="ID_1890625477" MODIFIED="1445758998708" TEXT="Test voting and trying to spend before maturity"/>
<node COLOR="#ff0000" CREATED="1446001054269" ID="ID_1990595523" MODIFIED="1446001068412" TEXT="Two proposals redeeming same block"/>
<node COLOR="#ff0000" CREATED="1446001068931" ID="ID_1681261017" MODIFIED="1446001076773" TEXT="Reorg before proposal redeems"/>
<node COLOR="#ff0000" CREATED="1446001077188" ID="ID_875072501" MODIFIED="1446001082380" TEXT="Reorg after proposal redeems"/>
<node COLOR="#ff0000" CREATED="1446426878538" ID="ID_1240243486" MODIFIED="1446535979385" TEXT="Create &quot;attack&quot; client that posts not allowed transactions on the block chain">
<node COLOR="#ff0000" CREATED="1446426917468" ID="ID_662991222" MODIFIED="1446426927839" TEXT="Redeems before maturity"/>
<node COLOR="#ff0000" CREATED="1446535967997" ID="ID_1951763392" MODIFIED="1446535974275" TEXT="not passed proposals"/>
<node COLOR="#ff0000" CREATED="1446426930804" ID="ID_351339051" MODIFIED="1446426935638" TEXT="... what else?"/>
</node>
</node>
</node>
<node COLOR="#ff0000" CREATED="1445334536006" ID="ID_97324318" MODIFIED="1445833459121" POSITION="right" TEXT="distribution">
<node CREATED="1445392911554" ID="ID_445087297" MODIFIED="1445392913518" TEXT="old">
<node CREATED="1445334542478" ID="ID_787565242" MODIFIED="1445335182332" TEXT="Code contributers percentage"/>
<node CREATED="1445334818975" ID="ID_1454056122" MODIFIED="1445334827594" TEXT="Give some to testnet participants"/>
<node CREATED="1445334929927" ID="ID_842549061" MODIFIED="1445334938964" TEXT="Certain percentage to people who just ask"/>
<node CREATED="1445334569270" ID="ID_446146847" MODIFIED="1445335199043" TEXT="Percentage to people owning bitcoin or altcoins who want some">
<node CREATED="1445334589087" ID="ID_1582952753" MODIFIED="1445334599746" TEXT="Person posts public address of coin"/>
<node CREATED="1445334603319" ID="ID_813015951" MODIFIED="1445334697994" TEXT="At a published time, I&apos;ll record the current market value of all the coins and give a corresponding percentage"/>
</node>
<node CREATED="1445334728495" ID="ID_553261947" MODIFIED="1445335212091" TEXT="Shared pool initial value percentage"/>
<node CREATED="1445335254695" ID="ID_358078569" MODIFIED="1445335284546" TEXT="Vote on this?">
<node CREATED="1445335286991" ID="ID_586665549" MODIFIED="1445335344203" TEXT="Even if someone tries to stuff the vote, they have to take into account the value of the coin if they do so. In other words, if they vote 100% for people who just ask, then what will the result be?"/>
</node>
</node>
<node CREATED="1445833436562" ID="ID_570500331" MODIFIED="1445833461553" TEXT="idea2">
<node CREATED="1445392921442" ID="ID_968435967" MODIFIED="1445392928246" TEXT="Code contributers percentage"/>
<node CREATED="1445392929122" ID="ID_1348176081" MODIFIED="1445392936022" TEXT="testnet helpers percentage"/>
<node CREATED="1445392936602" ID="ID_517796839" MODIFIED="1445392944110" TEXT="faucet"/>
</node>
<node CREATED="1445833453330" ID="ID_962973068" MODIFIED="1445833457101" TEXT="idea3">
<node CREATED="1445392921442" ID="ID_1938859502" MODIFIED="1445392928246" TEXT="Code contributers percentage"/>
<node CREATED="1445392929122" ID="ID_194104252" MODIFIED="1445392936022" TEXT="testnet helpers percentage"/>
<node CREATED="1445833472665" ID="ID_459396429" MODIFIED="1445833499405" TEXT="Potential founders must write blurb">
<node CREATED="1445833506754" ID="ID_878921624" MODIFIED="1445833511525" TEXT="Ideas for the coin"/>
<node CREATED="1445833500545" ID="ID_98735444" MODIFIED="1445833521981" TEXT="Past deeds, accomplishments">
<node CREATED="1445833528298" ID="ID_254889554" MODIFIED="1445833530709" TEXT="Code written"/>
<node CREATED="1445833531378" ID="ID_1943725411" MODIFIED="1445833534533" TEXT="Articles written"/>
</node>
<node CREATED="1445833534889" ID="ID_1581509191" MODIFIED="1445833555277" TEXT="Comments/etc. showing understanding of cryptocurrency"/>
</node>
<node CREATED="1445833571817" ID="ID_1682632704" MODIFIED="1445833599757" TEXT="Idea is that a good set of founders will lead the coin in a proper direction, and is very important early on"/>
</node>
</node>
<node CREATED="1445136395713" ID="ID_1081486889" MODIFIED="1445136397125" POSITION="right" TEXT="TODO">
<node CREATED="1445137038369" ID="ID_423107977" MODIFIED="1445137038997" TEXT="1"/>
<node CREATED="1445137019409" ID="ID_1330490338" MODIFIED="1445137021301" TEXT="2">
<node CREATED="1445136400097" ID="ID_1867873505" MODIFIED="1445136406237" TEXT="Why are blocks being mined every second?">
<node CREATED="1445136411545" ID="ID_901737279" MODIFIED="1445136424605" TEXT="When we first start the network, everyone is mining every second"/>
</node>
<node CREATED="1445136984121" ID="ID_1402537902" MODIFIED="1445137005285" TEXT="Uses a lot of the cpu, around 17% even when only pos staking???"/>
<node CREATED="1445156888604" ID="ID_319596110" MODIFIED="1445156910872" TEXT="voting seems to only vote with the first UTXO if there is more than one "/>
</node>
<node CREATED="1445137046681" ID="ID_1295495863" MODIFIED="1445137048261" TEXT="2.5">
<node CREATED="1445153706299" ID="ID_1983967459" MODIFIED="1445153762078" TEXT="make viewproposal function">
<node CREATED="1445153764363" ID="ID_275972263" MODIFIED="1445153775230" TEXT="allows user to see proposal before commiting to it in nomiccoind"/>
</node>
</node>
<node CREATED="1445137039753" ID="ID_1243866097" MODIFIED="1445137040157" TEXT="3"/>
<node CREATED="1445137040689" ID="ID_809292046" MODIFIED="1445137041165" TEXT="4"/>
</node>
<node CREATED="1445679752945" ID="ID_1262595952" MODIFIED="1445679755269" POSITION="right" TEXT="bugs">
<node CREATED="1445679756465" ID="ID_740240627" MODIFIED="1445679757349" TEXT="non standard tx type from createproposal "/>
</node>
<node CREATED="1445397232564" ID="ID_75830749" MODIFIED="1445397235328" POSITION="right" TEXT="external stuff">
<node CREATED="1445397236852" ID="ID_1563557230" MODIFIED="1445397239912" TEXT="whitepaper"/>
<node CREATED="1445397241460" ID="ID_857293888" MODIFIED="1445397245432" TEXT="website"/>
<node CREATED="1445397245772" ID="ID_776958830" MODIFIED="1445397248280" TEXT="blockexplorer"/>
<node CREATED="1445397252452" ID="ID_1830912522" MODIFIED="1445397254120" TEXT="forum"/>
<node CREATED="1445336324239" ID="ID_1200673478" MODIFIED="1445336326507" TEXT="server stuff">
<node CREATED="1445336328007" ID="ID_709415985" MODIFIED="1445336330036" TEXT="1and1.com">
<node CREATED="1445336331112" ID="ID_1542761447" MODIFIED="1445336371131" TEXT="4.99 a monht for 6 months + 9.99 setup fee (afterwards 12.99 a month). Unlimited traffic"/>
</node>
<node CREATED="1445336487303" ID="ID_36723372" MODIFIED="1445336489715" TEXT="hostwinds">
<node CREATED="1445336493983" ID="ID_1723611632" MODIFIED="1445336500091" TEXT="pcmag editor choice for vpn"/>
</node>
</node>
</node>
<node CREATED="1445065454955" ID="ID_1110428196" MODIFIED="1445065459758" POSITION="right" TEXT="bitcoin analysis">
<node CREATED="1444032910416" ID="ID_170959613" MODIFIED="1444298361919" TEXT="How does double spend work (in bitcoin)???">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      It should help us figure out how best to tally votes
    </p>
  </body>
</html></richcontent>
<node CREATED="1444200203358" ID="ID_1613232044" MODIFIED="1444200210098" TEXT="No more funds?">
<node CREATED="1444085804844" ID="ID_181210212" MODIFIED="1444085820209" TEXT="Entire database is searched for txn&apos;s using the TXO"/>
</node>
<node CREATED="1444200215294" ID="ID_1978151550" MODIFIED="1444291849570" TEXT="Same transaction twice?">
<node CREATED="1444291854402" ID="ID_1062942978" MODIFIED="1444291886912" TEXT="ProcessMessage, &quot;inv&quot; section, checks if  AlreadyHave()"/>
</node>
</node>
<node CREATED="1444902284051" ID="ID_1780078057" MODIFIED="1444902294919" TEXT="The next block doesn&apos;t seem to always need to be after the current block">
<node CREATED="1444902300020" ID="ID_1782588129" MODIFIED="1444902316848" TEXT="A block will be accepted even if the time is earlier than the previous block"/>
</node>
<node CREATED="1445065475210" ID="ID_446746435" MODIFIED="1445065579438" TEXT="What does IsFinal() mean for a transaction?">
<node CREATED="1445065581659" ID="ID_1054347460" MODIFIED="1445065595630" TEXT="A transaction is final if:">
<node CREATED="1445065597874" ID="ID_1791062600" MODIFIED="1445065646630" TEXT="It has a zero locktime, or"/>
<node CREATED="1445065647075" ID="ID_1403854280" MODIFIED="1445065687654" TEXT="It&apos;s locktime has past, and it&apos;s TxIn&apos;s are all final">
<node CREATED="1445065690114" ID="ID_516316904" MODIFIED="1445065702839" TEXT="Not sure when TxIn is final, has something to do with nSequence?????"/>
</node>
</node>
</node>
<node CREATED="1445162083308" ID="ID_472624435" MODIFIED="1445829109343" TEXT="block chain">
<node CREATED="1445162114093" ID="ID_352007369" MODIFIED="1445162137721" TEXT="Blocks in the best chain are connected using ConnectBlock()"/>
<node CREATED="1445162138301" ID="ID_1985072972" MODIFIED="1445162188601" TEXT="In case of a fork beating the current front runner, blocks are disconnected using DisconnectBlock() from the current frontrunner, and then the fork is replayed using ConnectBlock()"/>
<node CREATED="1445310420184" ID="ID_271631837" MODIFIED="1445310444869" TEXT="Whenever we add a block to the block chain, we call ConnectBlock(), regardless if we made it ourselves or not"/>
<node CREATED="1446304632906" ID="ID_977481524" MODIFIED="1446304636649" TEXT="LoadBlockIndex">
<node CREATED="1446305808031" ID="ID_183798572" MODIFIED="1446305815117" TEXT="Loads the indexes from the db"/>
<node CREATED="1446304643935" ID="ID_1934249933" MODIFIED="1446304674390" TEXT="calls InsertBlockIndex to resolve prev and next">
<node CREATED="1446304679242" ID="ID_860483694" MODIFIED="1446305775063" TEXT="InsertBlockIndex looks for hash in memory, and if it doesn&apos;t exist, creates a new empty block index with no information">
<node CREATED="1446304750576" ID="ID_1722814838" MODIFIED="1446305800530" TEXT="It does this because the block indexs are read in order on the db, which may not be the order in which they are linked"/>
</node>
</node>
</node>
<node CREATED="1445829109305" ID="ID_1571173489" MODIFIED="1445829258157" TEXT="ProcessMessage(gets block from other nodes)">
<node CREATED="1445829080953" ID="ID_964915765" MODIFIED="1445829152684" TEXT="ProcessBlock">
<linktarget COLOR="#b0b0b0" DESTINATION="ID_964915765" ENDARROW="Default" ENDINCLINATION="-114;33;" ID="Arrow_ID_859303402" SOURCE="ID_1240873214" STARTARROW="None" STARTINCLINATION="55;-1;"/>
<node CREATED="1445829052581" ID="ID_469179920" MODIFIED="1445829064571" TEXT="AcceptBlock">
<node CREATED="1445830678898" ID="ID_1988001231" MODIFIED="1445830688653" TEXT="Writes to disk (before AddToBlockIndex)"/>
<node CREATED="1445236050159" ID="ID_359326903" MODIFIED="1445236063475" TEXT="AddToBlockIndex">
<node CREATED="1445327810805" ID="ID_683237901" MODIFIED="1445327992362" TEXT="Writes CBlockIndex to db before calling SetBestChain"/>
<node CREATED="1445235959286" ID="ID_1858487241" MODIFIED="1445235969218" TEXT="SetBestChain">
<node CREATED="1445327925221" ID="ID_973945065" MODIFIED="1445327934345" TEXT="If genesis, does not call SetBestChainInner"/>
<node CREATED="1445235970335" ID="ID_799162962" MODIFIED="1445235974515" TEXT="SetBestChainInner">
<node CREATED="1445235976207" ID="ID_888274618" MODIFIED="1445235978210" TEXT="ConnectBlock">
<node CREATED="1445327971749" ID="ID_1123323722" MODIFIED="1445327983769" TEXT="Writes CBlockIndex for the second time (first was in AddToBlockIndex"/>
<node CREATED="1446299031041" ID="ID_873289190" MODIFIED="1446299036701" TEXT="Saves CBlockIndex">
<node CREATED="1446299037473" ID="ID_91022874" MODIFIED="1446299055582" TEXT="This works by creating a CDiskBlockIndex, and saving that"/>
<node CREATED="1446299213857" ID="ID_1502672830" MODIFIED="1446299232629" TEXT="It actually saves the previous blockindex"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1445829119776" ID="ID_1240873214" MODIFIED="1445829152684" TEXT="CheckWork">
<arrowlink DESTINATION="ID_964915765" ENDARROW="Default" ENDINCLINATION="-114;33;" ID="Arrow_ID_859303402" STARTARROW="None" STARTINCLINATION="55;-1;"/>
</node>
<node CREATED="1445304736358" ID="ID_613313307" MODIFIED="1445304742177" TEXT="FetchInputs">
<node CREATED="1445304744230" ID="ID_937049579" MODIFIED="1445304757946" TEXT="Retrieves the inputs of a txn"/>
<node CREATED="1445304762726" ID="ID_1626317275" MODIFIED="1445305702586" TEXT="Returns typedef std::map&lt;uint256, std::pair&lt;CTxIndex, CTransaction&gt; &gt; MapPrevTx;">
<node CREATED="1445305709574" ID="ID_1068564177" MODIFIED="1445305732466" TEXT="Map of txn hash to CTxIndex and CTransaction"/>
</node>
</node>
<node CREATED="1445305077685" ID="ID_1464115469" MODIFIED="1445305080537" TEXT="CTxInput">
<node CREATED="1445305082342" ID="ID_47162182" MODIFIED="1445305633762" TEXT="Location of txn on disk, and vector of location of txns for the spent outputs"/>
</node>
</node>
<node CREATED="1445305467502" ID="ID_569286875" MODIFIED="1445309033623" TEXT="How do we get the previous txn to tell if its a voting txn?">
<node CREATED="1445309035808" ID="ID_1928500006" MODIFIED="1445309045684" TEXT="ReadDiskTx with COutPoint from vin"/>
</node>
<node CREATED="1445559152149" ID="ID_61655943" MODIFIED="1445908623665" TEXT="CWalletTx">
<node CREATED="1445566948812" ID="ID_1858055628" MODIFIED="1445566969223" TEXT="You can get the previous merkle transactions with vtxPrev"/>
</node>
<node CREATED="1445559168229" ID="ID_1682630739" MODIFIED="1445908623081" TEXT="CMerkleTx"/>
<node CREATED="1445566515347" ID="ID_381341770" MODIFIED="1445581460853" TEXT="CBlockIndex">
<node CREATED="1445566521931" ID="ID_1857117095" MODIFIED="1445566547343" TEXT="Can be retrieve from block with this code">
<richcontent TYPE="NOTE"><html>
  <head>
    
  </head>
  <body>
    <p>
      map&lt;uint256, CBlockIndex*&gt;::iterator mi = mapBlockIndex.find(hashBlock);
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (mi == mapBlockIndex.end())
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return 0;
    </p>
    <p>
      &#160;&#160;&#160;&#160;CBlockIndex* pindex = (*mi).second;
    </p>
    <p>
      &#160;&#160;&#160;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1445579870085" ID="ID_565226267" MODIFIED="1445579874465" TEXT="Signing transactions">
<node CREATED="1445579892525" ID="ID_113960420" MODIFIED="1445582541830" TEXT="What is the hash type for">
<node CREATED="1445579957709" ID="ID_1057903801" MODIFIED="1445579966745" TEXT="SIGHASH_ALL"/>
<node CREATED="1445579950301" ID="ID_1740416562" MODIFIED="1445579974727" TEXT="SIGHASH_NONE"/>
<node CREATED="1445579976261" ID="ID_793983312" MODIFIED="1445579985161" TEXT="SIGHASH_SINGLE"/>
<node CREATED="1445579985549" ID="ID_1063200239" MODIFIED="1445579993129" TEXT="SIGHASH_ANYONECANPAY"/>
<node CREATED="1445582535702" ID="ID_1783421190" MODIFIED="1445582538586" TEXT="https://bitcoin.org/en/developer-guide#signature-hash-types"/>
</node>
</node>
<node CREATED="1445580657014" ID="ID_1221136736" MODIFIED="1445580665913" TEXT="How does Change work?">
<node CREATED="1445580731686" ID="ID_1101048102" MODIFIED="1445581229057" TEXT="It does what we do for voting, just send the result back to the same script in the prior output"/>
</node>
<node CREATED="1445581438238" ID="ID_941280243" MODIFIED="1445908620378" TEXT="what are OP_CODE_SEPERATOR&apos;s for?">
<node CREATED="1445583622359" ID="ID_848250017" MODIFIED="1445583631947" TEXT="They aren&apos;t used in the client"/>
</node>
<node CREATED="1445908580730" ID="ID_936467519" MODIFIED="1445908945994" TEXT="calert, how does it display stuff to the user (especially in bitcoind)?">
<node CREATED="1445908798594" ID="ID_615232280" MODIFIED="1445908871013" TEXT="calert warnings are checked for every rpc call. If there is a warning, it throws an exception before ever running the method (unless -disablesafemode is true)"/>
<node CREATED="1446002207909" ID="ID_166556793" MODIFIED="1446002209201" TEXT="How are calerts stored?     Looks like in memory only. CAlerts can rely on the network retransmitting an alert "/>
</node>
<node CREATED="1446190133913" ID="ID_505624950" MODIFIED="1446190140532" TEXT="block chain trust issues">
<node CREATED="1446190142241" ID="ID_981466216" MODIFIED="1446191873020" TEXT="Block chain trust is calculated based on the hashTarget. This number is multiplied by the coinage before being checked against the hash."/>
</node>
</node>
<node CREATED="1444793484104" ID="ID_281485779" MODIFIED="1444793487132" POSITION="left" TEXT="design">
<node CREATED="1444793439272" ID="ID_846126192" MODIFIED="1444793501045" TEXT="logo?">
<node CREATED="1444793466312" ID="ID_1683492426" MODIFIED="1444793472868" TEXT="bust of some old guy"/>
<node CREATED="1444793473265" ID="ID_267686207" MODIFIED="1444793480971" TEXT="current spirograph"/>
</node>
</node>
<node CREATED="1444804708449" ID="ID_1339735347" MODIFIED="1444804712885" POSITION="left" TEXT="block explorer?"/>
</node>
</map>
