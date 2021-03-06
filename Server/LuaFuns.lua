----------------Các hàm về thông tin đến player, hệ thống tin nhắn--------------------------------
Say2(Câu nói, Lựa chọn, Vẽ hình, replacename, Các hàm)	Nói chuyện có hình Npc, có lựa chọn
Say(Câu nói, Lựa chọn, Các hàm)	Nói chuyện loại cũ có lựa chọn
GotReward("Chuỗi","id/Hàm1","id/Hàm2","id/Hàm3")	Khung nhận phần thưởng, hàm tương tự như Say - 3 lựa chọn
Talk(Số câu, Hàm gọi lại, Câu 1, Câu 2, ...)	Nói chuyện không lựa chọn
Message(Chuỗi)	Trả lại g_DebugLog(Chuỗi)
PutMessage(Chuỗi)	Hiện hộp thoại chứa chuỗi
AddNews(chuỗi or số,all=1)	Hiển thị dòng chữ chạy trên màn hình 3 lần,all: 1 hiện cho tất cả người chơi, 0 thì 1 player thấy
AddTimeNews(chuỗi or số,năm,tháng,ngày,giờ,phút,all=1)	Hiển thị dòng chữ chạy cho đến thông số thời gian thì ngừng
AddCountNews(chuỗi or số,giây,all=1)	Hiển thị dòng chữ chạy trong vòng số giây 
AddNews2,AddTimeNews2,AddCountNews2 tương tự như các hàm trên nhưng hiển thị dòng thứ 2
MsgSystem(Số thứ tự)	Thông báo khung system theo Warninginfo.txt
--//////////////////////////////////////////////////////////////////////////////////////////--
-----------------Các hàm nhiệm vụ và thời gian---------------------------------------------------
OpenMission(id>0<3)	mở nhiệm vụ của mỗi map, sau đó có thể hẹn giờ cho mỗi id, max 2	**hàm cao cấp, nên cẩn trọng**
RunMission(id)	Chạy hàm RunMission của số id nếu playerindex > 0	**hàm cao cấp, nên cẩn trọng**
CloseMission(id)	đóng nhiệm vụ số id	**hàm cao cấp, nên cẩn trọng**
StartMissionTimer(id,timertaskid, thời gian)	Hẹn thời gian sẽ chạy script timertaskid(max 3) hàm OnMissionTimer()	**hàm cao cấp, nên cẩn trọng**
StopMissionTimer(id,timertaskid)	Tắt hẹn giờ của mission id và timertaskid	**hàm cao cấp, nên cẩn trọng**
GetMSRestTime(id,timertaskid)	Lấy thời gian còn lại của mission id, thứ timertaskid **hàm cao cấp, nên cẩn trọng**
AddMSPlayer(MissionId, nhóm, PlayerIndex=chính mình)	Thêm 1 player vào nhiệm vụ, mặc định PlayerIndex là người chạy script, trả về DataId > 0	**hàm cao cấp, nên cẩn trọng**
DelMSPlayer(MissionId, nhóm, PlayerIndex=chính mình)	Xóa player đã add	**hàm cao cấp, nên cẩn trọng**
SetPMParam(MissionId, nDataIndex, ParamId, giá trị)		Đặt giá trị cho ParamId của DataIndex của 1 player trong 1 mission, ParamId từ 0->14	**hàm cao cấp, nên cẩn trọng**
GetPMParam(MissionId, nDataIndex, ParamId)	Check giá trị thứ ParamId **hàm cao cấp, nên cẩn trọng**
GetMSIdxGroup(MissionId, nDataIndex)	Check Nhóm của player trong mission **hàm cao cấp, nên cẩn trọng**
PIdx2MSDIdx(MissionId, PlayerIndex)	Check xem player có tên trong mission không, trả về nDataIndex **hàm cao cấp, nên cẩn trọng**
MSDIdx2PIdx(MissionId, nDataIndex)	Lấy PlayerIndex nếu như player có tồn tại trong mission **hàm cao cấp, nên cẩn trọng**
GetMSPlayerCount(MissionId)	Check tổng số lượng tên player trong mission kể cả offline **hàm cao cấp, nên cẩn trọng**
GetMSGroupCount(MissionId,nGroup)	Check tổng số trong 1 nhóm đang online **hàm cao cấp, nên cẩn trọng**
Msg2MSGroup(MissionId,chuỗi,nhóm)	Gửi tin nhắn cho 1 nhóm đang online **hàm cao cấp, nên cẩn trọng**
Msg2MSAll(MissionId,chuỗi)	gửi tin cho tất cả player trong mission đang online **hàm cao cấp, nên cẩn trọng**
AddMSNpc(MissionId,nNpcIdx)	Add ID npc vào mission, sau khi CloseMission npc tự động xóa
SetMissionV(id, giá trị)	Set giá trị mảng mission (tương tự SetTaskTemp) id max 49
GetMissionV(id)	Check giá trị mảng mission bên trên
SetGlbMissionV(id, giá trị)	Set giá trị quốc tế (tương tự SetTaskTemp) id max 49
GetGlbMissionV(id)	Check giá trị quốc tế
SetTimer(giây*18,TimerId)	Hẹn giờ chạy script trong file TimerTask.txt, id từ 1 đến 10
StopTimer()	Dừng hẹn giờ đang chạy
GetRestTime()	Lấy thời gian còn lại của cuộc hẹn giờ bên trên
GetTime()	Yr,Mth,Dy,Hr,Mn,Se = GetTime() lấy thời gian hiện tại của máy tính
SetTaskTemp(Id, giá trị)	Đặt giá trị cho task Id tạm thời [Lấy: GetTaskTemp(Id)] id từ 0 -> 511
SetTask(Id, giá trị lưu)	Đặt giá trị cho task Id được lưu trong database [Lấy: GetTask(Id)]
							id từ 21 đến 255 đặt giá trị thoải mái.(Đã sử dụng với source: id 0->20)
							id từ 256->1255: giá trị chỉ được phép từ 0 đến 255
