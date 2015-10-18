<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1443874855599" ID="ID_742251330" MODIFIED="1444694480094" TEXT="Voting Coin">
<node CREATED="1444028673000" ID="ID_652303042" MODIFIED="1444990338398" POSITION="right" TEXT="closed questions">
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
<node COLOR="#009999" CREATED="1444622775937" ID="ID_455938583" MODIFIED="1444622914048" POSITION="right" TEXT="light blue means No to a Yes/No question"/>
<node CREATED="1444694502424" ID="ID_1517243472" MODIFIED="1444694505083" POSITION="right" TEXT="coding">
<node CREATED="1444694509415" ID="ID_817034730" MODIFIED="1444696764204" TEXT="base58">
<node CREATED="1444696745057" ID="ID_391636309" MODIFIED="1444696747076" TEXT="prefix">
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
<node CREATED="1444787383783" ID="ID_208007625" MODIFIED="1444787385691" TEXT="new ops">
<node CREATED="1444787387823" ID="ID_1097637190" MODIFIED="1444804778917" TEXT="OP_FUNDS_POOL_UNLOCKED">
<node CREATED="1444787429639" ID="ID_1021862128" MODIFIED="1444804793805" TEXT="Used by pool address. Returns 1 when the pool is unlocked"/>
</node>
<node CREATED="1444804794921" ID="ID_64752469" MODIFIED="1444804818773" TEXT="OP_UPGRADE_CLIENT &lt;block deadline&gt; &lt;md5sum&gt;">
<node CREATED="1444804822257" ID="ID_1322557771" MODIFIED="1444804836870" TEXT="Causes the client to upgrade. md5sum is of the source code"/>
</node>
<node CREATED="1444811335783" ID="ID_1202491412" MODIFIED="1444811385763" TEXT="OP_DISPLAY_MSG &lt;msg&gt;"/>
<node CREATED="1445068782820" ID="ID_769852395" MODIFIED="1445068793111" TEXT="OP_VOTE &lt;block deadline&gt; &lt;txn hash&gt;">
<node CREATED="1445068899691" ID="ID_1371650880" MODIFIED="1445068912608" TEXT="block deadline is an epoch time"/>
<node CREATED="1445068913043" ID="ID_257750203" MODIFIED="1445068957145" TEXT="Vote is only valid if it appears in a block where the block&apos;s epoch time &lt;= the deadline"/>
<node CREATED="1445068957748" ID="ID_1675412541" MODIFIED="1445068987833" TEXT="txn hash is the partial proposal transaction without input UTXO&apos;s specified"/>
</node>
</node>
<node CREATED="1444811826007" ID="ID_70535443" MODIFIED="1444811830459" TEXT="new rpc commands">
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
</node>
</node>
<node CREATED="1444812191544" ID="ID_1286388180" MODIFIED="1444999073426" TEXT="raw txn"/>
<node COLOR="#cc3300" CREATED="1445041735594" ID="ID_224169535" MODIFIED="1445041742945" TEXT="txn hash with checksum"/>
</node>
<node CREATED="1444981940827" ID="ID_951734612" MODIFIED="1444981943750" TEXT="txn">
<node CREATED="1444981945274" ID="ID_1982869491" MODIFIED="1444990422583" TEXT="txn will have no source (to be filled in by minter)"/>
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
<node CREATED="1444812008007" ID="ID_332911290" MODIFIED="1444812049420" TEXT="vote_poll &lt;txn hash&gt; &lt;poll deadline&gt;">
<node CREATED="1444812123687" ID="ID_1695647757" MODIFIED="1444812141203" TEXT="User votes with all funds. Splitting vote will be too tricky"/>
<node CREATED="1444998643158" ID="ID_1501782191" MODIFIED="1444998651274" TEXT="poll deadline is in epoch seconds"/>
<node COLOR="#cc3300" CREATED="1445041749530" ID="ID_58443541" MODIFIED="1445041760545" TEXT="txn hash needs checksum"/>
</node>
</node>
<node CREATED="1444904510571" ID="ID_116372185" MODIFIED="1444904515367" TEXT="PoW">
<node CREATED="1444904518467" ID="ID_1505124101" MODIFIED="1444904531199" TEXT="PoW is activated if PoS takes over 5 minutes"/>
<node CREATED="1444904531779" ID="ID_206406262" MODIFIED="1444904544207" TEXT="For each PoW block found, 1 coin is rewarded"/>
<node CREATED="1444904553963" ID="ID_739409234" MODIFIED="1444904563527" TEXT="As soon as PoS gets going again, PoW is disallowed"/>
<node CREATED="1444904569803" ID="ID_257967512" MODIFIED="1444904596008" TEXT="Blocks generated with PoW get very low trust (inherited from Peercoin)"/>
</node>
<node CREATED="1444990083724" ID="ID_1078318025" MODIFIED="1444990088615" TEXT="cache">
<node CREATED="1444990157810" ID="ID_822606166" MODIFIED="1444990174646" TEXT="vote transacation are added up as they are received"/>
<node CREATED="1444990175634" ID="ID_462319390" MODIFIED="1444990207030" TEXT="when vote proposal txn is posted, proposal is marked redeemed"/>
<node CREATED="1444990244843" ID="ID_1390760131" MODIFIED="1444990269278" TEXT="addresses which participate in voting are cached with a timestamp indicating the last time they voted. This is used to determine the vote total"/>
</node>
<node CREATED="1444996931023" ID="ID_1706006000" MODIFIED="1444996941561" TEXT="voting">
<node COLOR="#cc3300" CREATED="1444996943038" ID="ID_690197111" MODIFIED="1445041663466" TEXT="Cannot take place for the first few blocks... to give people a chance to register"/>
</node>
</node>
<node CREATED="1445136395713" ID="ID_1081486889" MODIFIED="1445136397125" POSITION="right" TEXT="TODO">
<node CREATED="1445137038369" ID="ID_423107977" MODIFIED="1445137038997" TEXT="1"/>
<node CREATED="1445137019409" ID="ID_1330490338" MODIFIED="1445137021301" TEXT="2">
<node CREATED="1445136400097" ID="ID_1867873505" MODIFIED="1445136406237" TEXT="Why are blocks being mined every second?">
<node CREATED="1445136411545" ID="ID_901737279" MODIFIED="1445136424605" TEXT="When we first start the network, everyone is mining every second"/>
</node>
<node CREATED="1445136984121" ID="ID_1402537902" MODIFIED="1445137005285" TEXT="Uses a lot of the cpu, around 17% even when only pos staking???"/>
</node>
<node CREATED="1445137046681" ID="ID_1295495863" MODIFIED="1445137048261" TEXT="2.5"/>
<node CREATED="1445137039753" ID="ID_1243866097" MODIFIED="1445137040157" TEXT="3"/>
<node CREATED="1445137040689" ID="ID_809292046" MODIFIED="1445137041165" TEXT="4"/>
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
