<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1443874855599" ID="ID_742251330" MODIFIED="1448760773055" TEXT="Voting Coin">
<node CREATED="1444028673000" FOLDED="true" ID="ID_652303042" MODIFIED="1450424479529" POSITION="right" TEXT="closed questions">
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
<node CREATED="1446002008308" ID="ID_1446918280" MODIFIED="1446002018817" TEXT="Do we need to store messages somewhere?">
<node CREATED="1446002021125" ID="ID_1980182557" MODIFIED="1446722958065" TEXT="No">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1446001277557" ID="ID_1483312421" MODIFIED="1446001845623" TEXT="What happens if there are two upgrade clients calls in the same block?">
<node CREATED="1446001451205" ID="ID_1133956769" MODIFIED="1446001467560" TEXT="The problem is that we are storing only one CPublicProposalData per block"/>
<node CREATED="1446001508157" ID="ID_1034270459" MODIFIED="1446001517177" TEXT="The two upgrades may have conflicting deadlines"/>
<node CREATED="1446001469173" ID="ID_1374086573" MODIFIED="1446001482400" TEXT="Its such a rare thing to occur I don&apos;t want to complicate the code for this."/>
<node CREATED="1446001518085" ID="ID_635340999" MODIFIED="1446001533503" TEXT="We will use the earliest of the deadlines regardless of the upgrade that created it">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1447424278853" ID="ID_1186530024" MODIFIED="1447554825270" TEXT="What if someone votes a million times and then stakes with that. Would it be an effective dos?">
<node CREATED="1447554781356" ID="ID_1134988575" MODIFIED="1447554797640" TEXT="It would cost a lot, and effect only a single block"/>
<node CREATED="1447554798380" ID="ID_1342533632" MODIFIED="1447554817577" TEXT="It may not be a problem"/>
<node CREATED="1447554820197" ID="ID_1227883896" MODIFIED="1447554823510" TEXT="FUTURE">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1446370088317" ID="ID_563786974" MODIFIED="1447578318606" TEXT="Why don&apos;t we store appstate in cblockindex directly?">
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
<node CREATED="1447901899578" FOLDED="true" ID="ID_1799798953" MODIFIED="1447928600495" TEXT="When spending, we need to fall through to the staked txn to determine if it is matured or not">
<node CREATED="1447901926131" ID="ID_781626674" MODIFIED="1447901937016" TEXT="implementation">
<node CREATED="1447901938387" ID="ID_1618191795" MODIFIED="1447901962991" TEXT="We check normal input conditions in ConnectInputs"/>
<node CREATED="1447901963491" ID="ID_3047934" MODIFIED="1447901976095" TEXT="Beforehand we call FetchInputs to retrieve the inputs of the txn to check"/>
<node CREATED="1447901976386" ID="ID_963962265" MODIFIED="1447901996438" TEXT="FetchInputs not only checks the disk, but also in memory txns for the current block">
<node CREATED="1447901997875" ID="ID_1694622272" MODIFIED="1447902035007" TEXT="We will need to do the same"/>
</node>
<node CREATED="1447902037563" ID="ID_952955487" MODIFIED="1447902078223" TEXT="So we create FetchNonVoteInput, which given a voting txn, returns the latest non vote ancestor to check"/>
</node>
</node>
</node>
<node CREATED="1444694502424" ID="ID_1517243472" MODIFIED="1451696236425" POSITION="right" TEXT="coding">
<node CREATED="1444787383783" ID="ID_208007625" MODIFIED="1450424481374" TEXT="new ops">
<node CREATED="1444804794921" ID="ID_64752469" MODIFIED="1447555634772" TEXT="OP_UPGRADE_CLIENT &lt;block deadline&gt; &lt;git commit&gt; ..">
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
<node CREATED="1446723005095" ID="ID_1445095052" MODIFIED="1446723012331" TEXT="We need to create a procedure for an upgrade"/>
<node COLOR="#ff0000" CREATED="1446001956997" ID="ID_983022076" MODIFIED="1446001959501" TEXT="TODO"/>
</node>
<node CREATED="1446028520171" ID="ID_1993156353" MODIFIED="1446028555568" TEXT="What happens if user is shown upgrade message, and then block chain reorgs?">
<node CREATED="1446028557644" ID="ID_364778146" MODIFIED="1446028623664" TEXT="Maybe we should keep everything in the block index, and reference it from there">
<node CREATED="1446028634876" ID="ID_548773268" MODIFIED="1446028660968" TEXT="This would cause bloat if we copied the messages and the upgrade client stuff to the future blocks as they connect"/>
<node COLOR="#ff0000" CREATED="1446028698739" ID="ID_466996106" MODIFIED="1446028805764" TEXT="What if we had a link to the past block in the form of an index?">
<node CREATED="1446028735820" ID="ID_10195509" MODIFIED="1446028770840" TEXT="If it&apos;s present, we go back to that block to find the upgrade necessary"/>
<node CREATED="1446028772036" ID="ID_664915778" MODIFIED="1446028777984" TEXT="If it isn&apos;t we do nothing"/>
<node COLOR="#ff0000" CREATED="1446028778980" ID="ID_1629381455" MODIFIED="1446028801771" TEXT="But how does that work for messages?"/>
</node>
<node CREATED="1446028806212" ID="ID_1697018565" MODIFIED="1446723118264" TEXT="Is there a better way?">
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
<node CREATED="1446723126288" ID="ID_1315859088" MODIFIED="1446723135642" TEXT="It&apos;s too much work and of dubious benefit">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
<node CREATED="1446682345865" ID="ID_1233356391" MODIFIED="1446682350845" TEXT="Enforcement">
<node CREATED="1446682352794" ID="ID_1870972562" MODIFIED="1447555566725" TEXT="if past the deadline, upgrade information is shown, system won&apos;t start"/>
<node CREATED="1446722955792" ID="ID_650904809" MODIFIED="1447555573212" TEXT="When do we shutdown the system after the deadline has passed?">
<node CREATED="1447555583356" ID="ID_1984478489" MODIFIED="1447555590657" TEXT="I think we are doing this when we get a block"/>
</node>
<node CREATED="1446682374401" ID="ID_560528344" MODIFIED="1447555600164" TEXT="If an &quot;unsafe&quot; command is used, error will be shown"/>
<node CREATED="1446682429241" ID="ID_1267419512" MODIFIED="1447555619724" TEXT="getupgradeinfo will show upgrade information"/>
<node CREATED="1446682447976" ID="ID_1073954145" MODIFIED="1447555631948" TEXT="upgrade message is repeatedly shown in the log">
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
<node CREATED="1444811335783" ID="ID_1202491412" MODIFIED="1444811385763" TEXT="OP_DISPLAY_MSG &lt;msg&gt;"/>
<node CREATED="1445068782820" ID="ID_769852395" MODIFIED="1448276287165" TEXT="OP_VOTE">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1445068913043" ID="ID_257750203" MODIFIED="1445068957145" TEXT="Vote is only valid if it appears in a block where the block&apos;s epoch time &lt;= the deadline"/>
<node CREATED="1448276312073" ID="ID_1838529454" MODIFIED="1448276318333" TEXT="op goes into script sig only"/>
<node CREATED="1448276301713" ID="ID_43847169" MODIFIED="1448276310429" TEXT="input must be the proposal txn"/>
<node CREATED="1448276461993" ID="ID_992354813" MODIFIED="1448276512526" TEXT="If we do this, then the proposal txn must have one output that doesn&apos;t send any money (which people can link to for voting)">
<node CREATED="1448276550809" ID="ID_1350998216" MODIFIED="1448276555477" TEXT="It still seems worth it to me"/>
<node CREATED="1448276555777" ID="ID_969773445" MODIFIED="1448276578661" TEXT="It will even make block explorers more easily updated to link to what was voted on, etc"/>
</node>
<node CREATED="1448276986721" ID="ID_238477079" MODIFIED="1448276992293" TEXT="What about OP_VOTE 0?">
<node CREATED="1448277020753" ID="ID_226339612" MODIFIED="1448277029701" TEXT="Maybe a special proposal in the genesis?"/>
</node>
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
<node CREATED="1445913577987" ID="ID_1927579689" MODIFIED="1447578409937" TEXT="Can&apos;t do this, because we&apos;d still need to find the original time of the staking, or clients would lose their stake when they voted">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
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
</node>
<node CREATED="1446002470581" ID="ID_859581316" MODIFIED="1447661480626" TEXT="OP_REGISTER_ALERT_PUBLIC_KEY????">
<node CREATED="1446002482197" ID="ID_392360717" MODIFIED="1446002499097" TEXT="Allows a new user to send an alert to the network"/>
<node CREATED="1447661490442" ID="ID_216720078" MODIFIED="1447661492347" TEXT="FUTURE">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1446002501453" ID="ID_1413491840" MODIFIED="1447661482522" TEXT="OP_REVOKE_ALERT_PUBLIC_KEY????">
<node CREATED="1446002512205" ID="ID_1762033954" MODIFIED="1446002518345" TEXT="Revokes an alert public key"/>
<node CREATED="1447661487818" ID="ID_1481132170" MODIFIED="1447661489795" TEXT="FUTURE">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1448278772906" ID="ID_1693300060" MODIFIED="1448278776006" TEXT="OP_VOTE_DEADLINE">
<node CREATED="1448278777706" ID="ID_491918253" MODIFIED="1448278812189" TEXT="Must be first command in first output script of proposal. Indicates the vote deadline"/>
<node CREATED="1448278856601" ID="ID_250783010" MODIFIED="1448278878149" TEXT="Votes will not be accepted into a block if the block timestamp is greater than OP_VOTE_DEADLINE"/>
<node COLOR="#ff0000" CREATED="1448279054474" ID="ID_658477948" MODIFIED="1448279057625" TEXT="TODO"/>
</node>
</node>
<node CREATED="1445911135323" ID="ID_1928758003" MODIFIED="1447661498847" TEXT="checkpoints">
<node CREATED="1445829674457" ID="ID_875566654" MODIFIED="1445911148650" TEXT="Publish checkpoints to forums/public places">
<node CREATED="1445829808817" ID="ID_1148533373" MODIFIED="1445911112423" TEXT="Add rpc to enforce checkpoint"/>
<node COLOR="#ff0000" CREATED="1445912959042" ID="ID_1388228549" MODIFIED="1445912962131" TEXT="TODO"/>
</node>
<node CREATED="1445829731113" ID="ID_1760783197" MODIFIED="1445911174386" TEXT="Checkpoint is harded coded into source and can be upgraded">
<node COLOR="#ff0000" CREATED="1445912964722" ID="ID_1080183006" MODIFIED="1445912966763" TEXT="TODO"/>
</node>
</node>
<node CREATED="1444811826007" FOLDED="true" ID="ID_70535443" MODIFIED="1447578908573" TEXT="new rpc commands">
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
<node CREATED="1444904510571" FOLDED="true" ID="ID_116372185" MODIFIED="1449974664883" TEXT="PoW">
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
<node CREATED="1447928754417" ID="ID_1180192671" MODIFIED="1450424513360" TEXT="proposals">
<node CREATED="1447928758481" ID="ID_1481281938" MODIFIED="1447928766341" TEXT="recording proposals in db for displaying information about them">
<node CREATED="1447928768049" ID="ID_830009308" MODIFIED="1447928780061" TEXT="Do we need to do this?">
<node CREATED="1447928781593" ID="ID_687600595" MODIFIED="1447928794189" TEXT="What if we vote on the proposals themselves, then we don&apos;t need an extra table"/>
<node CREATED="1447928795057" ID="ID_1233439152" MODIFIED="1447928828370" TEXT="We can then just modify the redeemed proposal to be a proposal before we hash and check it.">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1448277080562" ID="ID_872950358" MODIFIED="1448278754530" TEXT="Wait, where is deadline stored now?">
<node CREATED="1448277089217" ID="ID_1548992646" MODIFIED="1448277119301" TEXT="We can&apos;t place it is the proposal anymore, because that gets added to the block, and will be rejected if too far forward in the future"/>
<node CREATED="1448277157954" ID="ID_1183716287" MODIFIED="1448277174614" TEXT="Unless we put a special condition to allow proposals, regardless of timestamp, in any block"/>
<node CREATED="1448277220825" ID="ID_385965659" MODIFIED="1448278766527" TEXT="Or we have a special command, OP_VOTE_DEADLINE?">
<node CREATED="1448278719802" ID="ID_1858360917" MODIFIED="1448278725373" TEXT="I think this is the best bet"/>
<node CREATED="1448278728553" ID="ID_94728280" MODIFIED="1448278746157" TEXT="We don&apos;t want to keep overloading the meaning of fields, which we would be doing by using timestamp"/>
<node COLOR="#ff0000" CREATED="1448278750185" ID="ID_943414775" MODIFIED="1448278752801" TEXT="TODO"/>
</node>
</node>
</node>
</node>
<node CREATED="1448276869625" ID="ID_929854646" MODIFIED="1448276958809">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      proposals first output must give zero coin. All public stuff (display msg/ upgrade) will be there.
    </p>
    <p>
      When voting, votes will be attached to this first proposal as the first input for it.
    </p>
  </body>
</html></richcontent>
<node COLOR="#ff0000" CREATED="1448276959945" ID="ID_1864282986" MODIFIED="1448276961921" TEXT="TODO"/>
</node>
<node CREATED="1448279065570" ID="ID_1125321953" MODIFIED="1448279081373" TEXT="Redeemed proposal timestamp will be a valid timestamp">
<node CREATED="1448279084434" ID="ID_1576675116" MODIFIED="1448279131741" TEXT="We don&apos;t want to overload fields, in this case, the timestamp of a transaction, so we use a separate timestamp for redeemed proposals, rather than reusing the timestamp of the proposal"/>
<node COLOR="#ff0000" CREATED="1448279133610" ID="ID_132414689" MODIFIED="1448279136002" TEXT="TODO"/>
</node>
<node CREATED="1448279137730" ID="ID_54799089" MODIFIED="1448279145181" TEXT="Do we even need a redeemed proposal?">
<node CREATED="1448279147849" ID="ID_947401144" MODIFIED="1448279236469" TEXT="If we put some sort of proposal timer, we could potentially execute it without redeeming it"/>
<node CREATED="1448279237714" ID="ID_948535357" MODIFIED="1448279247853" TEXT="It would simplify things from a user perspective"/>
<node CREATED="1448279257994" ID="ID_1907372791" MODIFIED="1448281019637" TEXT="But how would we implement this timer?">
<node CREATED="1448279348074" ID="ID_1505259068" MODIFIED="1448279437406" TEXT="Maybe make it the &quot;timer&quot; rounded to some integral period, say 60 seconds"/>
<node CREATED="1448279438395" ID="ID_1562115853" MODIFIED="1448279467157" TEXT="When a block is retrieved, it will increment a master time value"/>
<node CREATED="1448279467889" ID="ID_472442027" MODIFIED="1448279487694" TEXT="We step through the time values to evaluate each proposal"/>
<node CREATED="1448279488025" ID="ID_1028515846" MODIFIED="1448279499781" TEXT="If it passed, we display the message, ask for an upgrade, etc."/>
<node CREATED="1448279514225" ID="ID_1310484320" MODIFIED="1448279542430" TEXT="When we disconnect a block, we undisplay messages, remove the upgrade requests etc, by reverse stepping downwards."/>
<node CREATED="1448280089106" ID="ID_1746451642" MODIFIED="1448281024970" TEXT="Unless there is a way to select a range from the db?">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1448280673633" ID="ID_547930257" MODIFIED="1448280795134" TEXT="Yes, we can"/>
<node CREATED="1448280687841" ID="ID_1804324738" MODIFIED="1448280831134" TEXT="There is a cursor, we start with Pair(&quot;timer&quot;, timestamp), and continue until we start getting keys that aren&apos;t &quot;timer&quot;.&#xa;">
<node CREATED="1448281032122" ID="ID_981311779" MODIFIED="1448281036742" TEXT="See LoadBlockIndex for details"/>
</node>
<node COLOR="#ff0000" CREATED="1448280972178" ID="ID_60995417" MODIFIED="1448280976129" TEXT="TODO">
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1448279935857" ID="ID_1412102479" MODIFIED="1448279950469" TEXT="Do we need this timer? Can we get away without it?">
<node CREATED="1448279951889" ID="ID_1708913089" MODIFIED="1448279964557" TEXT="Suppose instead of display msg, a proposal just has a title"/>
<node CREATED="1448279965186" ID="ID_1289366950" MODIFIED="1448279980942" TEXT="We still need to enforce upgrades, though"/>
<node CREATED="1448280075858" ID="ID_1489621963" MODIFIED="1448766564640" STYLE="fork" TEXT="So, yes we need it">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1448280998713" ID="ID_296712741" MODIFIED="1448281013450" TEXT="Get rid of redeemed proposal, replace with timer">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1444990083724" ID="ID_1078318025" MODIFIED="1444990088615" TEXT="cache">
<node CREATED="1444990157810" ID="ID_822606166" MODIFIED="1445914857408" TEXT="We create a total for each txn and deadline within the db"/>
</node>
<node CREATED="1444996931023" FOLDED="true" ID="ID_1706006000" MODIFIED="1448760354277" TEXT="voting">
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
<node CREATED="1445736539117" ID="ID_853020845" MODIFIED="1447661430810" TEXT="Should we allow voting for different entities with different accounts?">
<node CREATED="1445736557125" ID="ID_284316600" MODIFIED="1445736569161" TEXT="People might share a wallet and use different accounts for each of them"/>
<node CREATED="1445912701098" ID="ID_1816890497" MODIFIED="1445912706527" TEXT="Yes, as long as its easy"/>
<node CREATED="1445912707050" ID="ID_1673348619" MODIFIED="1447661429443" TEXT="FUTURE">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff0000" CREATED="1446393546512" ID="ID_1925200700" MODIFIED="1446393560442" TEXT="Should we prevent a deadline that is too early?">
<node CREATED="1446393566932" ID="ID_99940264" MODIFIED="1446393601386" TEXT="An attacker could see that the total votes is really low, and then set a deadline after 30 seconds or so and then immediately vote"/>
<node CREATED="1446393636313" ID="ID_667673206" MODIFIED="1446393638120" TEXT="Yes"/>
<node COLOR="#ff0000" CREATED="1446393638527" ID="ID_1845111188" MODIFIED="1446393641729" TEXT="TODO"/>
</node>
<node CREATED="1447030502924" ID="ID_825206545" MODIFIED="1447030510984" TEXT="Preventing interruption in staking">
<node CREATED="1447030521276" ID="ID_728997998" MODIFIED="1447030582352" TEXT="AvailableCoins isn&apos;t a good place to be getting the staked tx before the voting one">
<node CREATED="1447030584141" ID="ID_371764171" MODIFIED="1447030605768" TEXT="First, we need a CWalletTx for some methods, such as isConfirmed, etc"/>
<node CREATED="1447030606533" ID="ID_860006276" MODIFIED="1447030635864" TEXT="Second, CWalletTx includes references to txns not yet in the blockchain to support some methods"/>
<node CREATED="1447030636437" ID="ID_1797003351" MODIFIED="1447030696344" TEXT="Third, CWalletTx are stored within the CWallet. So if we start adding our stake txns there, we&apos;d have to check everywhere that mapWallet is being used for bugs."/>
<node CREATED="1447030696804" ID="ID_6950441" MODIFIED="1447031263984" TEXT="Also, If we don&apos;t use CWallet for memory allocation, then we need to allocate it somewhere, and manage it ourselves"/>
</node>
<node CREATED="1447149793534" ID="ID_1827426772" MODIFIED="1447149827506" TEXT="Tx&apos;s may have multiple outputs, only some of those outputs may be owned by the current user and therefore minable">
<node CREATED="1447149831582" ID="ID_346350586" MODIFIED="1447149847690" TEXT="How does WalletTx handle this, if part of the transaction may not be ours?">
<node CREATED="1447150542575" ID="ID_766487896" MODIFIED="1447150616898" TEXT="It just manually looks at each output to see if we own the keys for it"/>
</node>
<node CREATED="1447150654726" ID="ID_564068369" MODIFIED="1447150668987" TEXT="I think, therefore, we need to include the array index in our map to the original txn">
<node CREATED="1447150674655" ID="ID_766729065" MODIFIED="1447150692202" TEXT="Otherwise, how do we know which output of the txn to use, unless we trace each forward?"/>
<node CREATED="1447152093135" ID="ID_1263890995" MODIFIED="1447152098210" TEXT="How does staking do this now?">
<node CREATED="1447152202671" ID="ID_188814041" MODIFIED="1447152223010" TEXT="It goes through each wallet transaction and pushes the outputs individually that are stakable"/>
</node>
<node CREATED="1447155268118" ID="ID_559125265" MODIFIED="1447155286083" TEXT="How long do CWalletTx stay in wallet. When do we cull them?">
<node CREATED="1447159683072" ID="ID_585926260" MODIFIED="1447159690410" TEXT="It seems like they stay there forever">
<node CREATED="1447159731239" ID="ID_1790576754" MODIFIED="1447160038795" TEXT="If true, this means that we don&apos;t need to store this extra info at all, we can simply trace it back through the wallet, I think"/>
</node>
</node>
<node CREATED="1447160043494" ID="ID_1976924672" MODIFIED="1447160053762" TEXT="How does the CWalletTx get saved?">
<node CREATED="1447160337295" ID="ID_1682748712" MODIFIED="1447160362939" TEXT="They are written piecemeal into the wallet.dat whenever they get committed to the main database"/>
</node>
</node>
</node>
</node>
<node CREATED="1448419534660" ID="ID_753847637" MODIFIED="1448419695856" TEXT="When we calculate the total active voters, we can&apos;t use the proposal period to do this. This is because if a proposal is very short, then the active voter count will not be increased for long, and if it is very long (consider null vote which is foerver) the voter count from that would last too long.&#xa;&#xa;So we need to take a count based on whether the coins were voted for in the last 2 weeks or so">
<node CREATED="1448419698252" ID="ID_1601789760" MODIFIED="1448419726800" TEXT="What if a user revotes with their coins?">
<node CREATED="1448419728260" ID="ID_527924393" MODIFIED="1448419743144" TEXT="If the previous coins were older than 2 weeks, than we add the votes as normal"/>
<node CREATED="1448419743612" ID="ID_1545022325" MODIFIED="1448419805168" TEXT="If they are less than 2 weeks, how do we handle this???">
<node CREATED="1448419899508" ID="ID_469454889" MODIFIED="1448420438040" TEXT="Normally we&apos;d add to the vote delta when the vote occurs, and then after 2 weeks worth of blocks, we go back to that block to subtract the delta due to the expiry of those coins.&#xa;&#xa;But if in the meantime, a vote is changed, the date of expiry of those coins now change.">
<node CREATED="1448420439948" ID="ID_362802365" MODIFIED="1448420784983">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Suppose when we see the new vote, we subtract from the delta of the original block.
    </p>
    <p>
      
    </p>
    <p>
      So the delta is no longer the delta, but the 2 week future delta.
    </p>
    <p>
      
    </p>
    <p>
      Since we subtracted those coins in the current block, we can remove it from the 2 week future delta
    </p>
  </body>
