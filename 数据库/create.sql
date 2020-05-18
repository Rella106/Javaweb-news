drop table news;
create table news
(
	id int primary key,
	title varchar(100),
	content text,
	times datetime,
	keyw varchar(100),
	author varchar(100)
);

INSERT INTO news
   (`id`, `title`, `content`, `times`, `keyw`, `author`)
VALUES
   (1, '十年资讯界十大重要人物　Linux 之父名列第三', 'content\r\n\"中华网讯　据《LinuxFab》NetworkComputing 日前选出了在十年内在资讯界最重要的十个人物，大家熟悉的 Linux 之父 Linus Torvalds 名列第三。前两名则分别是发明 WWW 的 Tim Berners-Lee，和引发视窗系统风潮的 Bill Gates。\r\n\r\n　　以下是 NetworkComputing 对 Linus Torvalds 的介绍摘录：\r\n\r\n　　Linus Torvalds，一个害羞、说瑞典话的芬兰大学学生，做了别人从未做的事：创造了一个操作系统并把它丢给一堆喜欢创造好程序的程序员不断的开发。他受到一些大公司的注意像 HP、IBM、Sun 和其他电脑制造商，特别是微软。\r\n\r\n由于对既有的操作系统感到灰心，Torvalds 创造了另一个可以自由散布的操作系统而开始了 Linux 革命。\r\n\r\n　　毫无疑问地 Torvalds 已成为推动电脑和网络领域的重要动力。他的操作系统如同催化剂，刚开始和大部分的革命一样，都是静悄悄的。但是当 Linux 备受关注时，其商业潜力就更大了。决心要尽最大可能分享和改善他设计的软件，Torvalds 不顾商业利益立下版权禁止任何人，包括他自己，使用他的创作来获利。更周到和完善的事几个月之内他把原始版权改成较少限制的 GNU General Public License (GPL)。他说此举是他做过最好的一件事。我们谁又会反对呢？\r\n\r\n　　Torvalds 决定自由散布他的作品与现今的策略大相迳庭。当 IPO 还未像近年来那样发烧时，一般程序员都用自己的创作图利。在 1990 年初，世人正目睹微软惊人的商业成功，Linux 平稳的度过了 GPL 开发的困难并一次又一次地改善。\r\n\r\n　　未受其产品历史的牵绊，以及客户对未来不会影响他们家庭的应用的需求，Linux 已经开发成丰富的操作系统，… 未来几年 Torvalds 和 Linux 开发人员会如何面对他们创作的成功将值得观察。\r\n\r\n　　当他过去作品和最著名的系统软件在竞争的同时，Torvalds 最新的计划目标在另一个有强力领导的技术：Torvalds 在 Transmeta 当起程序员来了。Transmeta 创新的 Crusoe 处理器正等机会垂涎完全由 Intel 支配的芯片市场。Transmeta 会是下一个巨人杀手吗？…\"', '2000/10/29 17:07:40', 'Linux', '中华网讯');

INSERT INTO news
   (`id`, `title`, `content`, `times`, `keyw`, `author`)
VALUES
   (2, 'UT斯达康1000G高速路由器即将研制完成', 'content\r\n\"　　 提起UT斯达康的产品，给人们留下的最深印象便是它的无线市话系统“小灵通”。但其实“小灵通”仅仅是UT斯达康的一个产品，用公司总裁吴鹰的话说：“UT斯达康的定位是面向整个电信网络，提供全方位电信产品。”在“深圳高交会”上，UT斯达康通过展示“WACOS网科多业务IP交换系统中的部分产品”，“城域网解决方案”，及“iPAS无线市话系统”等一系列最新产品，向人们诠释着这一理念。\r\n\r\n　　 “WACOS多业务IP交换系统”简称“WACOS”是面向下一代电信网络及服务的平台，具备实现全IP第三代移动通信的能力。它的核心是由1000G的高速路由器组成，据该公司副总裁周韶宁先生介绍；这一高性能路由器即将研制完成，WACOS网科系统采用了灵活、性价比高、扩展性好的软交换体系结构，利用多协议网关，通过统一的IP网络向用户提供宽带接入、高速移动等可服务于未来电信网络的多种业务。 　　UT斯达康的城域网全面解决方案采用了IPoverDWDM技术，具有很强的扩展性、灵活性和易管理性，能提供包括城域网、局域网、企业网、以太网等多种应用。\r\n\r\n　　而在此次展会上展出的“iPAS无线市话系统”与以往UT斯达康的“PAS无线接入系统”的最主要不同便在于前面新增的“i“，“i”意味着IP。由于采用了功能强大的软交换体系结构、多协议网关及IP信令网络，不仅可以互通互联，还为系统向VoIP、软交换及3G无线通信的平滑过渡奠定了基础。 \r\n \r\n\"', '2000/10/29 21:16:53', '微软', '微软');

INSERT INTO news
   (`id`, `title`, `content`, `times`, `keyw`, `author`)
VALUES
   (3, '玉泉山', '新东方电脑培训部', '2001/1/11 13:19:30', '电脑', 'Feng');

INSERT INTO news
   (`id`, `title`, `content`, `times`, `keyw`, `author`)
VALUES
   (4, '电脑部', '新东方电脑培训部', '2001/4/4 09:33:41', '电脑', 'Feng');

INSERT INTO news
   (`id`, `title`, `content`, `times`, `keyw`, `author`)
VALUES
   (5, 'Vulkan性能初探：大战DX11！结果意外', '测试平台采用Core i7-4960X处理器、32GB DDR3-1866内存、840 EVO 750GB固态硬盘。由于《塔洛斯的法则》支持DX10/11、OpenGL但是不支持DX12，所以操作系统使用Windows 8.1。\r\n\r\n驱动既有AMD、NVIDIA Vulkan专版，也有普通版的361.91、16.1.1 Hotfix。', '2016/7/12 21:12:47', '电脑', 'BN');




