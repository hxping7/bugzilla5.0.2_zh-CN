# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# This Source Code Form is "Incompatible With Secondary Licenses", as
# defined by the Mozilla Public License, v. 2.0.

# This file contains a single hash named %strings, which is used by the
# installation code to display strings before Template-Toolkit can safely
# be loaded.
#
# Each string supports a very simple substitution system, where you can
# have variables named like ##this## and they'll be replaced by the string
# variable with that name.
#
# Please keep the strings in alphabetical order by their name.

%strings = (
    any => '任何',
    apachectl_failed => <<END,
警告：无法检查 Apache 的设定。当你并非以 ##root## 执行
checksetup.pl 时，这有可能会发生。若要查看所遭遇到的问题，
执行： ##command##
END
    bad_executable => '并非有效的执行档： ##bin##',
    blacklisted => '(被列入黑名单)',
    bz_schema_exists_before_220 => <<'END',
你正从 2.20 以前的版本升级，但是 bz_schema table 已经存在。
这代表你并没有先 drop 已经存在的 Bugzilla 资料库，就把 mysqldump
回存到 Bugzilla 资料库。当你需要回存 Bugzilla 资料库的备份时，
你必须先 drop 整个资料库。

请 drop 你的 Bugzilla 资料库，并从一个不包含 bz_schema table 的备份回存。
如果因为某些原因你无法这样做，那么你可以使用最后的手段：连到你的 MySQL
资料库后， drop bz_schema table 。
END
    checking_for => '检查',
    checking_dbd => '检查可用的 perl DBD 模块...',
    checking_optional => '下列 perl 模块是选用的：',
    checking_modules => '检查 perl 模块中...',
    chmod_failed => '##path##: 变更权限失败： ##error##',
    chown_failed => '##path##: 变更拥有者失败： ##error##',
    commands_dbd => <<EOT,
你必须执行以下指令之一（视你使用的资料库而定）：
EOT
    commands_optional => '安装选用模块的指令：',
    commands_required => <<EOT,
安装必备模块的指令（你「必须」执行所有的指令后，重新执行
checksetup.pl ）：
EOT
    continue_without_answers => <<'END',
在互动模式（不会有一个 'answers' 文件）重新执行 checksetup.pl
以继续。
END
    cpan_bugzilla_home =>
        "警告：使用 Bugzilla 的目录做为 CPAN home 资料夹。",
    db_enum_setup  => "设定标準的下拉式字段选项：",
    db_schema_init => "初始化 bz_schema...",
    db_table_new   => "增加新的 table ##table##...",
    db_table_setup => "建立 table 中...",
    done => '完成。',
    enter_or_ctrl_c => "Press Enter to continue or Ctrl-C to exit...",
    error_localconfig_read => <<'END',
读取 ##localconfig## 文件时发生错误。错误的讯息是：

##error##

请在 localconfig 档中修正此错误。
或者对 localconfig 档更名，然后重新执行 checksetup.pl ，
让它重新建立新的 localconfig 文件：

  $ mv -f localconfig localconfig.old
  $ ./checksetup.pl
END
    extension_must_return_name => <<END,
##file## 回传了 ##returned## ，但这不是个有效的附加元件名称。
附加元件必须要回传它们的名称，而不是 <code>1</code> 或数字。
详情请参阅 Bugzilla::Extension 。
END
    feature_auth_ldap => 'LDAP 认证',
    feature_auth_radius => 'RADIUS 认证',
    feature_documentation => '说明文件',
    feature_graphical_reports => '图表式报告',
    feature_html_desc => '在项目／群组描述中使用较多的 HTML',
    feature_inbound_email => 'Inbound Email',
    feature_jobqueue => '信件队列',
    feature_jsonrpc => 'JSON-RPC 介面',
    feature_new_charts => '新图表',
    feature_old_charts => '旧图表',
    feature_memcached => '支援 Memcached',
    feature_mod_perl => 'mod_perl',
    feature_moving => '在不同机器间搬移 Bugs',
    feature_patch_viewer => 'Patch Viewer',
    feature_rest => 'REST 介面',
    feature_smtp_auth => 'SMTP 认证',
    feature_smtp_ssl => 'SMTP 的 SSL 支援',
    feature_updates => '自动更新通知',
    feature_xmlrpc => 'XML-RPC 接口',
    feature_detect_charset    => '自动侦测文字附件的字元编码',
    feature_typesniffer       => '对附件的 MIME 类別做探测(sniff)',

    file_remove => '移除 ##name## 中...',
    file_rename => '將 ##from## 更名为 ##to## 中...',
    header => "* 这是在 ##os_name## ##os_ver## ，\n"
            . "* Perl ##perl_ver## 上执行的 Bugzilla ##bz_ver## 。",
    install_all => <<EOT,

如要试着使用单一指令自动安装所有必备及选用的模块，执行：

  ##perl## install-module.pl --all

EOT
    install_data_too_long => <<EOT,
警告：在 ##table##.##column## 栏位中的某些资料比新的长度限制 ##max_length## 字元还要长。
需要修正的资料，以字段名称 ##id_column## 以及需要修正的栏位值 ##column## 的格式，
列出如下：

EOT
    install_module => '安装 ##module## 版本 ##version## 中...',
    installation_failed => '*** 安装已中止。请阅读上述讯息。 ***',
    install_no_compiler => <<END,
错误：
错误：使用 install-module.pl 必须先安装一种编译器，例如
gcc 。
END
    install_no_make => <<END,
错误：使用 install-module.pl 必须先安裝 "make" 。
END
    lc_new_vars => <<'END',
此版本的 Buzilla 包含一些你也许想要改变及套用到本地设定的参数。
自从你上次执行 checksetup.pl 以后，以下参数对 ##localconfig##
而言是新的：

##new_vars##

请编辑 ##localconfig## 并重新执行 checksetup.pl 以完成安装。
END
    lc_old_vars => <<'END',
##localconfig## 中的以下参数已不再使用，並已被搬到
##old_file## 中： ##vars##
END
    localconfig_create_htaccess => <<'END',
如果你使用 Apache 做为你的网页服务器， Bugzilla 可以替你建立
.htaccess 文件，它可以让此文件 (localconfig) 和其他的机密文件
无法透过网络读取。

设定为 1 时， checksetup.pl 将会检查是否有 .htaccess 文件。
若无，则会建立 .htaccess 文件。

设定为 0 时， checksetup.pl 将不会建立 .htaccess 文件。
END
    localconfig_db_check => <<'END',
checksetup.pl 是否应该尝试检查你的资料库设定是否正确？
有些资料库服务器/Perl 模块/moonphase 的组合会让此功能无法运作，
因此你可以尝试设定此参数为 0 ，让 checksetup.pl 可以执行。
END
    localconfig_db_driver => <<'END',
使用哪一种 SQL 资料库。预设值是 mysql 。
支持的资料库列表可以借由列出 Bugzilla/DB 目录维护 －－
每个模块都对应到一种支持的资料库，而模块的档名（在 ".pm" 之前）
都对应到此参数的一个有效的值。
END
    localconfig_db_host => <<'END',
此资料库服务器所在的 DNS hostname 或 IP 地址。
END
    localconfig_db_name => <<'END',
资料库的名称。对 Oracle 而言，是资料库的 SID 。对 SQLite 而言，
是 DB 文件的名称（或路径）。
END
    localconfig_db_pass => <<'END',
在此输入资料库的密码。通常建议对你的 bugailla 资料库用户指定密码。
如果你输入了含有缩写符号 (') 或反斜线 (\) 的密码，你需要使用 '\'
字符做 escape 。 (\') 或 (\)
（不用这些字符的话简单地多。）
END
    localconfig_db_port => <<'END',
有时资料库服务器会使用非标準的 port 。如果有这种情况的话，在此参数指定该
port 的数字。设定为 0 代表「使用预设的 port 」。
END
    localconfig_db_sock => <<'END',
MySQL 才需要输入的：输入 unix socket for MySQL 的路径。
如不输入，那么会使用 MySQL 的预设值。大概会是你要的。
END
    localconfig_db_user => "用來連接資料庫的使用者",
    localconfig_db_mysql_ssl_ca_file => <<'END',
PEM 檔案的路径，此档案包含可信任的 SSL CA 发行者列表。
此档案必须是网页服务器用户可以读取的。
END
    localconfig_db_mysql_ssl_ca_path => <<'END',
资料夹的路径，此资料夹包含以 PEM 格式储存的，可信任的 SSL CA 发行者列表。
资料夹及其底下的档案必須是网页服务器用户可以读取的。
Directory and files inside must be readable by the web server user.
END
    localconfig_db_mysql_ssl_client_cert => <<'END',
会使用于数据库服务器的完整客戶端 SSL 档案路径（ PEM 格式）。
此档案必須是网页服务器用户可以读取的。
END
    localconfig_db_mysql_ssl_client_key => <<'END',
相对于客戶端 SSL 凭证的私钥完整路径。
此档案必須是网页服务器使用者可以读取的，且必须不被密码保護。
END
    localconfig_diffpath => <<'END',
如果要让「两个 patch 之间的 diff 」功能有效，需要知道 "diff" bin
在哪个目录。（只有在使用 Patch Viewer 功能时才需要设定。）
END
    localconfig_index_html => <<'END',
大部份的网页服务器允许你使用 index.cgi 做为目录索引，并且也已经
事先设定好了。如果你的没有，那么你会需要一个 index.html 文件，
以避免重导到 index.cgi 。设定 $index_html 为 1 时，
checksetup.pl 会在 index.html 不存在时，替你建立一个。
注意： checksetup.pl 不会取代已存在的文件，所以如果你希望
       checksetup.pl 替你建立 index.html 时，你必须先确认
       index.html 文件不存在。
END
    localconfig_interdiffbin => <<'END',
如果你想要使用 Patch Viewer 的「两个 patch 之间的 diff 」功能，
请指定 "interdiff" 可执行的完整路径。
END
    localconfig_site_wide_secret => <<'END',
此密钥用来建立及验证加密的 token 。这些 token 用在 Bugzilla 的
一些安全性相关的功能中，以保护 Bugzilla 避免特定的攻击。
预设是一组乱数字串。把这组密钥保管好是很重要的。
此字串也必须要很长。
END
    localconfig_use_suexec => <<'END',
如果 Bugzilla 在 Apache SuexecUserGroup 环境下执行，请设定为 1 。

如果你的网页服务器有使用 cPanel 、 Plesk 或者类似的控制软体，
或是你的 Bugzilla 是在 shared hosting 的环境下，那你大概就是在
Apache SuexecUserGroup 环境下。

如果是 Windows box ，忽略此设定，因为它无效。

如果设定为 0 ， checksetup.pl 会设定正常网页服务器环境下，
适当的文件权限。

如果设定为 1 ， checksetup.p 会设定适合的文件权限，让 Bugzilla 在
SuexecUserGroup 环境下可以正常运作。
END
    localconfig_webservergroup => <<'END',
执行网页服务器的群组名称。在 Red Hat 下通常是 "apache" 。在
Debian/Ubuntu 下通常是 "www-data" 。

如果你把下面的 use_suexec 参数打开的话，那么是转换过后的网页服务器的
的群组名称，以执行 cgi 文件。

如果是 Windows 上，忽略此设定，因为它无效。

如果你没有权限可以存取 script 执行的目录，设定为 "" 。
如果设定为 "" ，那么你所安装的 Bugzilla 将会“非常”不安全，
因为有些文件将可以随意读取／写入，所以只要有权限进入机器的人
就可以随便做什么。你只应该在测试安装，而且无法设定为其他值时，
才设定成 "" 。※※！！已经警告过你了！！※※

如果设定为 "" 以外的值，你必须要以该指定群组中的成员，或是
##root## ，才能执行 checksetup.pl 。
END
    max_allowed_packet => <<EOT,
警告：你必须在你的 MySQL 设定里将 max_allowed_packet 参数设定为
##needed## 。现在它设定为 ##current## 。
你可以在 MySQL 设定档中的 [mysqld] 段落中找到此参数。
EOT
    min_version_required => "最低版本需求： ",

# Note: When translating these "modules" messages, don't change the formatting
# if possible, because there is hardcoded formatting in
# Bugzilla::Install::Requirements to match the box formatting.
    modules_message_apache => <<END,
***********************************************************************
* APACHE 模组                                                         *
***********************************************************************
* 有些 Apache 模组可以扩充 Bugzilla 的功能。                          *
* 這些模组可以在 Apache 的设定档（通常叫 httpd.conf 或 apache2.conf ）*
* 中启用。                                                            *
* - mod_headers, mod_env, mod_expires:                                *
*   当升级 Bugzilla 时，它们可以自动更新用户的浏览器快取。          *
* - mod_rewrite:                                                      *
*   可以写入由 REST API 使用的，较短的网址。                          *
* - mod_version:                                                      *
*   可以针对 Apache 2.2 或 2.4 写入规则至 .htaccess 档案中。          *
* 你需要启用的模组有：                                                *
*                                                                     *
END
    modules_message_db => <<EOT,
***********************************************************************
* 存取数据库                                                          *
***********************************************************************
* 为了要存取资料库， Bugzilla 需要在你所执行的资料库中安装正确的      *
* "DBD" 模块。请在以下指令中找出正确的指令，以在资料库中安装适当      *
* 的模块。                                                            *
EOT
    modules_message_optional => <<EOT,
***********************************************************************
* 选用的模块                                                          *
***********************************************************************
* 有些 Perl 模块并非安装 Bugzilla 所必备，然而安装最新版本的某些      *
* 模块可以让你拥有额外的功能。                                        *
*                                                                     *
* 你不一定要安装的选用模块，以及它们所启用的功能名称列表如下。        *
* 在列表的下方则是安装每一模块所使用的指令。                          *
EOT
    modules_message_required => <<EOT,
***********************************************************************
* 必备的模块                                                          *
***********************************************************************
* Bugzilla 要求你安装某些 Perl 模块。原因可能是你并未安装这些模块，   *
* 或是版本过旧，需要更新。下方是安装这些模块所需要用的指令。          *
EOT

    module_found => "找到版本 v##ver##",
    module_not_found => "沒有找到",
    module_ok => 'OK',
    module_unknown_version => "找到未知的版本",
    mysql_innodb_disabled => <<'END',
你所安装的 MySQL 已停用 InnoDB 。
Bugzilla 需要 InnoDB 启用才能使用。
请启用后重新执行 checksetup.pl 。
END
    mysql_index_renaming => <<'END',
即将对旧的索引进行更名。更名完成所需要的时间估计是
##minutes## 分钟。一旦开始就不能中断。如果你想要取
消，请现在按 Ctrl-C ...
（等 45 秒 ...）
END
    mysql_utf8_conversion => <<'END',
警告：我们将把你所保存的资料格式转成 UTF-8 。这将会允许 Bugzilla 正确地
      保存及排序国际字符。然而，如果你的资料库中有任何非 UTF-8 的资料，
      这些资料※※将会被删除※※。所以，在你继续执行 checksetup.pl 前，
      如果你有任何非 UTF-8 的资料（或是你不确定），你应该马上按 Ctrl-C
      中断 checksetup.pl ，并执行 contrib/recode.pl 让所有在资料库中的
      资料转成 UTF-8 。你在继续之前也应该先备份。将会影响资料库中的所有
      table ，即使它们和 Bugzilla 无关。

      如果你曾经使用过比 Bugzilla 2.22 版本旧的 Bugzilla ，我们※强烈※
      建议你※现在※停止 checksetup.pl 并执行 contrib/recode.pl 。
END
    no_checksetup_from_cgi => <<END,
<!DOCTYPE html>
<html>
  <head>
    <title>无法从网页服务器执行 checksetup.pl</title>
  </head>

  <body>
    <h1>无法从网页服务器执行 checksetup.pl</h1>
    <p>
      你<b>不能</b>从浏览器执行此程式。要安裝或升級
      Bugzilla ，从命令列（例如 Linux 上的
      <kbd>bash</kbd> 、 <kbd>ssh</kbd> 或 Windows 上的
      <kbd>cmd.exe</kbd> 执行此程式），并依照所給予的指示进行。
    </p>

    <p>
      如要获得更多关于如何安装 Bugzilla 的信息，请至官方
      Bugzilla 网站
      <a href="http://www.bugzilla.org/docs/">阅读文件</a>。
    </p>
  </body>
</html>
END
    patchutils_missing => <<'END',
额外选项备注：如果你想要使用 Bugzilla 的「两个 patch 之间的 diff 」功能
（它需要 PatchReader 这个 Perl 模块），你应该从以下网址安装 patchutils
：

    http://cyberelk.net/tim/software/patchutils/
END
    no_such_module => "在 CPAN 上找不到叫 ##module## 的 Perl 模組。",
    template_precompile   => "預先编辑模版中...",
    template_removal_failed => <<END,
警告：无法移除目录 '##template_cache##' 。
      已将它更名为 '##deleteme##' 。如要释放软碟空间，
      请手动删除。
END
    template_removing_dir => "刪除存在的已編譯模版中...",
    update_cf_invalid_name =>
        "移除自订字段 '##field##' 中，因为它有无效的名称...",
    update_flags_bad_name => <<'END',
"##flag##" 不是有效的旗标名称。请把它更名为不含空白或逗号 (,)
的名称。
END
    update_nomail_bad => <<'END',
警告：以下用户列在 ##data##/nomail 中，但是这里没有帐号。
不符的部份已移至 ##data##/nomail.bad 中：
END
    update_summary_truncate_comment =>
        "摘要字段中的原始值长于 255 字符，因此在升级中被截断了。"
        . "原本的摘要是：\n\n##summary##",
    update_summary_truncated => <<'END',
警告：你有一些 bugs 的摘要长于 255 字符。已将这些 bugs 的摘要截断至
255 字符，而原本过长的摘要已复制一份至意见中。受到影响的 bug 编号是：
END
    update_quips => <<'END',
标语现在保存在数据库中，而不是存在外部文件。原先保存在
##data##/comments 的标语已被复制到资料库中，并将该文件更名为
##data##/comments.bak 。你只要确认标语有搬移成功，即可将该档
案删除。
END
    update_queries_to_tags => "填入新的 'tag' table 中：",
    webdot_bad_htaccess => <<END,
警告：依赖关系图表的图无法存取。
删除 ##dir##/.htaccess 后重新执行 checksetup.pl 。
END
);

1;