</html></richcontent>
<node CREATED="1448437955642" ID="ID_1949963049" MODIFIED="1448437993982" TEXT="The problem is there is no easy way to get a blockindex from a transaction"/>
</node>
<node CREATED="1448437995426" ID="ID_16120178" MODIFIED="1448438167649">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      What if when we process a new block, we also load the one from two weeks ago.
    </p>
    <p>
      
    </p>
    <p>
      Any transaction output that remains unspent and is a vote (there'll only be one), we subtract from the vote total
    </p>
    <p>
      
    </p>
    <p>
      Whenever a vote gets spent, it's also gets subtracted, then.
    </p>
  </body>
</html></richcontent>
<node CREATED="1448438171122" ID="ID_269334690" MODIFIED="1448438225278" TEXT="It&apos;s a little weird, because whenever a vote is spent, that vote gets subtracted from the vote total, which means it won&apos;t get its full vote period worth.&#xa;"/>
</node>
<node COLOR="#ff0000" CREATED="1448420794396" ID="ID_1563933166" MODIFIED="1448420797444" TEXT="TODO"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1446306157404" ID="ID_70177628" MODIFIED="1446306160213" TEXT="voting results">
<node CREATED="1446192619433" FOLDED="true" ID="ID_1763214564" MODIFIED="1448419524943" TEXT="How do we want to programmatically organize this?">
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
<node CREATED="1446297807937" ID="ID_4986919" MODIFIED="1447578348607" TEXT="Should CBlockIndex just have an actual vector (or pointer to one) of CBlockIndexObjects?">
<node CREATED="1446297859153" ID="ID_1359580513" MODIFIED="1446298035189" TEXT="So when we connect, we build the vector, and then run it?"/>
<node CREATED="1446298035609" ID="ID_212355919" MODIFIED="1446298290214" TEXT="Then when we save it, we do the other "/>
<node CREATED="1446306015240" ID="ID_617184599" MODIFIED="1446306130429" TEXT="I don&apos;t see why we even put the vector at all, and not just the hashes">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1446306105457" ID="ID_548875537" MODIFIED="1446306124667" TEXT="We don&apos;t want to load it for every index, only the current one, and we don&apos;t need it after we have loaded it"/>
</node>
</node>
<node CREATED="1446291933269" ID="ID_41317909" MODIFIED="1447661255746" TEXT="So what is the flow?">
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
</node>
</node>
</node>
</node>
<node CREATED="1445502472322" FOLDED="true" ID="ID_1894994353" MODIFIED="1449974669741" TEXT="staking">
<node CREATED="1445502477587" ID="ID_916707394" MODIFIED="1445915141691" TEXT="We have to make sure that when the user votes, it doesn&apos;t change their stake hash, to prevent a grinding attack">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1445914699084" ID="ID_1522722423" MODIFIED="1447661247362" TEXT="Done"/>
</node>
<node CREATED="1445502505363" ID="ID_1734967915" MODIFIED="1445502528631" TEXT="Staking always falls through to the previous transaction if the current txn is a vote"/>
<node CREATED="1445915388988" ID="ID_19568538" MODIFIED="1445915400032" TEXT="After minting, the vote is reinstated in the same block">
<node COLOR="#ff0000" CREATED="1445915409172" ID="ID_886312442" MODIFIED="1445915412500" TEXT="TODO test this"/>
</node>
</node>
<node CREATED="1445504345683" ID="ID_1389366058" MODIFIED="1445504351247" TEXT="proposal txn">
<node CREATED="1445504352708" ID="ID_580089223" MODIFIED="1445504360391" TEXT="This is the txn used when creating a proposal"/>
<node CREATED="1445504360836" ID="ID_860343474" MODIFIED="1445504378160" TEXT="It has a null input, like a coin base, but a index of -2, rather than -1"/>
<node CREATED="1445508896534" ID="ID_1469687555" LINK="#ID_1522598173" MODIFIED="1445509644434" STYLE="fork" TEXT="It cannot be put into the block until after COINBASE_MATURITY"/>
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
<node CREATED="1445835204723" ID="ID_1130232903" MODIFIED="1447660393059" TEXT="Rpc call getproposalmessages"/>
<node CREATED="1445908968722" ID="ID_976326323" MODIFIED="1445908979116" TEXT="Rpc call getinfo will display latest message as well">
<node CREATED="1445915458764" ID="ID_1165790349" MODIFIED="1447660450411" TEXT="FUTURE">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1445835242572" ID="ID_1698459673" MODIFIED="1445835265134" TEXT="In the UI, we&apos;ll have a page for messages.">
<node CREATED="1445835267155" ID="ID_544143617" MODIFIED="1445835278895" TEXT="Also, a bubble will pop up like when receiving funds">
<node COLOR="#ff0000" CREATED="1445915458764" ID="ID_342393447" MODIFIED="1447660909174" TEXT="TODO 2"/>
</node>
<node COLOR="#ff0000" CREATED="1445915458764" ID="ID_3981119" MODIFIED="1447660913366" TEXT="TODO 2"/>
</node>
<node CREATED="1445835289420" ID="ID_533102546" MODIFIED="1445835305800" TEXT="Messages will only be displayed after X confirmations... a few minutes or so">
<node COLOR="#ff0000" CREATED="1445915458764" ID="ID_186453955" MODIFIED="1447660917958" TEXT="TODO 2"/>
</node>
</node>
<node CREATED="1445835307643" ID="ID_550588289" MODIFIED="1445909320642" TEXT="Client upgrades?">
<node CREATED="1445909036378" ID="ID_623486568" MODIFIED="1445909039206" TEXT="nomiccoind">
<node CREATED="1445908991250" ID="ID_1421085117" MODIFIED="1445909032838" TEXT="Should work same as CAlerts. All RPC calls will stop working until client is upgraded. Will print out &quot;Please download and install new version, md5sum &quot;xxxx&quot;, run md5sum to check">
<node CREATED="1446704369699" ID="ID_582975914" MODIFIED="1446705015658" TEXT="Should we use the alert system, ie create an alert directly for an upgrade?">
<node CREATED="1446704886107" ID="ID_590160360" MODIFIED="1446704898391" TEXT="Only one alert can exist at a time. A new alert cancels the old one"/>
<node CREATED="1446704899355" ID="ID_1775093620" MODIFIED="1446705014067" TEXT="Seperate">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
<node CREATED="1445909039706" ID="ID_662288964" MODIFIED="1445909044933" TEXT="nomiccoin-qt">
<node CREATED="1445909047130" ID="ID_1450718540" MODIFIED="1445909073381" TEXT="Place on status bar to upgrade to new version and deadline time">
<node COLOR="#ff0000" CREATED="1445915458764" ID="ID_130087727" MODIFIED="1447660934518" TEXT="TODO 2"/>
</node>
</node>
</node>
</node>
<node CREATED="1448332102526" ID="ID_1565572790" MODIFIED="1448332112027" TEXT="What if we&apos;re out of funds when the proposal passes?">
<node CREATED="1448332119158" ID="ID_484161131" MODIFIED="1448332137434" TEXT="Then the output can&apos;t be spent in that block">
<node COLOR="#ff0000" CREATED="1448332145318" ID="ID_1644556873" MODIFIED="1448332148358" TEXT="TODO"/>
</node>
</node>
<node CREATED="1449057867918" ID="ID_1856991960" MODIFIED="1449057872490" TEXT="Get rid of voteblob?">
<node CREATED="1449057875525" ID="ID_1052715400" MODIFIED="1449057890002" TEXT="Why have it anymore if the proposal is in the blockchain already?"/>
<node COLOR="#ff0000" CREATED="1449057891487" ID="ID_1937774621" MODIFIED="1449057915390" TEXT="TODO"/>
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
<node CREATED="1445913112131" ID="ID_1042284547" MODIFIED="1447661157676" TEXT="FUTURE">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
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
<node CREATED="1446858152711" ID="ID_60178078" MODIFIED="1446858185850" TEXT="Is there a better way than PoW if the block chain slows down?">
<node COLOR="#ff0000" CREATED="1446858187662" ID="ID_525474896" MODIFIED="1446859324221" TEXT="PoW blocks only have 1 trust, so they aren&apos;t really worth anything. this also means they can be ignored when creating PoS blocks. By ignoring the PoW block, you can potentially create a different kernel..."/>
</node>
<node CREATED="1447763386351" ID="ID_128569572" MODIFIED="1451696241867" TEXT="gui">
<node CREATED="1447763392799" ID="ID_1722337055" MODIFIED="1447763407602" TEXT="create proposal">
<node CREATED="1447763923159" ID="ID_208682446" MODIFIED="1447763933667" TEXT="ability to spend funds to multiple parties"/>
<node CREATED="1447763934231" ID="ID_271018157" MODIFIED="1449047846332" TEXT="choose title"/>
<node CREATED="1449047840417" ID="ID_1735985051" MODIFIED="1449047843396" TEXT="choose deadline"/>
<node CREATED="1447763946367" ID="ID_1553483345" MODIFIED="1447763952540" TEXT="ability to upgrade client"/>
<node CREATED="1447764018647" ID="ID_1056000171" MODIFIED="1447764027363" TEXT="creating a proposal will automatically vote for it">
<node CREATED="1447764028791" ID="ID_755429948" MODIFIED="1447764073699" TEXT="Button will be labeled &quot;Create &amp; Vote for Proposal&quot;"/>
</node>
</node>
<node CREATED="1447763408743" ID="ID_38651663" MODIFIED="1447763425290" TEXT="vote">
<node CREATED="1447763416015" ID="ID_1131989645" MODIFIED="1447763430491" TEXT="vote 0"/>
<node CREATED="1447763426055" ID="ID_1142244030" MODIFIED="1448324649209" TEXT="vote proposal blob"/>
</node>
<node CREATED="1447763431655" ID="ID_246318994" MODIFIED="1447763484763" TEXT="view proposals by date">
<node CREATED="1447764092536" ID="ID_743750875" MODIFIED="1447764111420" TEXT="Double click, or Right click and select &quot;Vote&quot; will go to vote screen"/>
<node CREATED="1447764117119" ID="ID_1643825416" MODIFIED="1447764123817" TEXT="Message"/>
<node CREATED="1448324458293" ID="ID_1743686814" MODIFIED="1449049905814" TEXT="Only proposals with &gt;X% votes are shown and user created/voted on proposals">
<node CREATED="1448324479581" ID="ID_1214034160" MODIFIED="1448324521993" TEXT="We can&apos;t show all proposals, to prevent someone from trying to copycat an existing proposal and confuse users as to which one is real"/>
</node>
</node>
<node CREATED="1448324539973" ID="ID_1313359187" MODIFIED="1448324563050" TEXT="view past proposals">
<node CREATED="1448324566205" ID="ID_671414816" MODIFIED="1449048721357" TEXT="Similiar to view proposals by date, except it shows only proposals from the past. Keeps only show proposals with &gt;X% vote rule, so that only proposals seen in &quot;view proposals by date&quot; screen are shown here"/>
<node CREATED="1449048584257" ID="ID_331081736" MODIFIED="1449049919134" TEXT="Also shows user created/voted on proposals"/>
</node>
<node CREATED="1449047993169" ID="ID_616556859" MODIFIED="1451696246591" TEXT="impl">
<node CREATED="1449047996226" ID="ID_1731978595" MODIFIED="1449047997612" TEXT="top bar">
<node CREATED="1449047998921" ID="ID_97366934" MODIFIED="1449047999460" TEXT="add">
<node CREATED="1449048004321" ID="ID_702489227" MODIFIED="1451696418873" TEXT="View Proposals"/>
<node CREATED="1449048028426" ID="ID_573908166" MODIFIED="1449048030316" TEXT="Vote">
<node CREATED="1449048738321" ID="ID_57390108" MODIFIED="1449058084497" TEXT="contains">
<node CREATED="1449058062447" ID="ID_1352712504" MODIFIED="1449058065394" TEXT="Vote Box">
<node CREATED="1449048743537" ID="ID_283999382" MODIFIED="1451696310057" TEXT="Vote Proposal ID &lt;entrybox&gt;">
<node CREATED="1451696344557" ID="ID_1249476041" MODIFIED="1451696358721" TEXT="helptext contains">
<node CREATED="1451696359837" ID="ID_701911945" MODIFIED="1451696397152" TEXT="Enter Proposal ID or &quot;0&quot; to vote &apos;no&apos; on all proposals"/>
</node>
</node>
<node CREATED="1449058068869" ID="ID_1536853203" MODIFIED="1449058074930" TEXT="Search Button"/>
</node>
<node CREATED="1449058084455" ID="ID_777776384" MODIFIED="1449058096802" TEXT="Before successful search, grayed out">
<node CREATED="1449048757210" ID="ID_1336822409" MODIFIED="1449048782750" TEXT="Proposal Info">
<node CREATED="1449048765305" ID="ID_673851210" MODIFIED="1449048766629" TEXT="contains">
<node CREATED="1449048768121" ID="ID_1560322227" MODIFIED="1449048784261" TEXT="Title"/>
<node CREATED="1449048784930" ID="ID_559164271" MODIFIED="1449048786334" TEXT="Deadline"/>
<node CREATED="1449048844194" ID="ID_1569124482" MODIFIED="1449048847925" TEXT="Upgrade box">
<node CREATED="1449049689915" ID="ID_1496468316" MODIFIED="1449049691725" TEXT="Git commit"/>
<node CREATED="1449049692339" ID="ID_240130769" MODIFIED="1449049697958" TEXT="Upgrade Version"/>
<node CREATED="1449049698649" ID="ID_1046306082" MODIFIED="1449049701166" TEXT="Upgrade deadline"/>
<node CREATED="1449049701914" ID="ID_1796163376" MODIFIED="1449049706445" TEXT="Binary box">
<node CREATED="1449049708067" ID="ID_1722582149" MODIFIED="1449049709398" TEXT="contains">
<node CREATED="1449049710923" ID="ID_1218194273" MODIFIED="1449049712237" TEXT="os id"/>
<node CREATED="1449049712681" ID="ID_938634904" MODIFIED="1449049714782" TEXT="binary text"/>
</node>
</node>
</node>
<node CREATED="1449049718849" ID="ID_706741586" MODIFIED="1449049737598" TEXT="Spend pool coins box">
<node CREATED="1449049739010" ID="ID_319189813" MODIFIED="1449049743542" TEXT="contains">
<node CREATED="1449049748034" ID="ID_1167079788" MODIFIED="1449049756070" TEXT="Total pool funds"/>
<node CREATED="1449049756499" ID="ID_1174103747" MODIFIED="1449049799813" TEXT="Amount, recipient (repeating...)"/>
</node>
</node>
</node>
</node>
<node CREATED="1449048835081" ID="ID_1455856269" MODIFIED="1449048837469" TEXT="Vote Info">
<node CREATED="1449048839450" ID="ID_774284941" MODIFIED="1449048840942" TEXT="contains">
<node CREATED="1449048786921" ID="ID_780663549" MODIFIED="1449048791374" TEXT="Current Votes"/>
<node CREATED="1449048792074" ID="ID_1871912954" MODIFIED="1449048812989" TEXT="% of Total"/>
<node CREATED="1449048800969" ID="ID_1641140432" MODIFIED="1449048816709" TEXT="% needed to pass"/>
</node>
</node>
<node CREATED="1449049871170" ID="ID_1714519234" MODIFIED="1449049874677" TEXT="Vote button"/>
</node>
</node>
</node>
<node CREATED="1449048001049" ID="ID_1392511726" MODIFIED="1449048003796" TEXT="Create Proposal">
<node CREATED="1449048205217" ID="ID_1689912015" MODIFIED="1449048214454" TEXT="Modeled after &quot;Send coins&quot;"/>
<node CREATED="1449048226154" ID="ID_47680116" MODIFIED="1449048229797" TEXT="contains">
<node CREATED="1449048231001" ID="ID_315820017" MODIFIED="1449048237492" TEXT="Title &lt;entrybox&gt;"/>
<node CREATED="1449048238241" ID="ID_154569625" MODIFIED="1449048253966" TEXT="Deadline &lt;date entry box, defaults to 1 week ahead, parses text&gt;"/>
<node CREATED="1449048536017" ID="ID_1336497807" MODIFIED="1449048553766" TEXT="Create and Vote for Proposal"/>
<node CREATED="1449048311281" ID="ID_1120649" MODIFIED="1449048870045" TEXT="Git commit &lt;entry box&gt;"/>
<node CREATED="1449048859594" ID="ID_1280309051" MODIFIED="1449048866005" TEXT="Upgrade version &lt;entry box&gt;"/>
<node CREATED="1449048871881" ID="ID_1070179485" MODIFIED="1449048919630" TEXT="Upgrade deadline &lt;entry box&gt;"/>
<node CREATED="1449048509545" ID="ID_1956710873" MODIFIED="1449048622918" TEXT="Spend pool coins">
<node CREATED="1449048517697" ID="ID_1510957749" MODIFIED="1449048518982" TEXT="contains">
<node CREATED="1449048495577" ID="ID_1891664671" MODIFIED="1449048503173" TEXT="Total pool funds"/>
<node CREATED="1449048439058" ID="ID_1628242193" MODIFIED="1449048456341" TEXT="&quot;Send coins&quot; pay box, except no label"/>
<node CREATED="1449048471353" ID="ID_1447044384" MODIFIED="1449048494110" TEXT="&quot;Send coins&quot; add recipient and clear recipient buttoons"/>
</node>
</node>
</node>
<node CREATED="1449048627817" ID="ID_456066317" MODIFIED="1449058011881" TEXT="On &quot;Create and Vote for Proposal&quot; button click, displays vote txn hash and explanation that it won&apos;t be shown in the GUI unless at least X% vote for it"/>
</node>
</node>
</node>
<node COLOR="#ff0000" CREATED="1449057774622" ID="ID_714953285" MODIFIED="1449057786986" TEXT="what about pending upgrade?"/>
</node>
</node>
<node CREATED="1447807572645" ID="ID_45748042" MODIFIED="1447807590335" TEXT="We should have different levels of votes needed for different proposals">
<node CREATED="1447807597482" ID="ID_426317586" MODIFIED="1447807600908" TEXT="Display message only">
<node CREATED="1447807608231" ID="ID_51078785" MODIFIED="1447807610982" TEXT="10%"/>
</node>
<node CREATED="1447807612471" ID="ID_82890840" MODIFIED="1447807615426" TEXT="Spend funds">
<node CREATED="1447807617015" ID="ID_1564857461" MODIFIED="1447807619690" TEXT="50%"/>
</node>
<node CREATED="1447807621019" ID="ID_1521146140" MODIFIED="1447807624240" TEXT="Change code">
<node CREATED="1447807625300" ID="ID_278382682" MODIFIED="1447807630238" TEXT="66.7%"/>
</node>
<node CREATED="1447807752866" ID="ID_1858838360" MODIFIED="1448856492933" TEXT="FUTURE">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1447764569199" ID="ID_48565674" MODIFIED="1447901841251" TEXT="I think we need to store a link between txn hash and vote blob in the db, and transfer it using p2p">
<node CREATED="1447764634831" ID="ID_157810685" MODIFIED="1447764650835" TEXT="Otherwise, the gui will be very complex. We want to keep it simple for adoption"/>
<node CREATED="1447764672303" ID="ID_495063107" MODIFIED="1447764704156" TEXT="We simply add the ability to ask peers for a particular vote blob for a vote txn">
<node CREATED="1447764705007" ID="ID_71342789" MODIFIED="1447764721923" TEXT="Peers can validate it is a legitimite request because it will be in the block chain"/>
</node>
<node CREATED="1447764748351" ID="ID_1460389295" MODIFIED="1447807770858" TEXT="Or, what if when we create a proposal we store it directly into the block chain?">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1447764777111" ID="ID_645531725" MODIFIED="1447764800395" TEXT="This would be simpler but since everyone can create a proposal, it would clog it up"/>
<node CREATED="1447764800911" ID="ID_607071355" MODIFIED="1447764823539" TEXT="But that is a problem regardless if we require all clients to get a copy of all proposals">
<node CREATED="1447830589690" ID="ID_928654858" MODIFIED="1447830608373" TEXT="But, we could prune proposals with very few votes"/>
</node>
<node CREATED="1447764858879" ID="ID_1956983773" MODIFIED="1447765087171" TEXT="These vote transactions won&apos;t be too big, if we allow only one message to be displayed, and limit the number of receivers for funds spent to a reasonable number">
<node CREATED="1447830720914" ID="ID_1653248628" MODIFIED="1447830736550" TEXT="We could also make the fee higher, or give the fee to the minter rather than the pool"/>
</node>
<node CREATED="1447808885883" ID="ID_356612474" MODIFIED="1447808897298" TEXT="So we need a new transaction type?">
<node CREATED="1447808945559" ID="ID_402941167" MODIFIED="1447808954029" TEXT="OP_PROPOSAL???"/>
</node>
<node CREATED="1447809687223" ID="ID_671875957" MODIFIED="1447809695278" TEXT="Can we use the existing proposal transaction?">
<node CREATED="1447830515460" ID="ID_1521749731" MODIFIED="1447901834650" TEXT="Better to have a seperate transaction, because if we use the exact same transaction, then when we go to redeem it, we&apos;ll be essentially creating two transctions with the same hash">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node COLOR="#ff0000" CREATED="1447901835180" ID="ID_144886029" MODIFIED="1447901839315" TEXT="TODO"/>
</node>
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
<node CREATED="1445505324701" FOLDED="true" ID="ID_1068705924" MODIFIED="1451648434107" POSITION="right" TEXT="testing">
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
<node COLOR="#ff0000" CREATED="1445758986820" ID="ID_1890625477" MODIFIED="1447654876038" TEXT="Test voting and then spending">
<node CREATED="1447654911434" ID="ID_394302474" MODIFIED="1447654925390" TEXT="Vote should be subtracted from vote total"/>
</node>
<node COLOR="#ff0000" CREATED="1446001054269" ID="ID_1990595523" MODIFIED="1446001068412" TEXT="Two proposals redeeming same block"/>
<node COLOR="#ff0000" CREATED="1446001068931" ID="ID_1681261017" MODIFIED="1446001076773" TEXT="Reorg before proposal redeems"/>
<node COLOR="#ff0000" CREATED="1446001077188" ID="ID_875072501" MODIFIED="1446001082380" TEXT="Reorg after proposal redeems"/>
<node COLOR="#ff0000" CREATED="1446695358346" ID="ID_317673262" MODIFIED="1446695376354" TEXT="Test spending more than the pool contains"/>
<node COLOR="#ff0000" CREATED="1446426878538" ID="ID_1240243486" MODIFIED="1446535979385" TEXT="Create &quot;attack&quot; client that posts not allowed transactions on the block chain">
<node COLOR="#ff0000" CREATED="1446426917468" ID="ID_662991222" MODIFIED="1446426927839" TEXT="Redeems before maturity"/>
<node COLOR="#ff0000" CREATED="1446535967997" ID="ID_1951763392" MODIFIED="1446535974275" TEXT="not passed proposals"/>
<node COLOR="#ff0000" CREATED="1446426930804" ID="ID_351339051" MODIFIED="1446426935638" TEXT="... what else?"/>
</node>
<node COLOR="#ff0000" CREATED="1447832357399" ID="ID_898822199" MODIFIED="1447832392472" TEXT="Test that we can&apos;t spend a vote txn that covered up a stake txn">
<node CREATED="1447832396912" ID="ID_633962532" MODIFIED="1447832432044" TEXT="A vote txn can run after a stake, regardless of maturity, but it shouldn&apos;t mask the fact the original stake/base txn is not mature"/>
</node>
<node COLOR="#ff0000" CREATED="1447832556552" ID="ID_709836296" MODIFIED="1447832566127" TEXT="Test that we can&apos;t spend an unredeemed proposal"/>
<node COLOR="#ff0000" CREATED="1448533852744" ID="ID_1682001645" MODIFIED="1448533877437" TEXT="Test voting for invalid proposal with bad checksum"/>
<node COLOR="#ff0000" CREATED="1448533877736" ID="ID_38188672" MODIFIED="1448533888833" TEXT="Test voting for proposal with txn hash that doesn&apos;t exist"/>
<node COLOR="#ff0000" CREATED="1448614813086" ID="ID_1718579596" MODIFIED="1448614825406" TEXT="Test proposal with huge title, make sure it doesn&apos;t use too much memory"/>
<node COLOR="#ff0000" CREATED="1448770055526" ID="ID_1262394076" MODIFIED="1448770077790" TEXT="Test that upgrade actually works. Can we bump CLIENT_VERSION with no ill effects?"/>
<node COLOR="#ff0000" CREATED="1450841486026" ID="ID_1729230154" MODIFIED="1450841506306" TEXT="Test vote after the deadline"/>
<node COLOR="#ff0000" CREATED="1450867732638" ID="ID_1570028216" MODIFIED="1450867746262" TEXT="Test vote before proposal (ie orphan vote)">
<node CREATED="1450867752798" ID="ID_1226991053" MODIFIED="1450867762594" TEXT="Test orphans in general, not sure how they are working"/>
</node>
</node>
</node>
<node CREATED="1445334536006" FOLDED="true" ID="ID_97324318" MODIFIED="1448533872216" POSITION="right" TEXT="distribution">
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
<node CREATED="1445136395713" ID="ID_1081486889" MODIFIED="1450253008713" POSITION="right" TEXT="TODO">
<node CREATED="1445137038369" ID="ID_423107977" MODIFIED="1445137038997" TEXT="1"/>
<node CREATED="1445137019409" ID="ID_1330490338" MODIFIED="1445137021301" TEXT="2">
<node COLOR="#ff0000" CREATED="1446689772817" ID="ID_813066186" MODIFIED="1446689795801" TEXT="Update copyright, license crap"/>
<node COLOR="#ff0000" CREATED="1445153706299" ID="ID_1983967459" MODIFIED="1446689758370" TEXT="make viewproposal function">
<node CREATED="1445153764363" ID="ID_275972263" MODIFIED="1445153775230" TEXT="allows user to see proposal before commiting to it in nomiccoind"/>
</node>
<node COLOR="#ff0000" CREATED="1448275615729" ID="ID_1913232788" MODIFIED="1448275625833" TEXT="Voting for the same thing twice is generating an error?">
<node CREATED="1448275628401" ID="ID_201134692" MODIFIED="1448275656773" TEXT="If you run vote &apos;&lt;xxx&gt;&apos; twice immediately one after another, the second one fails saying the txn already exists. Why does it already exist?"/>
</node>
<node COLOR="#ff0000" CREATED="1450253011443" ID="ID_1293248713" MODIFIED="1450253020451" TEXT="Credit third parties">
<node CREATED="1450253020979" ID="ID_1964874401" MODIFIED="1450253038903" TEXT="&lt;div&gt;Icon made by &lt;a href=&quot;http://www.freepik.com&quot; title=&quot;Freepik&quot;&gt;Freepik&lt;/a&gt; from &lt;a href=&quot;http://www.flaticon.com&quot; title=&quot;Flaticon&quot;&gt;www.flaticon.com&lt;/a&gt; is licensed under &lt;a href=&quot;http://creativecommons.org/licenses/by/3.0/&quot; title=&quot;Creative Commons BY 3.0&quot;&gt;CC BY 3.0&lt;/a&gt;&lt;/div&gt;"/>
</node>
</node>
<node CREATED="1445137046681" ID="ID_1295495863" MODIFIED="1445137048261" TEXT="2.5"/>
<node CREATED="1445137039753" ID="ID_1243866097" MODIFIED="1445137040157" TEXT="3"/>
<node CREATED="1445137040689" ID="ID_809292046" MODIFIED="1445137041165" TEXT="4"/>
</node>
<node CREATED="1445679752945" FOLDED="true" ID="ID_1262595952" MODIFIED="1448348035902" POSITION="right" TEXT="bugs">
<node CREATED="1445679756465" ID="ID_740240627" MODIFIED="1445679757349" TEXT="non standard tx type from createproposal "/>
</node>
<node CREATED="1445397232564" FOLDED="true" ID="ID_75830749" MODIFIED="1448348036967" POSITION="right" TEXT="external stuff">
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
<node CREATED="1445065454955" ID="ID_1110428196" MODIFIED="1451648440462" POSITION="right" TEXT="bitcoin analysis">
<node CREATED="1444032910416" ID="ID_170959613" MODIFIED="1451477789002" TEXT="How does double spend work (in bitcoin)???">
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
<node CREATED="1445162083308" ID="ID_472624435" MODIFIED="1450613743724" TEXT="block chain">
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
<node CREATED="1450613738099" ID="ID_72151057" MODIFIED="1450613739538" TEXT="mapTestPool in ConnectInputs ">
<node CREATED="1450613746421" ID="ID_377172645" MODIFIED="1450613797328" TEXT="Used to keep track of new transaction in the block, so if one transaction links against another in the same block, the transaction is still considered valid"/>
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
<node CREATED="1445566521931" ID="ID_1857117095" MODIFIED="1451477789078" TEXT="Can be retrieve from block with this code">
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
<node CREATED="1450571765388" ID="ID_347098749" MODIFIED="1450571767976" TEXT="CTransaction">
<node CREATED="1450571769508" ID="ID_186636783" MODIFIED="1450571776752" TEXT="contains">
<node CREATED="1450571778076" ID="ID_238286683" MODIFIED="1450571965640" TEXT="vector&lt;CTXIn&gt; vin"/>
<node CREATED="1450571784308" ID="ID_448645734" MODIFIED="1450571972792" TEXT="vector&lt;CTxOut&gt; vout"/>
</node>
</node>
<node CREATED="1450571802380" ID="ID_1620165333" MODIFIED="1450571806824" TEXT="CTxIn">
<node CREATED="1450571808164" ID="ID_1169818629" MODIFIED="1450571815015" TEXT="contains">
<node CREATED="1450571816460" ID="ID_1579354670" MODIFIED="1450571828376" TEXT="COutpoint prevout"/>
<node CREATED="1450571829028" ID="ID_1575444256" MODIFIED="1450571835768" TEXT="CScript scriptSig"/>
<node CREATED="1450571840517" ID="ID_93729556" MODIFIED="1450571844576" TEXT="int nSequence">
<node CREATED="1450840657621" ID="ID_1588012646" MODIFIED="1450840675766" TEXT="This field isn&apos;t used currently. http://bitcoin.stackexchange.com/questions/2025/what-is-txins-sequence"/>
</node>
</node>
</node>
<node CREATED="1450571896172" ID="ID_686335322" MODIFIED="1450571900824" TEXT="COutpoint">
<node CREATED="1450571903092" ID="ID_1982265152" MODIFIED="1450571904039" TEXT="contains">
<node CREATED="1450571905436" ID="ID_1396818744" MODIFIED="1450571942272" TEXT="int n">
<node CREATED="1450571945244" ID="ID_1857471416" MODIFIED="1450572463700" TEXT="index of transaction.vout"/>
</node>
<node CREATED="1450571930052" ID="ID_520890569" MODIFIED="1450571937767" TEXT="uint256 hash">
<node CREATED="1450572002244" ID="ID_36063544" MODIFIED="1450572005408" TEXT="hash of transaction"/>
</node>
</node>
</node>
<node CREATED="1450571845636" ID="ID_276019708" MODIFIED="1450571848184" TEXT="CTxOut">
<node CREATED="1450571849292" ID="ID_925892127" MODIFIED="1450571850519" TEXT="contains">
<node CREATED="1450571851700" ID="ID_1631069507" MODIFIED="1450571875952" TEXT="int nValue">
<node CREATED="1450573019996" ID="ID_1894622285" MODIFIED="1450573023272" TEXT="money spent"/>
</node>
<node CREATED="1450571876268" ID="ID_81866612" MODIFIED="1450571885128" TEXT="CScript scriptPubKey"/>
</node>
</node>
<node CREATED="1450581806323" ID="ID_1901904414" MODIFIED="1450581810735" TEXT="CTxIndex">
<node CREATED="1450581814812" ID="ID_1904892368" MODIFIED="1450581840597" TEXT="stored in the db, keeps track of which output of a transaction is spent"/>
<node CREATED="1451134665110" ID="ID_629421061" MODIFIED="1451134676682" TEXT="only exists for transactions in the main chain"/>
<node CREATED="1451134677534" ID="ID_1088723920" MODIFIED="1451134695466" TEXT="can be used to look up the block in the main chain, see GetTransaction(x,y,z)"/>
<node CREATED="1450581851046" ID="ID_313797184" MODIFIED="1450581852818" TEXT="contains">
<node CREATED="1450581855939" ID="ID_1528080351" MODIFIED="1450581870040" TEXT="CDiskTxPos pos">
<node CREATED="1450581872562" ID="ID_1736654261" MODIFIED="1450581878735" TEXT="pos of transaction"/>
</node>
<node CREATED="1450581882888" ID="ID_1443205125" MODIFIED="1450581908166" TEXT="vector&lt;CDiskTxPos&gt; vSpent">
<node CREATED="1450581911556" ID="ID_603723631" MODIFIED="1450581989044" TEXT="A vector of the spent outputs. Each vSpent entry corresponds to the vout entry in CTransaction of the same index"/>
</node>
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
<node CREATED="1446714150069" ID="ID_1925728240" MODIFIED="1446714156585" TEXT="When does pindexBest change?">
<node CREATED="1446714158069" ID="ID_1519405314" MODIFIED="1446714172505" TEXT="Since upgrade requests depend on the setting of this value, we need to know whenever it changes"/>
<node CREATED="1446714173054" ID="ID_1366986456" MODIFIED="1446714443617" TEXT="LoadBlockIndex()">
<node CREATED="1446715691397" ID="ID_954925765" MODIFIED="1446715705369" TEXT="Calls SetBestChain(), but only if there is some error in the chain"/>
<node CREATED="1446715708341" ID="ID_1048862357" MODIFIED="1446715721649" TEXT="Otherwise sets the pindexBest itself"/>
<node CREATED="1446716307781" ID="ID_1679586941" MODIFIED="1446716316441" TEXT="Loads hashBestChain, which is a global variable"/>
</node>
<node CREATED="1446714444069" ID="ID_780566088" MODIFIED="1446715794513" TEXT="CBlock::SetBestChain()">
<node CREATED="1446715114373" ID="ID_1155547456" MODIFIED="1446715121233" TEXT="Called by a lot of different places"/>
<node CREATED="1446716198462" ID="ID_1053959768" MODIFIED="1446716224889" TEXT="Writes HashBestChain, which is a single variable in the db pointing to a hash of the end of the best chain"/>
</node>
</node>
<node CREATED="1446860812662" ID="ID_549082520" MODIFIED="1446860822322" TEXT="stakemodifier">
<node CREATED="1446861028045" ID="ID_1005055511" MODIFIED="1446865123876" TEXT="ComputeNextStakeModifier">
<node CREATED="1446860823478" ID="ID_617955276" MODIFIED="1446860837251" TEXT="Stake modifier stays constant for 200 minutes worth of blocks"/>
<node CREATED="1446860841093" ID="ID_735952597" MODIFIED="1446860879707" TEXT="It uses a selection interval to choose blocks">
<node CREATED="1446860880815" ID="ID_1120290823" MODIFIED="1446862097826" TEXT="This selection interval is subtracted from the last block in the chain divided by the MODIFIER_INTERVAL_BASE">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1446860928527" ID="ID_1041021148" MODIFIED="1446862114402" TEXT="This means that working off a different block in the chain will change the selection interval, but only when crossing the modifier_interval_base"/>
<node CREATED="1446861601110" ID="ID_1687793104" MODIFIED="1446861603099" TEXT=" int64 nSelectionIntervalStart = (pindexPrev-&gt;GetBlockTime() / MODIFIER_INTERVAL_BASE) * MODIFIER_INTERVAL_BASE - nSelectionInterval;"/>
</node>
</node>
<node CREATED="1446861043710" ID="ID_1908570216" MODIFIED="1446864828123" TEXT="It runs GetStakeModifierSelectionInterval to get the selection interval">
<node CREATED="1446861311783" ID="ID_1946807190" MODIFIED="1446861330683" TEXT="This does a calculation which appears could be replaced with a constant... why is it here?"/>
</node>
<node COLOR="#ff0000" CREATED="1446865126597" ID="ID_1968601185" MODIFIED="1446865143684" TEXT="Not sure what the difference is between BlackCoin, ppcoin and Neucoin in this regard????"/>
</node>
</node>
<node CREATED="1446950853349" ID="ID_1300230350" MODIFIED="1446951021383" TEXT="Minting">
<node CREATED="1446951021376" ID="ID_1038305106" MODIFIED="1446951024056" TEXT="CreateCoinStake">
<node CREATED="1446950872581" ID="ID_104864375" MODIFIED="1446950998840" TEXT="SelectCoins">
<node CREATED="1446951002716" ID="ID_530158102" MODIFIED="1446951008952" TEXT="Chooses the transactions to mint from"/>
</node>
<node CREATED="1446951027596" ID="ID_903403547" MODIFIED="1446951027596" TEXT=""/>
</node>
</node>
<node CREATED="1451648443412" ID="ID_474862989" MODIFIED="1451648450631" TEXT="To create a base58check">
<node CREATED="1451648452093" ID="ID_1254487969" MODIFIED="1451648458216" TEXT="        vector&lt;unsigned char&gt; vch(UBEGIN(tmp), UEND(tmp)); "/>
<node CREATED="1451648475132" ID="ID_1411067105" MODIFIED="1451648476976" TEXT="        return string(&quot;u&quot;) + EncodeBase58Check(vch); "/>
</node>
</node>
<node CREATED="1448351345469" FOLDED="true" ID="ID_93818797" MODIFIED="1451696231944" POSITION="right" TEXT="coding plan">
<node COLOR="#ff0000" CREATED="1448351350493" ID="ID_1525776981" MODIFIED="1448585432026" TEXT="ConnectBlock must handle vote winning">
<node CREATED="1448351366741" ID="ID_1087908550" MODIFIED="1448351408137" TEXT="When a proposal wins a vote, if we can claim it, we need to add it as part of the wallet, a UTXO I suppose"/>
</node>
<node COLOR="#ff0000" CREATED="1448351435941" ID="ID_414627149" MODIFIED="1448585424594" TEXT="we must check that proposols are standard in accepttxn"/>
<node CREATED="1448351493701" ID="ID_152074230" MODIFIED="1448351505609" TEXT="check on voting, does it work right considering our vote deadline stuff?">
<node CREATED="1448352041685" ID="ID_878453415" MODIFIED="1448352050809" TEXT="We can only accept votes that get in a block before the deadline"/>
</node>
<node CREATED="1448353553029" ID="ID_1632545927" MODIFIED="1448353583377" TEXT="When we create a block, we must not only make sure no voting txn for a deadline too late gets in, but also remove it from the memory pool if that is the case"/>
<node CREATED="1448355169573" ID="ID_1965398007" MODIFIED="1448355198249" TEXT="Since coinstakes automatically reinstate votes, they can be vote txns as well">
<node CREATED="1448355199637" ID="ID_1338307251" MODIFIED="1448355206897" TEXT="This is kind of confusing, should we eliminate this?">
<node CREATED="1448355235733" ID="ID_524305088" MODIFIED="1448355242801" TEXT="How many outputs does a stake have, 1 or 2?">
<node CREATED="1448355465501" ID="ID_1062812021" MODIFIED="1448355473889" TEXT="2 or 3 if we are doing the coinstake splitting"/>
</node>
<node CREATED="1448356168765" ID="ID_1427876006" MODIFIED="1448356215550" TEXT="I think it would be best to eliminate it. Since we are handling orphans properly now, we should be able to create additional vote txns for our stake stuff, rather than making stakes do voting directly">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node COLOR="#ff0000" CREATED="1448356494389" ID="ID_1548590035" MODIFIED="1450424429684" TEXT="make sure that when we create a block after the deadline for a proposal, it doesn&apos;t subtract votes if the coins vote for another proposal&#xa;"/>
<node CREATED="1448534686816" ID="ID_1958439265" MODIFIED="1448534696196" TEXT="What about voting and multisig?">
<node CREATED="1448543639673" ID="ID_367496352" MODIFIED="1448543715109">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Voting and multisig and voting with P2SH&#160;will be handled by the fact that a vote's output script must exactly match the output script of the UTXO it is voting against.
    </p>
  </body>
</html></richcontent>
</node>
<node COLOR="#ff0000" CREATED="1448543723977" ID="ID_45634497" MODIFIED="1448543726866" TEXT="TODO"/>
</node>
<node CREATED="1448543727481" ID="ID_515558122" MODIFIED="1448543789103">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      We cannot link votes against proposal outputs. This is because an output can have only one input.
    </p>
    <p>
      So multiple voters could not then vote on a single proposal
    </p>
  </body>
</html></richcontent>
<node CREATED="1448543901513" ID="ID_528968663" MODIFIED="1448543911002" TEXT="We have to go back to op_vote &lt;txn hash&gt;"/>
<node COLOR="#ff0000" CREATED="1448543793433" ID="ID_1454424754" MODIFIED="1448543800993" TEXT="TODO"/>
</node>
</node>
<node CREATED="1449988410079" FOLDED="true" ID="ID_1769013831" MODIFIED="1451648424303" POSITION="right" TEXT="plan2">
<node CREATED="1449988412542" ID="ID_1900370010" MODIFIED="1449988419426" TEXT="No more binary upgrades">
<node CREATED="1449988420678" ID="ID_142233898" MODIFIED="1449988514942">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      There is a difference between trusting an open source commit, and trusting a binary blob.
    </p>
    <p>
      
    </p>
    <p>
      If we allow proposal makers to specify one or more blobs, it becomes very dangerous, since its hard to tell whats in them.
    </p>
    <p>
      
    </p>
    <p>
      Instead, we allow the public to compile the branch themselves and release it to each other as public services (as is done with most software today)
    </p>
  </body>
</html></richcontent>
<node COLOR="#ff0000" CREATED="1449988522638" ID="ID_625150262" MODIFIED="1449988525758" TEXT="TODO"/>
</node>
</node>
<node CREATED="1450407925368" ID="ID_1105512177" MODIFIED="1450407928499" TEXT="versioning">
<node CREATED="1450407930295" ID="ID_1346359549" MODIFIED="1450407953027" TEXT="We need to notify the client if its version is no longer recommended for the network">
<node CREATED="1450407959952" ID="ID_800211961" MODIFIED="1450408003859" TEXT="If the user is on a custom client, this issue still applies, and the warning should still appear"/>
<node CREATED="1450408008384" ID="ID_1415706723" MODIFIED="1450408033028" TEXT="So we need a client version unrelated to the git junk"/>
<node CREATED="1450408033552" ID="ID_305516419" MODIFIED="1450408041979" TEXT="The git commit is for the official client"/>
<node CREATED="1450408042184" ID="ID_864434228" MODIFIED="1450408056323" TEXT="The client version is for custom clients to know when they need to upgrade"/>
<node CREATED="1450408063440" ID="ID_1264053610" MODIFIED="1450408080339" TEXT="But what if the official client is upgraded but it doesn&apos;t affect the custom client?">
<node CREATED="1450408086376" ID="ID_757996770" MODIFIED="1450408098595" TEXT="The custom client will need to be updated to ignore the warning"/>
<node CREATED="1450408100360" ID="ID_768236633" MODIFIED="1450408115995" TEXT="It&apos;s really up to the custom client what to do anyway"/>
</node>
</node>
</node>
<node CREATED="1450424538729" ID="ID_1772492635" MODIFIED="1450424542076" TEXT="proposals">
<node CREATED="1450424543161" ID="ID_42627901" MODIFIED="1450424553028" TEXT="We need to add proposals to block chain"/>
<node CREATED="1450424555401" ID="ID_740020866" MODIFIED="1450424562685" TEXT="We then look them up for voting">
<node CREATED="1450424564161" ID="ID_279079477" MODIFIED="1450424635325">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Should proposals automatically be placed into the lookup index ala&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      bool WriteProposalVoteCount(votehash_t txnHash, timestamp_t deadline, money_t totalVotes)?
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
<node CREATED="1450424821553" ID="ID_1919625525" MODIFIED="1450424881189" TEXT="Yes, because even if there are millions of proposals, we could prevet a slowdown by changing the client to have a second index that only has proposal over a 5% threshold of votes or something"/>
</node>
</node>
<node CREATED="1450425266296" ID="ID_826358123" MODIFIED="1450425272676" TEXT="Do we need a CProposal anymore?">
<node CREATED="1450425294097" ID="ID_151710534" MODIFIED="1450425301997" TEXT="Not really, it was mainly for proposal blobs"/>
</node>
<node CREATED="1450428536281" ID="ID_200144362" MODIFIED="1450428542173" TEXT="Does a proposal txn have an input?">
<node CREATED="1450428543313" ID="ID_31796835" MODIFIED="1450428551029" TEXT="If not, how do we pay fees for creating one?"/>
</node>
<node CREATED="1450428957737" ID="ID_1968590987" MODIFIED="1450428972469" TEXT="fee">
<node CREATED="1450428973649" ID="ID_216369220" MODIFIED="1450428976629" TEXT="Should it be constant?">
<node CREATED="1450428977657" ID="ID_1975369970" MODIFIED="1450429016757" TEXT="If not, then someone could spam proposals to raise fees"/>
</node>
<node CREATED="1450432212489" ID="ID_1121022352" MODIFIED="1450432219645" TEXT="Should it be greater than a regular txn?">
<node CREATED="1450432221977" ID="ID_789731813" MODIFIED="1450432255069" TEXT="We could do this, but I fail to see the importance of it.">
<node CREATED="1450432257353" ID="ID_1968975279" MODIFIED="1450432287341" TEXT="A proposal has to be tracked, true, but only for a maximum of 2 weeks, where a UTXO has to be tracked forever"/>
</node>
</node>
</node>
<node CREATED="1450430710041" ID="ID_1441966471" MODIFIED="1450430719341" TEXT="transactions being marked as proposals">
<node CREATED="1450430720617" ID="ID_427274171" MODIFIED="1450430775255">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      I don't think we need to do this anymore since a proposal is going to need regular inputs,
    </p>
    <p>
      so why complicate it?
    </p>
    <p>
      
    </p>
    <p>
      We'll just use a special script for proposal outputs, and these outputs will have zero coins attached
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1450430956849" ID="ID_1403610035" MODIFIED="1450430980293" TEXT="Wait, we need the full transaction for a proposal, because the funds get sent to private parties">
<node CREATED="1450431110225" ID="ID_1050919086" MODIFIED="1450431152719">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Either we add our own inputs to the proposal, but this would be messy because we have to deal with the change
    </p>
  </body>
</html></richcontent>
<node CREATED="1450431122737" ID="ID_1444238744" MODIFIED="1450431204757" TEXT="The change would need to be sent immediately, but the other private party funds (for when the proposal passes) need to be taken from the funds pool and are locked up"/>
</node>
<node CREATED="1450431207249" ID="ID_1341887322" MODIFIED="1450431504362" TEXT="Vote must be sent out at the same time. The proposal would only be accepted in a block if the vote for it was there as well.">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1450431236681" ID="ID_647906392" MODIFIED="1450431504362" TEXT="We could even create a special txn, with an OP_CREATE_AND_VOTE">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1450431268009" ID="ID_1808132358" MODIFIED="1450431276549" TEXT="This would be charged an additional fee for creating the proposal"/>
</node>
</node>
</node>
<node CREATED="1450438709928" ID="ID_509620742" MODIFIED="1451645694777" TEXT="voteblobs">
<node CREATED="1450439326721" ID="ID_392937667" MODIFIED="1450439329348" TEXT="upsides">
<node CREATED="1450438725968" ID="ID_21756633" MODIFIED="1450439354773" TEXT="Allows someone without any coin to make a proposal, which is one less hurdle for anyone who wants to help out with nomiccoin"/>
<node CREATED="1450439373969" ID="ID_1933797291" MODIFIED="1450439392972" TEXT="Blocksize becomes smaller, no more spam proposals everywhere."/>
</node>
<node CREATED="1450439301096" ID="ID_1889674329" MODIFIED="1450439303284" TEXT="downsides">
<node CREATED="1450439260360" ID="ID_1971245873" MODIFIED="1450439451404" TEXT="Storing proposals in the blockchain (without voteblobs) means we can list the proposals being voted for. Otherwise all the user sees is a bunch of transactions.&#xa;"/>
<node CREATED="1450439452448" ID="ID_1807381724" MODIFIED="1450439468524" TEXT="We lose the history of proposals"/>
<node CREATED="1450439739232" ID="ID_688054160" MODIFIED="1450439762404" TEXT="Confusing to end user. Voteblobs, proposal txns, redeemed proposals. Too many concepts"/>
</node>
<node CREATED="1450439499600" ID="ID_543677472" MODIFIED="1450439553493" TEXT="I think that having someone without coin create a proposal isn&apos;t so valuable. It&apos;s better to make the process simple enough for people that do have coin, then to worry about those without. If you can&apos;t see the proposals in the gui, it is very cumbersome"/>
<node CREATED="1450439774600" ID="ID_624980111" MODIFIED="1450439781224" TEXT="No vote blobs, keep it simple!">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1450431520217" ID="ID_55400632" MODIFIED="1450431521613" TEXT="votes">
<node CREATED="1450431522769" ID="ID_501217053" MODIFIED="1450431569853" TEXT="If a user has a ton of UTXO&apos;s, it doesn&apos;t make sense they&apos;d have to pay extra fees... the system currently creates a transaction per UTXO for a vote">
<node CREATED="1450431574297" ID="ID_107500345" MODIFIED="1450432150602" TEXT="Maybe we could use a single transaction with many UTXO&apos;s. As long as all the funds stay within the UTXO&apos;s that were sent out, we could ignore it for staking purposes">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1450432084289" ID="ID_497605519" MODIFIED="1450488124574" TEXT="However, this could be an opportunity to grind">
<node CREATED="1450487836227" ID="ID_1822306752" MODIFIED="1450488109375" TEXT="Even though joining of inputs is allowed during the stake in the ppcoin code, that only increases the reward. It doesn&apos;t change the odds that a utxo would mint.&#xa;&#xa;However, if we allow vote UTXO amounts to combine and thereby increase, this allows for some grinding opportunities (ie. try each UTXO with the maximum coins available and then split based on that)&#xa;"/>
</node>
<node CREATED="1450432097234" ID="ID_279655827" MODIFIED="1450432152034" TEXT="We just have to make sure the funds going out into a UTXO are equal or less than the funds going in, since the funds of the UTXO don&apos;t affect the txn hash of the UTXO">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
<node CREATED="1450438785865" ID="ID_588452455" MODIFIED="1450438793588" TEXT="security">
<node CREATED="1450438794568" ID="ID_1644159944" MODIFIED="1450438853820" TEXT="minting against more than one chain">
<node CREATED="1450438855808" ID="ID_1378262785" MODIFIED="1450438906316">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      I think that most people are honest, and wouldn't do it. Especially considering that if they own the coin, double spends would greatly reduce the value of it
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1450438927416" ID="ID_1749190471" MODIFIED="1450438956820" TEXT="Getting a bunch of old keys and minting to create an alternative chain">
<node CREATED="1450438958817" ID="ID_258121176" MODIFIED="1450439105892" TEXT="The success of this depends on whether the bad actor can mint more than the honest chain did for a period of time (even given that the miner can grind through different possibilities in order to mint more)&#xa;"/>
<node CREATED="1450439038368" ID="ID_974444224" MODIFIED="1450439070708" TEXT="If enough honest nodes are minting, they won&apos;t be able to catch up. If 100% are minting they definitely won&apos;t be able to."/>
<node CREATED="1450439127921" ID="ID_1013772555" MODIFIED="1450439145092" TEXT="So if the interest rate is high enough, security is maintained."/>
<node CREATED="1450439163360" ID="ID_771139739" MODIFIED="1450439186556" TEXT="Slasher algorithm (ethereum?)"/>
<node CREATED="1450440141288" ID="ID_1267188056" MODIFIED="1450440157964" TEXT="What about the founders? What if they decide to fork the chain, destroying their own chain, I suppose">
<node CREATED="1450440365568" ID="ID_650369140" MODIFIED="1450440499616" TEXT="Each client upgrade will contain a checkpoint">
<node CREATED="1450440506672" ID="ID_129128632" MODIFIED="1450440532132" TEXT="We do this by creating an rpccommand, getcheckpoint &lt;blocks behind&gt;"/>
<node CREATED="1450440533952" ID="ID_156325845" MODIFIED="1450440577396" TEXT="That will create code that can be sent to &quot;checkpoint.h&quot; which will contain the checkpoint information"/>
</node>
</node>
</node>
</node>
<node CREATED="1450525390622" ID="ID_1692939171" MODIFIED="1450525391673" TEXT="staking">
<node CREATED="1450525394342" ID="ID_1990513728" MODIFIED="1450525494041" TEXT="Needs to be fixed for new voting. Both when we find the staking transaction and when we reinstate the vote&#xa;"/>
<node CREATED="1450526215045" ID="ID_125913653" MODIFIED="1450526222906" TEXT="Why is it so hard to make staking not delete the vote?">
<node CREATED="1450526248325" ID="ID_8328624" MODIFIED="1450526272689" TEXT="Considering that another fee would be charged, it seems highly desirable not to have to reinstate the vote"/>
</node>
<node CREATED="1450526344718" ID="ID_104789887" MODIFIED="1450526387665" TEXT="What if instead of looking for voting txns, we just look for txns that send the funds back to where they can from?&#xa;">
<node CREATED="1450526391541" ID="ID_291011390" MODIFIED="1450526628681" TEXT="In this way, we don&apos;t have to worry about voting txns being in a certain format(ie moving funds to different addresses, etc. It&apos;s just that if the funds aren&apos;t moved back to the same address then you can&apos;t stake through them&#xa;&#xa;And, you can only stake-thru if you send an equal or lesser amount back to the same address&#xa;&#xa;"/>
</node>
<node CREATED="1450526639574" ID="ID_668927948" MODIFIED="1450526704340">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      For security, I think we should allow a maximum number of stake-thru's
    </p>
    <p>
      
    </p>
    <p>
      Otherwise, someone could make a million votes, and then stake a block, causing the entire network to have to trace through the million stake-thrus
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1450576144758" ID="ID_193384780" MODIFIED="1479384568107" POSITION="right" TEXT="plan3">
<node CREATED="1450576148254" ID="ID_1145117488" MODIFIED="1450576265650" TEXT="stake reward">
<node CREATED="1450576153366" ID="ID_652461855" MODIFIED="1450583643782" TEXT="what if we had a constant stake reward (like NXT)?">
<node CREATED="1450576168086" ID="ID_1855463446" MODIFIED="1450576193970" TEXT="Because of the min stake age, this would prevent people from creating large UTXO&apos;s to mint from, thereby increasing the security of the network"/>
<node CREATED="1450583588968" ID="ID_1049280151" MODIFIED="1450583611747" TEXT="It would also make people want to stake all the time, rather than cooking their money until the next time to stake"/>
<node CREATED="1450585111098" ID="ID_1134215336" MODIFIED="1450585114540" TEXT="constant reward">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1450746859140" ID="ID_840312162" MODIFIED="1450746867041" TEXT="What should the constant reward be?">
<node CREATED="1450746869693" ID="ID_741075163" MODIFIED="1450747321010">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      It needs to continuously grow, otherwise no one will stake and a takeover is possible. However, the growth of coin is fixed, so this can be figured out beforehand.
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1450576203270" ID="ID_770739598" MODIFIED="1450576207562" TEXT="stake-thru">
<node CREATED="1450576209294" ID="ID_1118265032" MODIFIED="1450576346804">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      With a constant stake reward, maybe we could get away without having a stake thru. The loss of the chance to stake is the fee for voting
    </p>
  </body>
</html></richcontent>
<node CREATED="1450585382880" ID="ID_348135621" MODIFIED="1450585422172" TEXT="However, this might be considered too great. Also, it lowers the number of people staking, especially after an important vote"/>
</node>
<node CREATED="1450583206527" ID="ID_892831896" MODIFIED="1450583226098" TEXT="If we keep stake-thru, should we expand it beyond voting?">
<node CREATED="1450583228202" ID="ID_622718327" MODIFIED="1450583358789">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      I think that we need strict rules for this
    </p>
    <p>
      
    </p>
    <p>
      If we don't have a consistent layout, it's too easy to not know which input of a transaction &quot;belongs&quot; to what output
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1450583562202" ID="ID_686542112" MODIFIED="1450583566998" TEXT="So, no, just voting"/>
</node>
<node CREATED="1450584074921" ID="ID_185939605" MODIFIED="1450584083265" TEXT="Do we keep stake-thru?">
<node CREATED="1450584106101" ID="ID_1280765386" MODIFIED="1450585428069" TEXT="Yes">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1450587023548" ID="ID_1952260903" MODIFIED="1450587027146" TEXT="impl">
<node CREATED="1450587029883" ID="ID_988025303" MODIFIED="1450587047027" TEXT="non vote ancestor">
<node CREATED="1450587048941" ID="ID_1463689733" MODIFIED="1450587051412" TEXT="needed">
<node CREATED="1450587052693" ID="ID_805216445" MODIFIED="1450587058512" TEXT="When we stake">
<node CREATED="1450587075600" ID="ID_1329232335" MODIFIED="1450587103284" TEXT="We can use a COutpoint for this, because we can use a CTransaction as well"/>
</node>
<node CREATED="1450587058928" ID="ID_1833040864" MODIFIED="1450587065370" TEXT="When we verify a stake"/>
</node>
<node CREATED="1450614112221" ID="ID_1838259854" MODIFIED="1450614153258" TEXT="We have to handle vote transactions that link to each other in the same block"/>
<node CREATED="1450614153899" ID="ID_1538773315" MODIFIED="1450614216679" TEXT="We also need to handle in memory transactions when staking (ie, they may vote and then stake, putting their own vote in the block.)">
<node CREATED="1450614570312" ID="ID_1784120963" MODIFIED="1450614590936" TEXT="Another way to look at that is they are staking from a transaction (the vote) that is still in the memory pool"/>
<node CREATED="1450614606558" ID="ID_1417731253" MODIFIED="1450614630951" TEXT="Just disallow this? It would only prevent them from being able to stake until the next minute"/>
</node>
</node>
</node>
</node>
<node CREATED="1450585125281" ID="ID_1132803927" MODIFIED="1450585128634" TEXT="staking">
<node CREATED="1450585131755" ID="ID_675921584" MODIFIED="1450585249924">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      when we successfully stake, we need to split the outputs for more optimal staking
    </p>
    <p>
      
    </p>
    <p>
      For example, given a constant stake reward, a person with 1000 UTXO's will stake more than one with 1 UTXO even with the same amount of coin, because whenever a stake occurs, the min stake age comes into play
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1450679254706" ID="ID_1424912798" MODIFIED="1450679256014" TEXT="voting">
<node CREATED="1450679256986" ID="ID_659077598" MODIFIED="1450679425950" TEXT="It wil be difficult to allow voting immediately after staking period because now that votes combine several transactions together, they could combine a premature stake and a regular confirmed transaction. So unless we want to untangle that mess, by going through each of the inputs of the vote transaction, we won&apos;t know whether the vote transaction is confirmed or not"/>
<node CREATED="1450679427266" ID="ID_386476003" MODIFIED="1450679454454" TEXT="Since UTXO&apos;s should be split up anyways for maximum profit, this shouldn&apos;t be a big deal"/>
</node>
<node CREATED="1450840965610" ID="ID_1863606414" MODIFIED="1450840977878" TEXT="votes and proposals when creating a new block">
<node CREATED="1450840996987" ID="ID_1872646582" MODIFIED="1450841021111" TEXT="Votes and proposals need to come in together to be placed in a block">
<node CREATED="1450841046442" ID="ID_1503593301" MODIFIED="1450841048591" TEXT="because">
<node CREATED="1450841049962" ID="ID_314606145" MODIFIED="1450841067214" TEXT="Votes can&apos;t be accepted if they are for proposals that don&apos;t exist">
<node CREATED="1450841080451" ID="ID_812011803" MODIFIED="1450841084679" TEXT="Why?">
<node CREATED="1450841086362" ID="ID_634900099" MODIFIED="1450841106230" TEXT="We don&apos;t want to get weird votes that will never be discarded"/>
<node CREATED="1450841108114" ID="ID_665682768" MODIFIED="1450841140094" TEXT="But, why not? I mean, if a vote is for a proposal that doesn&apos;t exist, it doesn&apos;t really affect the system. Does it?"/>
<node CREATED="1450841179210" ID="ID_719237996" MODIFIED="1450841224517">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Lets say we get a vote past the deadline, what then?
    </p>
    <p>
      
    </p>
    <p>
      From the client perspective, it cast the vote. Only the vote is rejected by the network, yet the client never knows this.
    </p>
  </body>
</html></richcontent>
<node CREATED="1450841227642" ID="ID_916840832" MODIFIED="1450841247542" TEXT="Therefore, we need to accept votes past the deadline. They just can&apos;t alter the vote totals"/>
<node CREATED="1450841346042" ID="ID_152047669" MODIFIED="1450841457035" TEXT="But without the deadline, which is in the proposal, we will never know whether to count the vote or not.">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
<node CREATED="1450841067586" ID="ID_1754480298" MODIFIED="1450841077367" TEXT="Proposals can&apos;t be accepted if there are no votes for them">
<node CREATED="1450841415475" ID="ID_409134566" MODIFIED="1450841427886" TEXT="Otherwise a person could create a bunch of free proposals and clog the system"/>
</node>
</node>
<node CREATED="1450841435819" ID="ID_337543758" MODIFIED="1450841439311" TEXT="so">
<node CREATED="1450841514979" ID="ID_1179810964" MODIFIED="1450841525902" TEXT="We need to store orphan votes and orphan proposals"/>
<node CREATED="1450841537003" ID="ID_963167861" MODIFIED="1450841564047" TEXT="Once the vote comes in, proposal is no longer an orphan, and vice versa"/>
</node>
<node CREATED="1450841600442" ID="ID_279237041" MODIFIED="1450841623415" TEXT="What if we used a new message to send a proposal with its first vote?"/>
</node>
</node>
</node>
<node CREATED="1450848953296" ID="ID_1102497" MODIFIED="1452320231721" POSITION="right" TEXT="plan4">
<node CREATED="1450848956720" ID="ID_761943453" MODIFIED="1450848973596" TEXT="proposals have a fee and the inputs must specify the fee">
<node CREATED="1450848978448" ID="ID_1031416311" MODIFIED="1450848986916" TEXT="In this way we can increase the cost of proposals"/>
<node CREATED="1450849848896" ID="ID_1419958051" MODIFIED="1450849861108" TEXT="The fee gets added to the pool/minting fee"/>
<node CREATED="1450851530504" ID="ID_845883477" MODIFIED="1450851540716" TEXT="How do we return change, though?">
<node CREATED="1450851541848" ID="ID_166289240" MODIFIED="1450851560820" TEXT="Can we create a transaction beforehand that gives back the change?"/>
</node>
</node>
<node CREATED="1450849884304" ID="ID_1551860459" MODIFIED="1450849906500" TEXT="we will still need to properly orphan votes, though.">
<node CREATED="1450859381369" ID="ID_1403581755" MODIFIED="1450859403557" TEXT="Do we? I mean if the proposal isn&apos;t in the block chain, can&apos;t we just ignore it?">
<node CREATED="1450859404881" ID="ID_1912185841" MODIFIED="1450859424268" TEXT="The only problem with this is that the blockchain could fork"/>
</node>
</node>
<node CREATED="1451031139487" ID="ID_296204175" MODIFIED="1451031145891" TEXT="constant reward">
<node CREATED="1451031161559" ID="ID_1705639740" MODIFIED="1451031171803" TEXT="How can we prevent stakes from getting too small?">
<node CREATED="1451031182528" ID="ID_1247334629" MODIFIED="1451031200811" TEXT="What if we had a base constant reward and a time based reward added to it?"/>
</node>
</node>
<node CREATED="1451031257271" ID="ID_1772986037" MODIFIED="1451031262500" TEXT="do we want to keep stake-thru?">
<node CREATED="1451031263856" ID="ID_1626508455" MODIFIED="1451031275723" TEXT="If we don&apos;t have it, then it will be easier code"/>
</node>
<node CREATED="1451037676409" ID="ID_619642672" MODIFIED="1451041440285" TEXT="What if the pool runs out of money before the proposal passed?">
<node CREATED="1451041455505" ID="ID_796820103" MODIFIED="1451041469252" TEXT="Then it&apos;s invalid and doesn&apos;t pass"/>
</node>
<node CREATED="1451123921020" ID="ID_1696997771" MODIFIED="1451123932024" TEXT="Why do we have vote transactions on vin">
<node CREATED="1451123934100" ID="ID_1608973172" MODIFIED="1451123966712" TEXT="vout is no good, because we don&apos;t have the key. It would be somewhat silly to run the output script knowing it would fail because we don&apos;t have the proper input"/>
<node CREATED="1451123967477" ID="ID_1925901732" MODIFIED="1451124017769" TEXT="The other option is attaching it to the txn itself, not in vin nor vout, but this is pretty nonstandard and adds some space to all transactions, since whether they voted or not, they&apos;d have to store something there"/>
</node>
<node CREATED="1451124027269" ID="ID_1334424244" MODIFIED="1451124044625" TEXT="With a vote that has multiple in&apos;s, we can vote for multiple proposals at once">
<node CREATED="1451124046445" ID="ID_1060138610" MODIFIED="1451124066560" TEXT="This is somewhat of a strange thing to do, but it is possible, and I don&apos;t see much trouble supporting it."/>
</node>
<node CREATED="1451128608814" ID="ID_522116" MODIFIED="1451128634354" TEXT="What happens when we use a UTXO from a vote? Do all of the vin&apos;s disappear? Just some?">
<node CREATED="1451129354214" ID="ID_1356740924" MODIFIED="1451129365130" TEXT="I think I will have to go back to putting it on vout"/>
<node CREATED="1451129385854" ID="ID_1656752948" MODIFIED="1451129493370" TEXT="But then, it&apos;s weird again, because the vout&apos;s have an input"/>
<node CREATED="1451129493774" ID="ID_1198725742" MODIFIED="1451129507282" TEXT="Maybe the best thing is just put it on the transaction itself">
<node CREATED="1451129508414" ID="ID_391807995" MODIFIED="1451129529065" TEXT="But then we still have the problem of what to do when some outputs get spent, but not others"/>
</node>
<node CREATED="1451129539878" ID="ID_1533483569" MODIFIED="1451129553425" TEXT="What if all the vin&apos;s disappear?">
<node CREATED="1451129559973" ID="ID_935780839" MODIFIED="1451129573082" TEXT="Except that a transaction can go out to multiple parties"/>
</node>
<node CREATED="1451129584805" ID="ID_754219476" MODIFIED="1451129605338" TEXT="vout&apos;s get spent. So vout&apos;s should have the vote, if we want to disappear it when vouts get spent"/>
<node CREATED="1451129817733" ID="ID_924825818" MODIFIED="1451129844426" TEXT="What if we place the vote with the txn, hardcoded there. Then when an output gets spent, the txn loses that much of it&apos;s vote"/>
<node CREATED="1451130032950" ID="ID_1963044689" MODIFIED="1451130041097" TEXT="The most flexible thing would be to use the vout">
<node CREATED="1451130053430" ID="ID_1708425279" MODIFIED="1451130067025" TEXT="But then, if there is a vote already there, we have to strip it"/>
<node CREATED="1451130346638" ID="ID_1364606724" MODIFIED="1451130352530" TEXT="Anyway, seems the best thing"/>
</node>
</node>
<node CREATED="1451133720053" ID="ID_1123025666" MODIFIED="1451133746121" TEXT="How do we subtract out votes from written over transactions when we can&apos;t find the CBlock for it?">
<node CREATED="1451133751350" ID="ID_1287142558" MODIFIED="1451133780489" TEXT="CTransactions don&apos;t reference their block number, since they might be in multiple forks, there might be multiple block numbers anyway"/>
<node CREATED="1451133780981" ID="ID_1248553406" MODIFIED="1451133814977" TEXT="When we write over a previous UTXO, we don&apos;t know the block it was in, therefore, we don&apos;t know whether its vote should have counted against the proposal, because we don&apos;t know the blocktime"/>
<node CREATED="1451134200726" ID="ID_171407566" MODIFIED="1451134720570" TEXT="You can, see GetTransaction(x,y,z) in main line 1178, with the TxIndex"/>
</node>
<node COLOR="#ff0000" CREATED="1451696461741" ID="ID_1125862824" MODIFIED="1451729541578" TEXT="vote screen">
<node CREATED="1449048738321" ID="ID_638920842" MODIFIED="1449058084497" TEXT="contains">
<node CREATED="1449058062447" ID="ID_1383501251" MODIFIED="1449058065394" TEXT="Vote Box">
<node CREATED="1449048743537" ID="ID_345971481" MODIFIED="1451696310057" TEXT="Vote Proposal ID &lt;entrybox&gt;">
<node CREATED="1451696344557" ID="ID_1054066294" MODIFIED="1451696358721" TEXT="helptext contains">
<node CREATED="1451696359837" ID="ID_515406971" MODIFIED="1451696565665" TEXT="Enter Proposal ID"/>
</node>
</node>
<node CREATED="1449058068869" ID="ID_372673890" MODIFIED="1449058074930" TEXT="Search Button"/>
</node>
<node CREATED="1449058084455" ID="ID_665761205" MODIFIED="1449058096802" TEXT="Before successful search, grayed out">
<node CREATED="1449048757210" ID="ID_373987364" MODIFIED="1449048782750" TEXT="Proposal Info">
<node CREATED="1449048765305" ID="ID_1607877008" MODIFIED="1449048766629" TEXT="contains">
<node CREATED="1449048768121" ID="ID_1320940367" MODIFIED="1449048784261" TEXT="Title"/>
<node CREATED="1449048784930" ID="ID_1013176359" MODIFIED="1449048786334" TEXT="Deadline"/>
<node CREATED="1449048844194" ID="ID_1826127552" MODIFIED="1449048847925" TEXT="Upgrade box">
<node CREATED="1449049689915" ID="ID_10801342" MODIFIED="1449049691725" TEXT="Git commit"/>
<node CREATED="1449049692339" ID="ID_1509969878" MODIFIED="1449049697958" TEXT="Upgrade Version"/>
<node CREATED="1449049698649" ID="ID_676183445" MODIFIED="1449049701166" TEXT="Upgrade deadline"/>
</node>
<node CREATED="1449049718849" ID="ID_896022472" MODIFIED="1449049737598" TEXT="Spend pool coins box">
<node CREATED="1449049739010" ID="ID_859448654" MODIFIED="1449049743542" TEXT="contains">
<node CREATED="1449049748034" ID="ID_668784235" MODIFIED="1449049756070" TEXT="Total pool funds"/>
<node CREATED="1449049756499" ID="ID_1641350566" MODIFIED="1449049799813" TEXT="Amount, recipient (repeating...)"/>
</node>
</node>
</node>
</node>
<node CREATED="1449048835081" ID="ID_1370444831" MODIFIED="1449048837469" TEXT="Vote Info">
<node CREATED="1449048839450" ID="ID_1857672638" MODIFIED="1449048840942" TEXT="contains">
<node CREATED="1449048786921" ID="ID_1980094502" MODIFIED="1449048791374" TEXT="Current Votes"/>
<node CREATED="1449048792074" ID="ID_251309356" MODIFIED="1449048812989" TEXT="% of Total"/>
<node CREATED="1449048800969" ID="ID_968325083" MODIFIED="1449048816709" TEXT="% needed to pass"/>
</node>
</node>
<node CREATED="1449049871170" ID="ID_741872292" MODIFIED="1449049874677" TEXT="Vote button"/>
</node>
<node CREATED="1451696517172" ID="ID_500830347" MODIFIED="1451696522104" TEXT="Vote &quot;0&quot; button">
<node CREATED="1451696523500" ID="ID_408071389" MODIFIED="1451696538385" TEXT="Tool tip states">
<node CREATED="1451696540276" ID="ID_1201520789" MODIFIED="1451696554336" TEXT="Click this to Vote &apos;No&apos; on all proposals"/>
</node>
</node>
</node>
</node>
<node COLOR="#ff0000" CREATED="1451644690388" ID="ID_1438381624" MODIFIED="1451729535434" TEXT="transactions screen">
<node CREATED="1451644696806" ID="ID_781410397" MODIFIED="1451644705128" TEXT="proposals">
<node CREATED="1451644706565" ID="ID_1172143613" MODIFIED="1451644711792" TEXT="from me">
<node CREATED="1451644713269" ID="ID_1316312410" MODIFIED="1451644772656" TEXT="fields">
<node CREATED="1451644777269" ID="ID_671637603" MODIFIED="1451644779744" TEXT="Address">
<node CREATED="1451644960611" ID="ID_170627888" MODIFIED="1451644965977" TEXT="Proposal ID"/>
</node>
<node CREATED="1451644780308" ID="ID_248553368" MODIFIED="1451644784441" TEXT="Amount">
<node CREATED="1451644975237" ID="ID_951538296" MODIFIED="1451644985464" TEXT="- Proposal_Fee"/>
</node>
</node>
</node>
<node CREATED="1451644995859" ID="ID_670603448" MODIFIED="1451644997977" TEXT="to me">
<node CREATED="1451644713269" ID="ID_1794167341" MODIFIED="1451644772656" TEXT="fields">
<node CREATED="1451644777269" ID="ID_1810705091" MODIFIED="1451644779744" TEXT="Address">
<node CREATED="1451644960611" ID="ID_1127723029" MODIFIED="1451644965977" TEXT="Proposal ID"/>
</node>
<node CREATED="1451644780308" ID="ID_1521468457" MODIFIED="1451644784441" TEXT="Amount">
<node CREATED="1451644975237" ID="ID_1358010397" MODIFIED="1451645042569" TEXT="if proposal not passed then 0"/>
<node CREATED="1451645044085" ID="ID_1163474922" MODIFIED="1451645058297" TEXT="if proposal passed and matured, then amount received"/>
</node>
</node>
</node>
<node CREATED="1451645061124" ID="ID_1830816804" MODIFIED="1451645063919" TEXT="from and to me">
<node CREATED="1451644713269" ID="ID_581713990" MODIFIED="1451644772656" TEXT="fields">
<node CREATED="1451644777269" ID="ID_165879548" MODIFIED="1451644779744" TEXT="Address">
<node CREATED="1451644960611" ID="ID_1627471911" MODIFIED="1451644965977" TEXT="Proposal ID"/>
</node>
<node CREATED="1451644780308" ID="ID_1668875768" MODIFIED="1451644784441" TEXT="Amount">
<node CREATED="1451644975237" ID="ID_1964234597" MODIFIED="1451645042569" TEXT="if proposal not passed then 0"/>
<node CREATED="1451645044085" ID="ID_1992679408" MODIFIED="1451645058297" TEXT="if proposal passed and matured, then amount received"/>
</node>
</node>
</node>
<node CREATED="1451644775044" ID="ID_760293324" MODIFIED="1451644776976" TEXT="Type">
<node CREATED="1451644788341" ID="ID_1063501692" MODIFIED="1451645127449" TEXT="if passed">
<node CREATED="1451645128869" ID="ID_1041658012" MODIFIED="1451645221441" TEXT="Passed Proposal"/>
</node>
<node CREATED="1451645309957" ID="ID_383791812" MODIFIED="1451645329085" TEXT="if failed">
<node CREATED="1451645313989" ID="ID_892640637" MODIFIED="1451645317993" TEXT="Failed Proposal"/>
</node>
<node CREATED="1451645142549" ID="ID_1673431418" MODIFIED="1451645145489" TEXT="else">
<node CREATED="1451645146957" ID="ID_970594215" MODIFIED="1451645226688" TEXT="Proposal"/>
</node>
</node>
</node>
<node CREATED="1451720046060" ID="ID_1438995293" MODIFIED="1451720047783" TEXT="votes">
<node CREATED="1451720050100" ID="ID_405816850" MODIFIED="1451720053743" TEXT="fields">
<node CREATED="1451720054980" ID="ID_1405883988" MODIFIED="1451720056719" TEXT="Address">
<node CREATED="1451720058060" ID="ID_1584992281" MODIFIED="1451720061520" TEXT="Proposal ID"/>
</node>
<node CREATED="1451720066420" ID="ID_1911723103" MODIFIED="1451720068903" TEXT="Amount">
<node CREATED="1451720070571" ID="ID_805825132" MODIFIED="1451720071279" TEXT="Fee"/>
</node>
</node>
<node CREATED="1451720116963" ID="ID_1111519418" MODIFIED="1451720119423" TEXT="Type">
<node CREATED="1451720121979" ID="ID_361905858" MODIFIED="1451720140815" TEXT="if before deadline">
<node CREATED="1451720142259" ID="ID_297238473" MODIFIED="1451720148552" TEXT="if spent/revoted">
<node CREATED="1451720193988" ID="ID_1914790764" MODIFIED="1451720229751" TEXT="Rescinded Vote"/>
</node>
<node CREATED="1451720174852" ID="ID_1288621989" MODIFIED="1451720178343" TEXT="if fresh">
<node CREATED="1451720187763" ID="ID_463966385" MODIFIED="1451720191920" TEXT="Current Vote"/>
</node>
</node>
<node CREATED="1451720179427" ID="ID_132821479" MODIFIED="1451720182167" TEXT="if after deadline">
<node CREATED="1451720233052" ID="ID_17946566" MODIFIED="1451720248096" TEXT="if spent/revoted before deadline">
<node CREATED="1451720237484" ID="ID_545281810" MODIFIED="1451720239527" TEXT="Rescinded Vote"/>
</node>
<node CREATED="1451720248757" ID="ID_1438109850" MODIFIED="1451720254544" TEXT="else">
<node CREATED="1451720255956" ID="ID_1350297335" MODIFIED="1451720273256" TEXT="Previous Vote"/>
</node>
</node>
</node>
</node>
<node CREATED="1451720320364" ID="ID_257357875" MODIFIED="1451720328432" TEXT="Can we use mapWallet to look for linked transactions?">
<node CREATED="1451720372852" ID="ID_462064628" MODIFIED="1451720391327" TEXT="It&apos;s not used anywhere in decomposeTransaction in the original code"/>
<node CREATED="1451720391595" ID="ID_529724398" MODIFIED="1451720399848" TEXT="Where it is used, it locks the wallet beforehand"/>
</node>
</node>
<node COLOR="#ff0000" CREATED="1451645678445" ID="ID_13587018" MODIFIED="1451729534547" TEXT="proposals screen">
<node CREATED="1451645751013" ID="ID_1645605013" MODIFIED="1451645757392" TEXT="label">
<node CREATED="1451645759261" ID="ID_1545947835" MODIFIED="1451645763209" TEXT="View Proposals"/>
</node>
<node CREATED="1451645791932" ID="ID_1641872138" MODIFIED="1451645793680" TEXT="table fields">
<node CREATED="1451645794875" ID="ID_295188700" MODIFIED="1451646047455" TEXT="Deadline"/>
<node CREATED="1451645798340" ID="ID_951255401" MODIFIED="1451645806752" TEXT="Status">
<node CREATED="1451646022677" ID="ID_779523966" MODIFIED="1451646027184" TEXT="one of">
<node CREATED="1451646028421" ID="ID_520647980" MODIFIED="1451646030593" TEXT="Passed"/>
<node CREATED="1451646031300" ID="ID_1535885640" MODIFIED="1451646032913" TEXT="Failed"/>
<node CREATED="1451646033333" ID="ID_1725894336" MODIFIED="1451646036449" TEXT="Proposed"/>
</node>
</node>
<node CREATED="1451646053981" ID="ID_555144751" MODIFIED="1451646058335" TEXT="Votes"/>
<node CREATED="1451646061685" ID="ID_747910807" MODIFIED="1451646075584" TEXT="%"/>
<node CREATED="1451645974980" ID="ID_1029421803" MODIFIED="1451695902385" TEXT="Proposal ID"/>
<node CREATED="1451645984155" ID="ID_1350349165" MODIFIED="1451695916168" TEXT="Title"/>
<node CREATED="1451645855852" ID="ID_77751130" MODIFIED="1451695936576" TEXT="Upgrade Client?">
<node CREATED="1451645878356" ID="ID_1648362456" MODIFIED="1451695942192" TEXT="Yes/No"/>
</node>
<node CREATED="1451645842220" ID="ID_414954652" MODIFIED="1451695855875" TEXT="Spend Amount">
<node CREATED="1451645927557" ID="ID_1915952309" MODIFIED="1451645967177" TEXT="Total amount to spend"/>
</node>
</node>
<node CREATED="1451646109923" ID="ID_372219866" MODIFIED="1451646112888" TEXT="search">
<node CREATED="1451646128580" ID="ID_599397671" MODIFIED="1451646133280" TEXT="Deadline">
<node CREATED="1451646188277" ID="ID_1740891652" MODIFIED="1451646196025" TEXT="Date search"/>
</node>
<node CREATED="1451646134029" ID="ID_1273877972" MODIFIED="1451646135584" TEXT="Status">
<node CREATED="1451646201827" ID="ID_1364348735" MODIFIED="1451646205032" TEXT="choose one item"/>
</node>
<node CREATED="1451646136085" ID="ID_546950723" MODIFIED="1451646138287" TEXT="Votes">
<node CREATED="1451646971013" ID="ID_264704051" MODIFIED="1451646974064" TEXT="min/max field"/>
</node>
<node CREATED="1451646138675" ID="ID_345886237" MODIFIED="1451646146952" TEXT="%">
<node CREATED="1451646832676" ID="ID_740981457" MODIFIED="1451646854520" TEXT="defaults to">
<node CREATED="1451646836836" ID="ID_380680306" MODIFIED="1451646858416" TEXT="&quot;+10&quot;"/>
</node>
<node CREATED="1451646971013" ID="ID_49631170" MODIFIED="1451646974064" TEXT="min/max field"/>
</node>
<node CREATED="1451645974980" ID="ID_1328745007" MODIFIED="1451695965893" TEXT="Proposal ID">
<node CREATED="1451646311077" ID="ID_942863287" MODIFIED="1451646314728" TEXT="substring match"/>
<node CREATED="1451646432925" ID="ID_937760490" MODIFIED="1451646444497" TEXT="help text contains">
<node CREATED="1451646445868" ID="ID_637228052" MODIFIED="1451695989441" TEXT="Enter Proposal ID to search"/>
</node>
</node>
<node CREATED="1451645984155" ID="ID_379535462" MODIFIED="1451695965894" TEXT="Title">
<node CREATED="1451646311077" ID="ID_1534382365" MODIFIED="1451646314728" TEXT="substring match"/>
<node CREATED="1451646432925" ID="ID_322430812" MODIFIED="1451646444497" TEXT="help text contains">
<node CREATED="1451646445868" ID="ID_1345070458" MODIFIED="1451695997392" TEXT="Enter Title to search"/>
</node>
</node>
<node CREATED="1451645855852" ID="ID_202218016" MODIFIED="1451695965895" TEXT="Upgrade Client?">
<node CREATED="1451645878356" ID="ID_1110440582" MODIFIED="1451695942192" TEXT="Yes/No"/>
</node>
<node CREATED="1451646161836" ID="ID_48585112" MODIFIED="1451646166897" TEXT="Spend Amount">
<node CREATED="1451646971013" ID="ID_1937756492" MODIFIED="1451646974064" TEXT="min/max field"/>
</node>
</node>
<node CREATED="1451646904404" ID="ID_938207777" MODIFIED="1451646909008" TEXT="min/max field">
<node CREATED="1451646226653" ID="ID_1315517453" MODIFIED="1451646251001" TEXT="+XXX = min"/>
<node CREATED="1451646251316" ID="ID_901613105" MODIFIED="1451646254264" TEXT="- XXX = max"/>
<node CREATED="1451646917316" ID="ID_1608093511" MODIFIED="1451646925624" TEXT="+XXX,-XXX = range"/>
<node CREATED="1451646432925" ID="ID_1146238957" MODIFIED="1451646444497" TEXT="help text contains">
<node CREATED="1451646445868" ID="ID_424859863" MODIFIED="1451646943488" TEXT="&quot;+XXX&quot; = min, &quot;-XXX&quot; = max, &quot;+XXX,-XXX&quot; = range"/>
</node>
</node>
<node CREATED="1451645770357" ID="ID_626001250" MODIFIED="1451645778112" TEXT="offshoot of transactions screen">
<node CREATED="1451647017123" ID="ID_1829973724" MODIFIED="1451647020103" TEXT="(same basic style)"/>
</node>
<node CREATED="1451646211372" ID="ID_692126161" MODIFIED="1451646220136" TEXT="ordered in reverse chronological order"/>
<node CREATED="1451696016324" ID="ID_1133520777" MODIFIED="1451696031152" TEXT="voted for proposal is highlighted somehow">
<node CREATED="1451696033685" ID="ID_235738946" MODIFIED="1451696053041" TEXT="Tool tip says &quot;You are currently voting for this proposal&quot;"/>
</node>
<node CREATED="1451696054756" ID="ID_153654471" MODIFIED="1451696064776" TEXT="Right click options:">
<node CREATED="1451696066053" ID="ID_1478434361" MODIFIED="1451696072425" TEXT="Copy Proposal ID"/>
<node CREATED="1451696072820" ID="ID_871613231" MODIFIED="1451696080745" TEXT="Copy Title"/>
<node CREATED="1451696081221" ID="ID_834263812" MODIFIED="1451696126352" TEXT="Copy URL in title"/>
<node CREATED="1451696126733" ID="ID_21081212" MODIFIED="1451696140512" TEXT="Vote for Proposal"/>
<node CREATED="1451696166581" ID="ID_975541399" MODIFIED="1451696184800" TEXT="Vote for 0 (unvote for all proposals)"/>
</node>
</node>
<node CREATED="1451648660332" FOLDED="true" ID="ID_1385250024" MODIFIED="1451729528243" TEXT="Should proposal ids be base58 encoded?">
<node CREATED="1451648671412" ID="ID_1861129228" MODIFIED="1451648699120" TEXT="The one downside I see is the proposal id is the same as the transaction id">
<node CREATED="1451648704357" ID="ID_957591805" MODIFIED="1451648726297" TEXT="Because so, it would be confusing, in that there are now two ways to identify a proposal"/>
<node CREATED="1451648796053" ID="ID_364453272" MODIFIED="1451648830760" TEXT="I can&apos;t see how this would affecting anything except that external tools would have to be able to convert proposal ids">
<node CREATED="1451648862332" ID="ID_612623916" MODIFIED="1451648891505" TEXT="External tools would have to be modified anyway to show the fields of the proposal, etc., so maybe this wouldn&apos;t be a big deal"/>
</node>
</node>
<node CREATED="1451648938421" ID="ID_390248204" MODIFIED="1451648948017" TEXT="The upsides are">
<node CREATED="1451648949893" ID="ID_342253554" MODIFIED="1451648966767" TEXT="Same as bitcoin addresses, easier to read, write, transcribe"/>
<node CREATED="1451648968404" ID="ID_1463106143" MODIFIED="1451648969720" TEXT="Shorter"/>
<node CREATED="1451648970653" ID="ID_1187624256" MODIFIED="1451648978104" TEXT="More easily identifiable"/>
</node>
<node CREATED="1451648895659" ID="ID_85744257" MODIFIED="1451648912383" TEXT="If so, should we use a CProposalAddr class?">
<node CREATED="1451648914716" ID="ID_314439573" MODIFIED="1451648933041" TEXT="We would be able to set the version, then, and get to pick a starting letter"/>
</node>
</node>
<node CREATED="1451720860964" ID="ID_1619991431" MODIFIED="1451720867543" TEXT="Upgrade procedure">
<node CREATED="1451720869437" ID="ID_1464001662" MODIFIED="1451720872223" TEXT="Purpose">
<node CREATED="1451720873283" ID="ID_1449313686" MODIFIED="1451720886527" TEXT="We want to make it easy to upgrade, and create a proposal to do so"/>
</node>
<node COLOR="#ff0000" CREATED="1451720891483" ID="ID_853824136" MODIFIED="1451729524114" TEXT="create_upgrade_proposal_from_source.pl">
<node CREATED="1451720910036" ID="ID_1425052404" MODIFIED="1451720938751" TEXT="Creates an rpc submitproposal invokation appropriately for tree">
<node CREATED="1451721013868" ID="ID_457342760" MODIFIED="1451721051520" TEXT="Adds the checkpoint hashblock to the submit proposal command, so that it can be checked by the client"/>
</node>
<node CREATED="1451720944252" ID="ID_988355515" MODIFIED="1451721069120" TEXT="Prints out a blurb about bumping version and creating a hashblock"/>
<node CREATED="1451720965876" ID="ID_987918128" MODIFIED="1451720971343" TEXT="Checks that git is clean"/>
</node>
<node CREATED="1451721661100" ID="ID_377239506" MODIFIED="1451721677456" TEXT="Do we want to get rid of upgrade proposal option in the gui?">
<node CREATED="1451721678940" ID="ID_1345327636" MODIFIED="1451721715056" TEXT="It seems kind of useless, considering that a developer would be more comfortable with the command line then filling in some forms in a gui anyway (especially with create_upgrade_proposal_from_source.pl)"/>
</node>
</node>
<node CREATED="1451722038196" ID="ID_1316974643" MODIFIED="1451722046911" TEXT="Veto period for proposals">
<node CREATED="1451722048459" ID="ID_893926003" MODIFIED="1451722090480" TEXT="In order to prevent someone from voting immediately before the deadline ends, and winning a proposal that seemed like it would fail, there is a 24 hour period for users to veto the proposal">
<node CREATED="1451722093900" ID="ID_1777266605" MODIFIED="1451722127544" TEXT="During this time, the proposal can&apos;t be voted for, but votes can still be changed to against the proposal."/>
</node>
<node CREATED="1451722160636" ID="ID_830916660" MODIFIED="1451722184455" TEXT="Do we really need this? It seems complex, and somewhat far fetched that people that are interested in politics wouldn&apos;t keep their client registered"/>
<node CREATED="1451722191132" ID="ID_839550548" MODIFIED="1451722204887" TEXT="I&apos;d say no. This is an experiment. If it fails, we can start it again">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node COLOR="#ff0000" CREATED="1451729487626" ID="ID_1046499821" MODIFIED="1451729517347" TEXT="We need emergency &quot;run anyway&quot; flag for failed upgrades"/>
<node COLOR="#ff0000" CREATED="1451811583702" ID="ID_1579834562" MODIFIED="1451811594510" TEXT="gui needs message for upgrading"/>
<node CREATED="1451817186662" ID="ID_1807418515" MODIFIED="1451817191473" TEXT="Upgrades">
<node CREATED="1451817236422" ID="ID_707176819" MODIFIED="1451820486367" TEXT="We simply store the upgrade propHash in the CBlockIndex"/>
<node CREATED="1451817192614" ID="ID_627402132" MODIFIED="1451817214337" TEXT="A new thread will be created specifically for handling upgrade messages">
<node CREATED="1451817215486" ID="ID_1007660445" MODIFIED="1451817233706" TEXT="(There doesn&apos;t seem to be any thread for general utility stuff)"/>
</node>
<node CREATED="1451817685757" ID="ID_1655355277" MODIFIED="1451820634786" TEXT="Every second or so, the thread will check the pindexBest to check the propHash. It will load the propTx (if it hasn&apos;t already done so, checked with local variables), and then print out the nag message/shutdown if applicable from that"/>
<node CREATED="1451817728422" ID="ID_1397479728" MODIFIED="1451817749466" TEXT="When we boot, we fill in the upgrade row and shutdown immediately if necessary">
<node CREATED="1451817758046" ID="ID_616988035" MODIFIED="1451817763761" TEXT="Notifying the user for gui"/>
</node>
<node CREATED="1451817764870" ID="ID_1824181151" MODIFIED="1451817770186" TEXT="Gui">
<node CREATED="1451817771518" ID="ID_1300902410" MODIFIED="1451817778619" TEXT="Status bar will tell the user to upgrade"/>
<node CREATED="1451817781869" ID="ID_435573075" MODIFIED="1451817812554" TEXT="When upgrade status first occurs, and on startup a dialog will pop up"/>
</node>
<node CREATED="1451821793422" ID="ID_1698382007" MODIFIED="1451821850554" TEXT="If we allow the next proposal to overwrite the previous one, then what happens if we are catching up in the block chain, and we pass a proposal that would have shut down the client immediately?"/>
<node CREATED="1451821851510" ID="ID_703448814" MODIFIED="1451867971746" TEXT="What if instead of a shutdown, we just refuse to process any more blocks?">
<node CREATED="1451821924031" ID="ID_870172494" MODIFIED="1451821931929" TEXT="It wouldn&apos;t be so jarring to the user that way"/>
<node CREATED="1451821953542" ID="ID_764491319" MODIFIED="1451821997106" TEXT="And it would make more sense to them, &quot;Oh, I can&apos;t process the next block, because I didn&apos;t upgrade...&quot; (even though technically it doesn&apos;t make sense, since its based on a time period, rather than a block count)"/>
<node CREATED="1451822000831" ID="ID_790855793" MODIFIED="1451822011202" TEXT="Why not use a block count instead of a time, anyway?">
<node CREATED="1451822030878" ID="ID_130115072" MODIFIED="1451822051570" TEXT="That may make more sense, because then all the clients know when exactly the upgrade to the chain will occur"/>
<node CREATED="1451822110263" ID="ID_495849557" MODIFIED="1451822137475" TEXT="And then the new version could programmatically decide, that hey, its an old version that shouldn&apos;t be running, therefore I won&apos;t even connect to it."/>
<node CREATED="1451822221127" ID="ID_422510955" MODIFIED="1451822267454" TEXT="Actually, though, a time should work the same way, block count or time, it really doesn&apos;t make a difference. Can be programmatically checked either way">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1451822291919" ID="ID_1983072458" MODIFIED="1451822300082" TEXT="Also a time is less confusing to the end user"/>
</node>
<node CREATED="1451822314038" ID="ID_234775194" MODIFIED="1451822322922" TEXT="What about network issues?">
<node CREATED="1451822324167" ID="ID_655758297" MODIFIED="1451822331730" TEXT="A ton of clients are rejecting blocks now"/>
<node CREATED="1451822340343" ID="ID_1848802013" MODIFIED="1451822345075" TEXT="They won&apos;t fork, though"/>
<node CREATED="1451822356590" ID="ID_754509866" MODIFIED="1451822363187" TEXT="It should be ok, I think the testnet would catch it"/>
</node>
<node CREATED="1451822364775" ID="ID_1504247100" MODIFIED="1451822372378" TEXT="nomiccoind">
<node CREATED="1451822383118" ID="ID_1525334152" MODIFIED="1451822405866" TEXT="Every incoming block would nag the user about the upgrade in the log file"/>
<node CREATED="1451822408039" ID="ID_1917812235" MODIFIED="1451822435474" TEXT="After the deadline, an error message would appear for every block"/>
<node CREATED="1451822443111" ID="ID_556570259" MODIFIED="1451822484043" TEXT="would go into &quot;safe mode&quot;, where most commands nag rather than respond (unless -safe is specified)"/>
</node>
<node CREATED="1451822487647" ID="ID_1406862696" MODIFIED="1451822488955" TEXT="gui">
<node CREATED="1451822490286" ID="ID_1211899358" MODIFIED="1451822495394" TEXT="status bar would indicate status"/>
</node>
<node CREATED="1451867971735" ID="ID_935810242" MODIFIED="1451867974281" TEXT="plan">
<node CREATED="1451867880109" ID="ID_1584700714" MODIFIED="1451868064233" TEXT="Each blockindex has upgradePropHash which is the last upgradePropHash that would make it necessary for the client to upgrade"/>
<node CREATED="1451867976294" ID="ID_930154546" MODIFIED="1451867995842" TEXT="When we reach a block that can&apos;t be processed, we simply reject it."/>
</node>
<node CREATED="1451878154748" ID="ID_1571395970" MODIFIED="1451878163767" TEXT="The original method was to eval the script for the public">
<node CREATED="1451878164811" ID="ID_1504322178" MODIFIED="1451878183591" TEXT="Should we keep this? Whenever we want to find out what a proposal does, should we eval it?">
<node CREATED="1451878321427" ID="ID_1789792791" MODIFIED="1451878397359" TEXT="The thing is, if we keep an app state, like we orginally had it, we could use that for a multitude of things, including changing the interest rate, changing the block reward, the block size, etc."/>
<node CREATED="1451878506587" ID="ID_1708522010" MODIFIED="1451878519927" TEXT="This would be a great feature, I think. I could see a lot of people getting behind this"/>
<node CREATED="1451883439957" ID="ID_37280298" MODIFIED="1451883471930" TEXT="However, the problem is that without a release, we suffer all kinds of vectors for attacks. If the money supply can be expanded, then it&apos;d be easy to fork the block chain"/>
</node>
<node CREATED="1451878184051" ID="ID_950688047" MODIFIED="1451878194255" TEXT="What about making it standard?"/>
</node>
</node>
<node CREATED="1451883483118" ID="ID_1092377758" MODIFIED="1451883499562" TEXT="Eval script vs just reading it">
<node CREATED="1451883502109" ID="ID_66614571" MODIFIED="1451883558130" TEXT="We would be adding a lot of complexity by evaling it, because if had multiple things and a proposal didn&apos;t change all of them, then we&apos;d have to have the others show through"/>
</node>
</node>
<node CREATED="1451886162581" ID="ID_766239364" MODIFIED="1451886164746" TEXT="attacks">
<node CREATED="1451885134998" ID="ID_1559876424" MODIFIED="1451885200642" TEXT="Trust model">
<node CREATED="1451885201677" ID="ID_281842659" MODIFIED="1451885543518" TEXT="What if we did a straight up, 1 trust per block height model?">
<node CREATED="1451885245766" ID="ID_862011788" MODIFIED="1451885267314" TEXT="It would make grinding attacks easier for &quot;from the past&quot; attacks"/>
</node>
</node>
<node CREATED="1451883561238" ID="ID_1082751791" MODIFIED="1451883682490" TEXT="Spend pool attack vector">
<node CREATED="1451883598062" ID="ID_378862911" MODIFIED="1451883645688">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The spend pool is voted into an account the attackers control (in a forked chain)
    </p>
    <p>
      
    </p>
    <p>
      Then the attackers simply out mint the rest of the network
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1451883683398" ID="ID_1025804259" MODIFIED="1451883778225" TEXT="What if we add the spend pool to the &quot;trust&quot; the block receives when minting takes place?">
<node CREATED="1451883786638" ID="ID_791053614" MODIFIED="1451883812281" TEXT="Then the attackers could just increase the spend pool, since those coins would be used over and over again for every mint"/>
</node>
<node CREATED="1451883965573" ID="ID_1044010689" MODIFIED="1451883975514" TEXT="What if we prevented the spendpool from getting too big?">
<node CREATED="1451883988358" ID="ID_12103271" MODIFIED="1451884012129" TEXT="If we limit it to 5% of the coins, it won&apos;t help the attackers that much"/>
<node CREATED="1451884036133" ID="ID_149964417" MODIFIED="1451884053729" TEXT="This won&apos;t work because the attackers could take the pool, wait for it to grow again, and then take it again, etc."/>
</node>
<node CREATED="1451884317294" ID="ID_1191879560" MODIFIED="1451884327370" TEXT="What if we based trust on something else?">
<node CREATED="1451884328678" ID="ID_1030724618" MODIFIED="1451884360978" TEXT="Age of coins">
<node CREATED="1451884500734" ID="ID_623000239" MODIFIED="1451884516394" TEXT="We could keep a running total of coinage and use it for trust"/>
<node CREATED="1451884519717" ID="ID_1700225304" MODIFIED="1451884533242" TEXT="Newly generated coins, such as those from the pool would have zero trust"/>
<node CREATED="1451884533734" ID="ID_556628728" MODIFIED="1451884551417" TEXT="The hardcoded checkpoints would take care of the rest"/>
<node CREATED="1451884610526" ID="ID_1309446891" MODIFIED="1451884616218" TEXT="cons">
<node CREATED="1451884617270" ID="ID_307044057" MODIFIED="1451884638290" TEXT="The economy would be more complex, some coins worth more than others, because they are less likely to be forked"/>
<node CREATED="1451884714078" ID="ID_336977979" MODIFIED="1451885436617" TEXT="Large minters could fork two, three, or four chains">
<node CREATED="1451884730589" ID="ID_40477156" MODIFIED="1451884747962" TEXT="If they know their trust is higher than the current end point, they can write it over"/>
<node CREATED="1451884786926" ID="ID_792608612" MODIFIED="1451884792202" TEXT="But this can happen anyway"/>
<node CREATED="1451885284286" ID="ID_1848369152" MODIFIED="1451885297994" TEXT="And they would hurt the coin doing this, which would hurt themselves">
<node CREATED="1451885329758" ID="ID_701116657" MODIFIED="1451885346202" TEXT="Although if they had some really old coins, this may still be beneficial to them"/>
</node>
</node>
<node CREATED="1451886033982" ID="ID_687850798" MODIFIED="1451886056473" TEXT="And anyway, if the number of &quot;pool&quot; tainted coins approaches 100%, eventually an attacker would win">
<node CREATED="1451886058374" ID="ID_831721106" MODIFIED="1451886105058" TEXT="This would be offset by checkpoints, of course, but we have no way of knowing how frequently they would come"/>
<node CREATED="1451886120574" ID="ID_1323581713" MODIFIED="1451886129474" TEXT="So really it&apos;s pool tainted since last checkpoint"/>
</node>
</node>
</node>
</node>
<node CREATED="1451884857734" ID="ID_612219674" MODIFIED="1451884871402" TEXT="Could we limit the pool growth enough that this wouldn&apos;t be a problem?">
<node CREATED="1451884873182" ID="ID_698886726" MODIFIED="1451884896066" TEXT="The coins grow at a certain rate, X per block"/>
<node CREATED="1451884897782" ID="ID_1333222621" MODIFIED="1451884958562" TEXT="If we limit the growth of the pool to a % of X that is lower than the expected minting rate, then controlling the pool, by itself, couldn&apos;t take over the block chain"/>
<node CREATED="1451884987438" ID="ID_1350431488" MODIFIED="1451885006474" TEXT="txn fees could still be given to the pool, since these aren&apos;t in control of the attackers">
<node CREATED="1451885043702" ID="ID_1237227775" MODIFIED="1451885131721" TEXT="Although a hard maximum would be necessary still, to prevent the pool from getting too large, and giving the attackers an advantage"/>
</node>
<node CREATED="1451885603486" ID="ID_996136571" MODIFIED="1451885619602" TEXT="It seems like the central pool would grow too slowly, then">
<node CREATED="1451885635405" ID="ID_1008521411" MODIFIED="1451885650418" TEXT="Let&apos;s say the inflation rate is 10%"/>
<node CREATED="1451885652134" ID="ID_645937787" MODIFIED="1451885673802" TEXT="The pool would have to be around 10% of this which is 1% a year"/>
<node CREATED="1451885677630" ID="ID_264350453" MODIFIED="1451885694090" TEXT="So for a $40 million coin">
<node CREATED="1451885696214" ID="ID_82230735" MODIFIED="1451885706850" TEXT="$400K a year support"/>
</node>
</node>
<node CREATED="1451885747406" ID="ID_1134814088" MODIFIED="1451885766506" TEXT="What if the central pool would grow so that at most, 10% of coins would be &quot;pool&quot; coins">
<node CREATED="1451885768726" ID="ID_514962826" MODIFIED="1451885910018" TEXT="It would still reduce to 1%"/>
</node>
<node CREATED="1451885944061" ID="ID_101834683" MODIFIED="1451885975650" TEXT="Yes, if you consider pool tainted coins, they&apos;d have to grow at the same rate as the rest of the network. So if the network grows at 10%, so would the pool tainted coins"/>
</node>
</node>
<node CREATED="1451886177758" ID="ID_1105526273" MODIFIED="1451886272274" TEXT="What about voting and &quot;outside of the network&quot;(ootn) information?">
<node CREATED="1451886197982" ID="ID_1206906590" MODIFIED="1451886227146" TEXT="When someone votes, they are voting for something they believe to be true, so there is ootn info right there"/>
<node CREATED="1451886227790" ID="ID_1516000325" MODIFIED="1451886260882" TEXT="The problem is the verification that someone is voting (and not an attacker), is not ootn"/>
<node CREATED="1451886392982" ID="ID_1851353320" MODIFIED="1451886403937" TEXT="What if a proposal had a checkpoint in it?">
<node CREATED="1451886421365" ID="ID_861443954" MODIFIED="1451886451754" TEXT="When people download a client, they are vouching for the network that the client uses">
<node CREATED="1451886474454" ID="ID_1020803052" MODIFIED="1451886494322" TEXT="This means they found reliable information which indicates the network represented by the client is valid"/>
<node CREATED="1451886506494" ID="ID_151130018" MODIFIED="1451886538698" TEXT="But this only works one way. The network can&apos;t tell how many people believe its valid"/>
<node CREATED="1451886553317" ID="ID_716077803" MODIFIED="1451886559698" TEXT="Unless there is PoW or something"/>
</node>
<node CREATED="1451886589062" ID="ID_73509248" MODIFIED="1451886592906" TEXT="equations">
<node CREATED="1451886593974" ID="ID_1872390855" MODIFIED="1451886614921" TEXT="The trust of PoW = PoW"/>
<node CREATED="1451886615285" ID="ID_1526170475" MODIFIED="1451886666394" TEXT="The trust of PoS = (&quot;client download&quot;cd) x PoS">
<node CREATED="1451886668478" ID="ID_796238246" MODIFIED="1451886684946" TEXT="ie the fact that people downloaded the client is proof of it being valid"/>
</node>
<node CREATED="1451886687159" ID="ID_1895772510" MODIFIED="1451886704802" TEXT="For votes, it&apos;s cd x PoS x votes"/>
</node>
<node CREATED="1451890944375" ID="ID_1712986647" MODIFIED="1451890959300" TEXT="what about the guy loading the blockchain from the beginning?">
<node CREATED="1451890961144" ID="ID_72597683" MODIFIED="1451890993084" TEXT="Right, there is no way checkpoints could help him, besides hardcoded ones, that is"/>
</node>
</node>
</node>
<node CREATED="1451899255689" ID="ID_295450432" MODIFIED="1451899262612" TEXT="attack defense plan">
<node CREATED="1451899263720" ID="ID_1333645878" MODIFIED="1451899264796" TEXT="terms">
<node CREATED="1451899266009" ID="ID_1957717101" MODIFIED="1451899267389" TEXT="hcp">
<node CREATED="1451899268329" ID="ID_753901796" MODIFIED="1451899276564" TEXT="hard, code based checkpoint (for each proposal upgrade)"/>
</node>
<node CREATED="1451899988649" ID="ID_527575649" MODIFIED="1451899990020" TEXT="hcpt">
<node CREATED="1451899992016" ID="ID_673495327" MODIFIED="1451900098598">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      A trust value in coins given to every UTXO
    </p>
    <p>
      
    </p>
    <p>
      For hcp coins, this equals their value * ht%. Others are discussed in plan
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1451900270561" ID="ID_1880514891" MODIFIED="1451900272516" TEXT="hcpt&apos;">
<node CREATED="1451900273825" ID="ID_403684106" MODIFIED="1451900278861" TEXT="Last hcpt trust value"/>
</node>
<node CREATED="1451899640738" ID="ID_1091591607" MODIFIED="1451899729854" TEXT="ht%">
<node CREATED="1451899643561" ID="ID_1640791381" MODIFIED="1451900186237" TEXT="% Trust given to the coins before the hard coded checkpoint. This corresponds to 100% minus the maximum percent of coins that the system can resist being compromised"/>
</node>
<node CREATED="1451900703689" ID="ID_248457975" MODIFIED="1451900715877" TEXT="propcp">
<node CREATED="1451900717082" ID="ID_782982191" MODIFIED="1451900749373" TEXT="Checkpoint 500 blocks back from proposal, embedded within the proposal itself"/>
</node>
</node>
<node CREATED="1451899279169" ID="ID_364660779" MODIFIED="1451899285365" TEXT="assumptions">
<node CREATED="1451899286785" ID="ID_402200576" MODIFIED="1451899332732" TEXT="Only some of old keys before last hcp are compromised">
<node CREATED="1451899308161" ID="ID_1462561808" MODIFIED="1451899311533" TEXT="What percent?"/>
</node>
<node CREATED="1451899335969" ID="ID_898415151" MODIFIED="1451899439173" TEXT="People that currently own funds will resist doing something to compromise the network proportional to how much they own"/>
<node CREATED="1451900948665" ID="ID_1660768818" MODIFIED="1451901006021" TEXT="A significant proportion of people will participate in voting">
<node CREATED="1451901007858" ID="ID_1264600229" MODIFIED="1451901010701" TEXT="What percent?"/>
</node>
</node>
<node CREATED="1451899442338" ID="ID_1193539447" MODIFIED="1451899445836" TEXT="plan">
<node CREATED="1451899447704" ID="ID_1989261967" MODIFIED="1451900805093" TEXT="proposals contain a checkpoint of several blocks back (the proccp)"/>
<node CREATED="1451900144656" ID="ID_405192569" MODIFIED="1451900148716" TEXT="hcpt">
<node CREATED="1451900153538" ID="ID_1431444195" MODIFIED="1451900171181" TEXT="UTXO&apos;s start with an hcpt value of hcp * ht%"/>
<node CREATED="1451899468265" ID="ID_1720803402" MODIFIED="1451900138940" TEXT="Coins lose hcpt after certain types of transactions">
<node CREATED="1451899503697" ID="ID_849137985" MODIFIED="1451901302221" TEXT="For a normal transfer, hcpt = (fees/value) * ht% * hcpt&apos;">
<node CREATED="1451901306753" ID="ID_817219386" MODIFIED="1451901368341" TEXT="This assumes that there is a ht% chance the address from the UTXO will be sold at this point"/>
<node COLOR="#ff0000" CREATED="1451901428201" ID="ID_238421211" MODIFIED="1451901474922" TEXT="Note that addresses complicate the above. What if the UTXO only contains 10%, contained more, but change was sent back to the same address that spent them?"/>
</node>
<node CREATED="1451899526385" ID="ID_1141826290" MODIFIED="1451900293196" TEXT="If coins were taken from the pool, the trust would be based on how many coins voted for the proposal">
<node CREATED="1451899628722" ID="ID_327471592" MODIFIED="1451900452100">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      This is done proportionally, so that if Y% hcpt coins voted for the proposal, then we take (max(Y% - (1 - ht%),0) * (pool funds spent). For example, if we trust 90% of hcp, and (hcpt of txns voted for proposal)/(hcp coins) = 50%, then the total trust would be 50% - 10% = 40% * (pool funds spent).
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1451900298865" ID="ID_1463615067" MODIFIED="1451900381261" TEXT="The idea is that an attacker would attempt to maximize their coins by voting for spending a pool to benefit the attacker. Therefore we assume that 100% of the compromised coins voted for the proposal. So any remainder over the compromised amount is used to determine trust"/>
</node>
<node CREATED="1451900056953" ID="ID_1473683850" MODIFIED="1451900505853" TEXT="If coins were won by staking, the hcpt gets proportionally split to the newly minted coins and the coins staked"/>
</node>
</node>
<node CREATED="1451900526209" ID="ID_1425560345" MODIFIED="1451901217132" TEXT="Whenever a proposal is checked to see if it won or not, max((1- ht%)*(total hcp coins) - (total hcpt value of voting coins), 0) is added to the trust of the block specified by the propcp."/>
<node CREATED="1451900830842" ID="ID_379980450" MODIFIED="1451900873764" TEXT="The block also gets the hcpt value of the UTXO creating the block">
<node CREATED="1451900906394" ID="ID_1916267930" MODIFIED="1451900936733" TEXT="Note that no other UTXO&apos;s the wallet has can be used to verify the block, because that would allow the attacker to use their compromised UTXO&apos;s"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1452154991582" ID="ID_59149091" MODIFIED="1452154993273" POSITION="right" TEXT="plan5">
<node CREATED="1452154994636" ID="ID_1110823618" MODIFIED="1452155169476" TEXT="network">
<node CREATED="1452155239196" ID="ID_925475201" MODIFIED="1452155240656" TEXT="terms">
<node CREATED="1452155241604" ID="ID_1683195681" MODIFIED="1452155242576" TEXT="bh">
<node CREATED="1452155243892" ID="ID_1291414456" MODIFIED="1452155245416" TEXT="black hat"/>
</node>
<node CREATED="1452155246564" ID="ID_1653376953" MODIFIED="1452155247448" TEXT="wh">
<node CREATED="1452155248428" ID="ID_1777166804" MODIFIED="1452155250592" TEXT="white hat"/>
</node>
<node CREATED="1452155374748" ID="ID_970594735" MODIFIED="1452155376440" TEXT="mp">
<node CREATED="1452155377516" ID="ID_827176806" MODIFIED="1452155384784" TEXT="Max percentage of bh we can defend against"/>
</node>
<node CREATED="1452155895332" ID="ID_1085691150" MODIFIED="1452155896296" TEXT="bct">
<node CREATED="1452155897692" ID="ID_437218230" MODIFIED="1452155970385" TEXT="Block chain trust. Indicates the amount of trust as a coin value of a particular XTO. The bct divided by the total coins is the percent trust that the coins are not controlled by a bh"/>
</node>
<node CREATED="1452155971172" ID="ID_1340273512" MODIFIED="1452155972752" TEXT="xto">
<node CREATED="1452155973860" ID="ID_1231407475" MODIFIED="1452155980120" TEXT="transaction output (spent or unspent)"/>
</node>
</node>
<node CREATED="1452155206052" ID="ID_128310711" MODIFIED="1452155209096" TEXT="assumptions">
<node CREATED="1452155210284" ID="ID_1718826272" MODIFIED="1452155236904" TEXT="X percent of entities are bh">
<node CREATED="1452155280484" ID="ID_1073782430" MODIFIED="1452155285608" TEXT="includes">
<node CREATED="1452155286812" ID="ID_1951345644" MODIFIED="1452155294368" TEXT="People selling old used keys"/>
<node CREATED="1452155294788" ID="ID_880630759" MODIFIED="1452155304704" TEXT="People trying to destroy network"/>
<node CREATED="1452155305084" ID="ID_1059923183" MODIFIED="1452155309616" TEXT="People trying to double spend"/>
</node>
</node>
<node CREATED="1452155312276" ID="ID_141521098" MODIFIED="1452155358200" TEXT="A bh will do anything in their power to accomplish their goal with a limited number of funds"/>
<node CREATED="1452158009844" ID="ID_417629301" MODIFIED="1452159279100" TEXT="10 % of the systems coins may be owned by black hats, which is not the same thing as XTO&apos;s have a 10% change of being a black hat">
<node CREATED="1452158054161" ID="ID_1164926730" MODIFIED="1452158080712" TEXT="In the later, it would be possible, then, for all entities to be black hats for awhile, and then change to white hats, etc."/>
</node>
<node CREATED="1452159276748" ID="ID_337250176" MODIFIED="1452159425712" TEXT="Official clients (or unofficial clients that sign) owning 20% of the non-lost active coins will sign a checkpoint within 30 days"/>
</node>
<node CREATED="1452155392164" ID="ID_1082420013" MODIFIED="1452158088124" TEXT="idea1">
<node CREATED="1452155407748" ID="ID_150458269" MODIFIED="1452155451896" TEXT="everyone in the network sign blocks with their private keys"/>
<node CREATED="1452155452524" ID="ID_1864900358" MODIFIED="1452156792736" TEXT="uxto&apos;s are associated to a certain amount of bct">
<node CREATED="1452156807844" ID="ID_239677003" MODIFIED="1452156826208" TEXT="utxo&apos;s sign blocks in their block chain periodically"/>
<node CREATED="1452156827500" ID="ID_819451604" MODIFIED="1452156836560" TEXT="blocks with higher signatures get boosts of trust"/>
<node CREATED="1452156837740" ID="ID_1449439990" MODIFIED="1452156869336" TEXT="utxo&apos;s created before high trust blocks have higher trust"/>
</node>
<node CREATED="1452157729884" ID="ID_1291192061" MODIFIED="1452157738336" TEXT="black hats will attempt to game the system">
<node CREATED="1452157739324" ID="ID_1139281646" MODIFIED="1452157777168" TEXT="Any action a black hat makes must not increase their trust"/>
</node>
<node CREATED="1452158230280" ID="ID_922000151" MODIFIED="1452158243392" TEXT="checkpoints may be 100% trusted">
<node CREATED="1452158244484" ID="ID_1898416668" MODIFIED="1452158287184" TEXT="Since bh are a percentage of the public (not a percent chance), then if enough public members sign the checkpoints, and we assume that there are only so many bh&apos;s, then we can trust the checkpoint 100%"/>
<node CREATED="1452158288668" ID="ID_1992694675" MODIFIED="1452158343584" TEXT="An XTO before a 100% checkpoint cannot be modified, so a black hat can&apos;t use it, and we can 100% believe it"/>
<node CREATED="1452158355308" ID="ID_965125656" MODIFIED="1452158491352" TEXT="If checkpoint 1 is signed by X nodes, and checkpoint 2 is signed by Y nodes where Y nodes are not descendents of X nodes, then checkpoint 1 gets the trust of X+Y nodes"/>
</node>
</node>
<node CREATED="1452158621420" ID="ID_223082982" MODIFIED="1452159452976" TEXT="solved problems">
<node CREATED="1452158624060" ID="ID_680866808" MODIFIED="1452158672255">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Coins will be lost, which will never sign any more checkpoints
    </p>
    <p>
      
    </p>
    <p>
      Eventually we will not be able to pass the 10% threshold, and no checkpoint will be trusted completely
    </p>
  </body>
</html></richcontent>
<node CREATED="1452159012900" ID="ID_1248806289" MODIFIED="1452159047932">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      An extreme example, suppose that 99% of coins are lost
    </p>
    <p>
      
    </p>
    <p>
      If we assume that blackhats own 10% of coins at all times, then checkpoints can no longer be trusted
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1452159104492" ID="ID_1628022608" MODIFIED="1452159147217" TEXT="We need another assumption that a certain percentage of users are actively creating checkpoints over a period of time"/>
<node CREATED="1452159152548" ID="ID_1071743907" MODIFIED="1452159210360" TEXT="But here is the thing, since past checkpoints can benefit from future signers, we don&apos;t need this to be that big. Maybe something like 20% will have signed a checkpoint within 30 days"/>
</node>
</node>
</node>
</node>
<node CREATED="1452320162113" ID="ID_792070198" MODIFIED="1479384408102" POSITION="right" TEXT="plan6">
<node CREATED="1452320170681" ID="ID_997191426" MODIFIED="1452320191788" TEXT="When transactions of any type are created, they also sign a recent block">
<node CREATED="1452320194145" ID="ID_458463717" MODIFIED="1452320205653" TEXT="This is very little cost, since transacations have to be signed anyway"/>
<node CREATED="1452321307201" ID="ID_384284167" MODIFIED="1452321324494" TEXT="How to make blocks get signed enough, without causing too much signing to occur?">
<node CREATED="1452321052817" ID="ID_1037267865" MODIFIED="1452321138741" TEXT="Take some coins owned by an attacker, they can create a fork and sign block after block with their fake transactions. But because they can&apos;t get over 10% of the network to sign any of their blocks, (and blocks have trust set to (cointrust - 10%), the blocks have no trust, so they don&apos;t increase the trust of the attackers coins"/>
<node CREATED="1452321141896" ID="ID_840779696" MODIFIED="1452321174109" TEXT="Once a block reaches the 10% boundary, it gains 100% trust, because at that point, a non attacker would have to have signed it (given the 10% bh limit)"/>
<node CREATED="1452321177505" ID="ID_1610319218" MODIFIED="1452321190075" TEXT="Once that happens, all coins go back to 100% trust"/>
<node CREATED="1452321267400" ID="ID_1828822711" MODIFIED="1452321288517" TEXT="Trust is valuable, and everyone gets trust when a recent block reached 10% "/>
<node CREATED="1452321388393" ID="ID_1010261504" MODIFIED="1452321429932" TEXT="What if we pay everyone who signed a block when it reaches 10% (which would happen even if a descendent block was signed, since the trust is inherited)"/>
<node CREATED="1452321447192" ID="ID_1196212550" MODIFIED="1452321475404" TEXT="It would also be a natural way for people to create blocks, since by adding their signature, they would definitely get paid when the block reaches 10%"/>
<node CREATED="1452321476232" ID="ID_1406045710" MODIFIED="1452321580741" TEXT="Interestingly, people get paid for trust, not for the amount of coins they held, so it changes things a little"/>
<node CREATED="1452321617537" ID="ID_1404138770" MODIFIED="1452321630381" TEXT="Pay to sign a block?">
<node CREATED="1452321631993" ID="ID_496314212" MODIFIED="1452321662708" TEXT="Let&apos;s say we had a fee to sign a block. After all, you are making everyone on the network store it, so that is what the fee is for."/>
<node CREATED="1452321716489" ID="ID_1985578787" MODIFIED="1452321742588" TEXT="This prevents people from overloading the network with signatures, since they cost them money"/>
<node CREATED="1452321743095" ID="ID_753558137" MODIFIED="1452321749835" TEXT="But can we vary the fee?">
<node CREATED="1452321751168" ID="ID_310896066" MODIFIED="1452321776788" TEXT="Of course! By the number of transactions in the block."/>
</node>
<node CREATED="1452321781927" ID="ID_460614569" MODIFIED="1452321797523" TEXT="Transactions can be put into blocks that sign old blocks, what about new ones?">
<node CREATED="1452321800777" ID="ID_1928928488" MODIFIED="1452321826683" TEXT="New blocks are created, with a signing transaction, that has to pay the signing fee"/>
<node CREATED="1452321831560" ID="ID_663598102" MODIFIED="1452321942012" TEXT="But why would they want to include other transactions in their block?"/>
</node>
<node CREATED="1452321955096" ID="ID_1055926260" MODIFIED="1452321986532" TEXT="If there is a fee, then small guys will be prevented from creating signatures, because the fee isn&apos;t worth the reward">
<node CREATED="1452322041792" ID="ID_1926164739" MODIFIED="1452322051908" TEXT="Let&apos;s say we award with continously compounded interest">
<node CREATED="1452322057336" ID="ID_1005798550" MODIFIED="1452322160522" TEXT="Then when the user makes a transaction, they will automatically get the interest as long as their block gets over 10% trust (which it eventually should)"/>
<node CREATED="1452322092888" ID="ID_1830600096" MODIFIED="1452322206732" TEXT="In the UI, we can show their value growing, even when they aren&apos;t even connected to the network">
<node CREATED="1452322122528" ID="ID_803779058" MODIFIED="1452322143036" TEXT="It would be split into interest earned (which would stay unavailable until the threshold is reached)"/>
</node>
<node CREATED="1452322161567" ID="ID_859978799" MODIFIED="1452322196810" TEXT="Then why would anyone sign a block, if they can just wait and sign it later getting the same reward?">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1452322258088" ID="ID_601011828" MODIFIED="1452322273660" TEXT="The little guy honestly provides little benefit, however"/>
<node CREATED="1452322284552" ID="ID_1563890919" MODIFIED="1452322305836" TEXT="So lets say, when we reach a threshold, everyone without the threshold limit gets a fair share of reward">
<node CREATED="1452322314097" ID="ID_663708732" MODIFIED="1452322348796" TEXT="Big guys would like to sign every block. Little guys would never sign a block, because the reward is less than the fee"/>
<node CREATED="1452322365089" ID="ID_1120203283" MODIFIED="1452322368860" TEXT="Pool?">
<node CREATED="1452322376247" ID="ID_502870544" MODIFIED="1452322389588" TEXT="Cold signing?">
<node CREATED="1452322391049" ID="ID_1683319457" MODIFIED="1452322402668" TEXT="It could be done with a signing + a master key"/>
<node CREATED="1452322417537" ID="ID_677076933" MODIFIED="1452322453900" TEXT="The problem is that then giant pools would develop, the bigger the pool, the more the reward, and you can never be sure the cold minter isn&apos;t sharing that key with a bh"/>
<node CREATED="1452322495872" ID="ID_1856395272" MODIFIED="1452322504868" TEXT="So what is an honest trust value for a cold key?">
<node CREATED="1452322506768" ID="ID_1546235895" MODIFIED="1452322660604" TEXT="Since you can never know who that key is given to, how secure their network is, I&apos;d say zero. There is no reason to keep it safe"/>
</node>
</node>
</node>
</node>
<node CREATED="1452322729048" ID="ID_694145087" MODIFIED="1452322745108" TEXT="In order to choose a fee, we need to know the value of the block to the network">
<node CREATED="1452322756168" ID="ID_1112450705" MODIFIED="1452322786548" TEXT="This depends on how likely it is for a bh to obtain old private keys since the last time a checkpoint block was created"/>
<node CREATED="1452322797768" ID="ID_1208982127" MODIFIED="1452322843460" TEXT="So we keep a running total of trust of the network. As keys lose trust, the network loses trust, until it gets to zero">
<node CREATED="1452322845361" ID="ID_1586369976" MODIFIED="1452322866628" TEXT="So reward would be x/(total trust) all the way up to infinity">
<node CREATED="1452322909913" ID="ID_850519738" MODIFIED="1452322962404" TEXT="This would allow a bh to convince a wh to go bad, though, if the reward for signing one of their bad blocks was high enough. They could only accomplish that, though, if they could thrash other peoples coins, which they can not do"/>
<node CREATED="1452323067105" ID="ID_1513170905" MODIFIED="1452323167830">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      We need to take into account the trust gained.&#160;If signing a recent block gives a bunch of past blocks checkpoint status, they all shouldn't get a high reward. Also we need to know the trust needed
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1452323176816" ID="ID_1543670630" MODIFIED="1452323247460" TEXT="What we care about, though is binary. Either there is trust or there isn&apos;t. This is because once we reach the 10% threshold, the block goes to 100% checkpoint status (since by assumption, there can only be so many coins in control of bh&apos;s)">
<node CREATED="1452323268400" ID="ID_1113630804" MODIFIED="1452323333093" TEXT="But we don&apos;t know how high of a reward is necessary to get the network to sign it over 10%"/>
</node>
</node>
<node CREATED="1452323480656" ID="ID_1506884295" MODIFIED="1452323538234" TEXT="This is a bad idea, it encourages collusion between major players to delay signing and raise the reward level">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1452323540447" ID="ID_1164786895" MODIFIED="1452323566907" TEXT="This is impossible to know, because we can&apos;t estimate the reward necessary to get enough people to sign it">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1452320267135" ID="ID_1089822760" MODIFIED="1452320272107" TEXT="ideas">
<node CREATED="1452320273649" ID="ID_746096956" MODIFIED="1452320318483" TEXT="coinage has a relationship to individuality of users">
<node CREATED="1452320319673" ID="ID_31813394" MODIFIED="1452320357365" TEXT="An attacker can control only so much coinage. No matter what transactions they do with their coins, they are unable to increase it"/>
<node CREATED="1452320429089" ID="ID_644970568" MODIFIED="1452320455979" TEXT="It seems that, even if a transaction is done against a coin, it doesn&apos;t necessarily mean an attacker has gotten hold of the coins"/>
<node CREATED="1452320456263" ID="ID_1026875160" MODIFIED="1452320497029" TEXT="It relates to bct, doesn&apos;t it? Because when a transaction is made, it may be the attacker got hold of the old key at that point which reduces the trust, but does not eliminate it"/>
<node CREATED="1452320502169" ID="ID_440020573" MODIFIED="1452320660413" TEXT="If, a transaction has been made, but is behind a checkpoint (ie, a 100% trusted block) then there are two possiblities:&#xa;&#xa;1. The coins are still live (in that case, the fee to own the private key would be large, ie the price of the coins)&#xa;2. The coins are dead, but the txn can not be changed even if the private key is held&#xa;&#xa;In either case, we can consider the trust at 100%&#xa;"/>
<node CREATED="1452320662488" ID="ID_1554850068" MODIFIED="1452320872980" TEXT="However there is a subtle difference. isn&apos;t there, between trust and coinage? Coinage is more geared towards preventing stake grinding, but otherwise, as an attacker can&apos;t acquire more coinage, they also can&apos;t acquire more trust"/>
<node CREATED="1452320894297" ID="ID_1799965982" MODIFIED="1452320938499" TEXT="This relationship applies to coin trust as well. High coin trust indicates that only one user is really the owner, regardless of whether a chain is forked or not">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1452828015269" ID="ID_310941719" MODIFIED="1452828026494" TEXT="users can sign blocks at any time">
<node CREATED="1452828038779" ID="ID_1592023593" MODIFIED="1452828055663" TEXT="This will allow us to pass the proof of stake threshold"/>
<node CREATED="1452828057243" ID="ID_801181476" MODIFIED="1452828065655" TEXT="We reward users for this"/>
<node CREATED="1452828066026" ID="ID_1180781986" MODIFIED="1452828107615" TEXT="We only spot check signatures, done randomly. This allows a client not have to examine so many signatures per block in order to trust it">
<node CREATED="1452828109138" ID="ID_41694392" MODIFIED="1452828130718" TEXT="We can do this because an attacker won&apos;t know which random signatures to check"/>
</node>
</node>
<node CREATED="1454125535040" ID="ID_1543910752" MODIFIED="1454125558403" TEXT="we need something that doesn&apos;t provide a lot of reward, but will compel an ordinary user to perform"/>
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