--//////////////////////////////////////////////////////////////////////////////////////////--
-----------------Các hàm dành cho player---------------------------------------------------
AddRepute(Điểm)	Cộng số điểm vào danh vọng [Lấy: GetRepute()]
AddBless(Điểm)	Cộng số điểm vào phúc duyên [Lấy: GetBless()]
AddAccum(Điểm)	Cộng số điểm vào tích lũy Tống Kim [Lấy: GetAccum()]
AddHonor(Điểm)	Cộng số điểm vào Vinh dự [Lấy: GetHonor()]
AddProp(Điểm)	Cộng số điểm vào tiềm năng
AddMagicPoint(Điểm)	Cộng số điểm vào kỹ năng
IncPoint(kiểu, số Điểm)	Tự động Cộng số điểm vào tiềm năng, 1:sức mạnh 2:thân pháp 3:sinh khí 4:nội công
GetPlayerNpcIdx()	Trả lại chỉ số Npc của Player
NpcIdx2PIdx(nNpcIndex)	Đổi NpcIndex thành PlayerIndex
GetSeries()	Kiểm tra ngũ hành nhân vật
SetExBox(Số rương)	Mở rộng số rương max 3 [Check: GetExBox()]
ResetMagicPoint(bool KickOutSelf)	Tẩy tủy kỹ năng, mặc định kick
ResetProp()	Tẩy tủy tiềm năng
GetTongName()	Trả về tên bang
GetCoin()	Trả lại số đồng hiện tại
PayCoin(số đồng)	Trừ số đồng
AddCoin(số đồng)	Tăng số đồng
AddEquipExTime(số phút)	Tăng hoặc giảm hạn sử dụng Túi hành trang
BackHome()	Thổ địa phù
BackOldPlace()	Quay lại địa điểm cũ
SetRevPos(Id, Map=-1)	Thiết đặt điểm phục sinh tuyệt đối
SetTempRevPos(Id) Thiết đặt điểm phục sinh tạm thời (cách 1)
SetTempRevPos(Map,x,y) Thiết đặt điểm phục sinh tạm thời (cách 2)
SetLogoutRV(Kiểu)	Khi log in sẽ dùng kiểu. 0:log in bình thường. 1: dùng điểm phục sinh
SetRank(Id)	Đặt danh hiệu theo file RankSetting.txt
SetRankEx(Id,bOriginal=0)	Đặt danh hiệu mở rộng theo file ExpandRank.txt, nếu bOriginal=1 là thay đổi cả giá trị gốc
GetRankEx()	Trả lại chuỗi tên danh hiệu mở rộng hiện thời
SetCurCamp(phe)	Thiết lập phe tạm thời
GetCurCamp()	check phe tạm thời
SetCamp(phe)	Thiết lập phe nguyên thủy
GetCamp()	check phe nguyên thủy
SetPunish(bkiểu)	Thiếp lập trạng thái chiến đấu trong các tính năng, bkiểu 1: bật, 0: tắt.(khi bật chết sẽ không mất gì)
SetPKMode(kiểu, ÉpKiểu=0)	Thiết lập chế độ PK, kiểu: 0 luyện công, 1 chiến đấu, 2 đồ sát. ÉpKiểu = 1 là ép player sử dụng chế độ đó.
SetDeathScript(luafile)	Đặt script cho player khi chết
GetName()	Trả lại tên người chơi
--//////////////////////////////////////////////////////////////////////////////////////////--
-----------------Các hàm dành cho item---------------------------------------------------
SetItemDate(Id, Số phút)	Đặt thêm hạn sử dụng cho item (cách thứ 1 - gia hạn thêm số phút)
SetItemDate(Id, Năm,tháng,ngày,giờ,phút)	Đặt hạn sử dụng cho item (cách thứ 2 - đặt thời gian hết hạn)
FreezeItem(ItemId,bool)	Đóng băng và ngưng đóng băng item trong lúc chạy script tránh giao dịch
RemoveItem(index,booltrue, count=0)	Xóa item theo Index với tùy chọn xóa vĩnh viễn hay không. Nếu count=0 sẽ xóa hết cả chồng
GetItemCount(Detail, Genre=task)	Check số lượng item trong hành trang
DelItem(Detail,Genre=task,Count=1,room=E)	Xóa vật phẩm tính năng số lần count trong room E
AddItem(kind,genre,detail,parti,level,series,luck,MaLvl[6]) Thêm 1 item bất kỳ
GetItemParam(pos,x,y) Trả về nIndex,kind,genre,detail,parti,level,series,row =
AddItemAt(Index,pos,x,y) Additem vào Itemlist tại 1 vị trí cụ thể
GetItemMagic(nIndex)	Trả về 24 thông số magic var[24]=
ItemSetAdd(kind,genre,detail,parti,level,series,luck)	Add item ngầm treo trong server, không hiển thị
AddItemID(nIndex)	Khi có sẵn nIndex của Item ngầm trong server, add vào hành trang như bình thường
SetItemRich(nIndex, nValue)	Đặt trị số tài phú binh giáp
ChangeItemMagic(index,24var or 8*3)	Áp đặt magic var[24] cho item
CheckRoom(Rộng, Cao,phòng=hành trang)	Kiểm tra số lượng ô trống x*y, mặc định kiểm tra hành trang param3
LockItem(nIndex)	Khóa bảo hiểm vĩnh viễn (cách 1) (chỉ tác dụng ở server)
LockItem(nIndex,0)	Mở khóa hoàn toàn (cách 2) (chỉ tác dụng ở server)
--//////////////////////////////////////////////////////////////////////////////////////////--
-----------------Các hàm dành cho npc---------------------------------------------------
AddNpc(NpcTemplateId,Level,mapid,x,y)	Add 1 npc vào mapid vị trí x,y
SetNpcSer(NpcIndex, chuỗi ngũ hành 3 ký tự) ví dụ "014" quái random 3 hệ : Kim, Mộc, Thổ "555" quái random 5 hệ
SetNpcExp(NpcIndex, Kinh nghiệm, bOriginal)	Đặt kinh nghiệm cho quái, bOriginal = 1 thì thay đổi luôn giá trị khởi tạo của npc
SetNpcName(NpcIndex, Tên)	Đặt tên cho quái
SetNpcLife(NpcIndex, máu,bOriginalLife)	Đặt số máu cho npc, bOriginalLife = 1: đổi luôn cả máu nguyên thủy
SetNpcReplenish(NpcIndex, điểm phục hồi máu, bOriginal)	Đặt số điểm phục hồi sinh lực mỗi nửa giây
SetNpcAR(NpcIndex, ĐCX, bOriginal)	Thiếp lập độ chính xác cho npc
SetNpcDefense(NpcIndex, né tránh, bOriginal)	Thiết lập né tránh
SetNpcDamage(NpcIndex, min, max, bDec)	Thiết lập sát thương vật lý nhỏ nhất và lớn nhất cho npc, bDec = 1: trừ ra
SetNpcResist(NpcIndex, STVL, Độc, Băng, Hỏa, Lôi, bOriginal)	Thiết lập kháng tính
SetNpcRevTime(NpcIndex,ReviveFrame) thời gian sống lại là bao lâu? vd 60*18 : 1 phút sau khi chết sẽ hồi sinh
SetNpcHitRecover(NpcIndex, TG phục hồi, bOriginal)	Thiết lập thời gian phục hồi của npc (độ giật khi nhận stvl)
SetNpcSpeed(NpcIndex, tốc độ)	Thiếp lập tốc độ di chuyển
SetNpcSkill(NpcIndex, skillid, level, thứ tự skill=1)	Thiếp lập skill cho npc, skillid or level = 0 là không set giá trị đó
SetNpcLifeTime(NpcIndex,giây*18)	Npc chỉ tồn tại trong số giây được thiết đặt, và tự động xóa khi hết thời gian
SetNpcCurCamp(NpcIndex,phe phái)	Thiết lập phe phái hiện thời cho npc
SetNpcScript(NpcIndex,Script)	Thiết lập file script hoạt động cho npc
SetNpcDropScript(NpcIndex, luafile)	File tỷ lệ rơi đồ
SetBoss(NpcIndex,kiểu)	0:npc thường, 1:boss xanh, 2: boss vàng
SetNpcDmgEx(NpcIndex, STVL, độc, băng, hỏa, lôi, bNgoạicông)	+ sát thương, bNgoạicông = 1 là sát thương ngoại, mặc định là nội
SetNpcDmgRet(NpcIndex,phần trăm)	Phản damage %
GetNpcLife(NpcIndex, bOriginal)	Check số máu tối đa của npc, bOriginal = 1: check máu nguyên thủy
GetBossType(NpcIndex)	Trả về kiểu của npc, 0: npc thường, 1: boss xanh, 2: boss vàng
GetNpcSer(NpcIndex)	Kiểm tra ngũ hành của quái
GetNpcLifeTime(NpcIndex)	Kiểm tra thời gian sống sót còn lại của Npc
IsBlueBoss(NpcIndex)	Check quái có phải là boss xanh hay không
GetNpcLev(NpcIndex)	Lấy level của quái
DropNpcItem(NpcIndex, kind,genre,detail,parti,level,series,luck,MaLvl[6])	Rớt item tại vị trí Npc (NpcIndex)
DropNpcMoney(NpcIndex, Số tiền)	Rớt tiền tại vị trí Npc (NpcIndex)
SetNpcValue(NpcIndex,var)	Lưu 1 giá trị nào đó vào npc
GetNpcValue(NpcIndex)	Lấy lại giá trị đã lưu
--//////////////////////////////////////////////////////////////////////////////////////////--
-----------------Các hàm chuc nang---------------------------------------------------
OpenEnchase()	Mở bảng khảm nạm
AddTrap(Mapid,x,y,LuaFile)	tạo 1 trap và đặt đường dẫn LuaFile
OpenDice()	Mở trò chơi xí ngầu
RANDOM(Min,Max)	Lấy số ngẫu nhiên từ min đến max, nếu chỉ 1 thông số thì giá trị ngẫu nhiên từ 0 đến số đó
GetRevPos(Id,Map)	Trả về tọa độ x,y của điểm Id
Sale(shopId, kiểu)	Mở 1 shop và bán bằng giá trị kiểu: 0:Tiền vạn, 1: phúc duyên, 2:danh vọng, 3: tích lũy TK, 4:vinh dự. Mặc định là tiền vạn.
--//////////////////////////////////////////////////////////////////////////////////////////--
-----------------Các hàm skill kỹ năng---------------------------------------------------
AddMagic(SkillId, nLevel)	Thêm kỹ năng, có thể dùng để tăng giảm level
DelMagic(SkillId)	Xóa kỹ năng
GetMagicLevel(SkillId)	Kiểm tra lv skill, trả về level, nếu không tồn tại trả về -1
GetMagicPoint()	Check điểm kỹ năng còn dư
GetSkillId(IndexList)	Lấy skillid thứ IndexList trong skilllist
ClearSkill()	Xóa hết skill
IncSkill(SkillId, điểm cộng)	Tăng điểm skill
AddSkillState(SkillId, Level, giây*18)	Xuất skill trạng thái lên nhân vật trong thời gian giây*18
CastSkill(SkillId, Level)	Xuất skill chủ động tại vị trí nhân vật
--//////////////////////////////////////////////////////////////////////////////////////////--
-----------------Các hàm tổ đội---------------------------------------------------
GetTeam()	Trả về TeamId, nếu sai trả về nil
GetTeamSize()	Cách thứ nhất, trả về số thành viên hiện tại trong đội player
GetTeamSize(TeamId)	Cách thứ hai, trả về số thành viên của đội số TeamId
GetTeamMem(TeamId,mem thứ n)	Trả về PlayerIndex của thành viên thứ n trong đội TeamId, nếu n=0 trả lại PlayerIndex đội trưởng
IsCaptain()	Check nếu == 1, thì player là đội trưởng
LeaveTeam()	Rời nhóm hoặc giải tán nhóm
Msg2Team("Chuỗi")	Gửi thông tin đến toàn đội
--//////////////////////////////////////////////////////////////////////////////////////////--
-----------------Các hàm obj vật thể---------------------------------------------------
AddObj(Id,Map,x,y,Luascript,Hướng quay=0,state=0)	Add vật thể, 3 param cuối có thể không
