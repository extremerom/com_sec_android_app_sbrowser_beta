.class public Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mIsMultiTabLaunchedByBixby:Z

.field private final mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private final mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mIsMultiTabLaunchedByBixby:Z

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->lambda$handleCapsuleIntent$0(Landroid/content/Intent;)V

    return-void
.end method

.method private accessWebsite(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "si__MainViewBixby"

    const-string v1, "[accessWebsite]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "extra_access_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->loadUrl(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->finishEditMode()V

    return-void
.end method

.method private addBookmark()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->addBookmark()V

    return-void
.end method

.method private addBookmarkByBixby()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "si__MainViewBixby"

    const-string v0, "addBookmarkByBixby - ignored in Tabs"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->savePageUtilityCheck()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mActivity:Landroid/app/Activity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getView()Landroid/view/View;

    move-result-object p0

    const v1, 0x7f140648

    invoke-static {v0, p0, v1}, Lcom/sec/android/app/sbrowser/common/utils/SnackbarUtil;->show(Landroid/content/Context;Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->addBookmark()V

    :goto_0
    return-void
.end method

.method private addToHomescreen()V
    .locals 2

    const-string v0, "si__MainViewBixby"

    const-string v1, "addToHomescreen()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getAppMenu()Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;->addShortcut()V

    return-void
.end method

.method private addToQuickaccess()V
    .locals 2

    const-string v0, "si__MainViewBixby"

    const-string v1, "addToQuickaccess()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getAppMenu()Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;->addQuickAccess()V

    return-void
.end method

.method public static synthetic b(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->lambda$handleToggleSecretMode$3()V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->lambda$readAloudWebpage$7(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic d(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->lambda$translateWebpage$6(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic e(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->lambda$openTabs$2(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V

    return-void
.end method

.method public static synthetic f(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->lambda$openTabs$1(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V

    return-void
.end method

.method private finishEditMode()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishEditMode()V

    return-void
.end method

.method public static synthetic g(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->lambda$handleCloseCurrentTab$5()V

    return-void
.end method

.method private getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->lambda$handleCloseAllTabs$4()V

    return-void
.end method

.method private handleCapsuleIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 5

    const/4 v0, 0x4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v2

    const-string v3, "[handleCapsuleIntent] action: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "si__MainViewBixby"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_OPEN_DOWNLOAD_HISTORY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x16

    goto/16 :goto_0

    :sswitch_1
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_SUMMARIZE_WEBSITE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x15

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_EDIT_ADDRESS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x14

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_SAVE_WEBPAGE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_4
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_SHARE_VIA"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_5
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_OPEN_NEW_TAB"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_6
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_ADD_BOOKMARK"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_7
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_ADD_TO_QUICKACCESS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_8
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_SEARCH_KEYWORD"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_9
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_OPEN_TURN_ON_SECRET_MODE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_a
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_READ_WEBPAGE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_b
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_RELOAD_WEBSITE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_TRANSLATE_WEBPAGE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_d
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_ACCESS_WEBSITE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_e
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_SAVE_SCREEN_TO_NOTE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_f
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_CLOSE_CURRENT_TAB"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    goto :goto_0

    :cond_10
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_10
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_OPEN_BOOKMARK"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_11
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_OPEN_HISTORY"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_12
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_OPEN_TABS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_0

    :cond_13
    move v3, v0

    goto :goto_0

    :sswitch_13
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_CLOSE_ALL_TABS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_14
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_OPEN_SAVEDPAGES"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_0

    :cond_15
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_15
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_OPEN_SETTINGS"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_0

    :cond_16
    const/4 v3, 0x1

    goto :goto_0

    :sswitch_16
    const-string v4, "com.sec.android.app.sbrowser.beta.INTENT_ADD_TO_HOMESCREEN"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_0

    :cond_17
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->openDownloadHistory()V

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->summarizeWebsite()V

    goto/16 :goto_1

    :pswitch_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewToolbar()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;->requestFocusWithKeyboard()V

    goto/16 :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->saveWebpage()V

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->openNewTab()V

    goto/16 :goto_1

    :pswitch_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->addBookmarkByBixby()V

    goto/16 :goto_1

    :pswitch_6
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->addToQuickaccess()V

    goto :goto_1

    :pswitch_7
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->searchKeyword(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_8
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->handleToggleSecretMode()V

    goto :goto_1

    :pswitch_9
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->readAloudWebpage(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_a
    invoke-direct {p0, v2}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->reloadWebsite(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_1

    :pswitch_b
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->translateWebpage(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_c
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->accessWebsite(Landroid/content/Intent;)V

    goto :goto_1

    :pswitch_d
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/sec/android/app/sbrowser/main_view/h;

    invoke-direct {v2, v0, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :pswitch_e
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->handleCloseCurrentTab()V

    goto :goto_1

    :pswitch_f
    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->BOOKMARKS:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->openSites(I)V

    goto :goto_1

    :pswitch_10
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->openHistory()V

    goto :goto_1

    :pswitch_11
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->handleOpenTabs()V

    goto :goto_1

    :pswitch_12
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->handleCloseAllTabs()V

    goto :goto_1

    :pswitch_13
    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->SAVEPAGES:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->openSites(I)V

    goto :goto_1

    :pswitch_14
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getAppMenu()Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;->launchSettingsActivity(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_15
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->addToHomescreen()V

    :goto_1
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7d274557 -> :sswitch_16
        -0x527c9df0 -> :sswitch_15
        -0x4908a7b6 -> :sswitch_14
        -0x4785ae95 -> :sswitch_13
        -0x3b042015 -> :sswitch_12
        -0x31443719 -> :sswitch_11
        -0x3077b4dd -> :sswitch_10
        -0x2c77b4c0 -> :sswitch_f
        -0x292b1d03 -> :sswitch_e
        -0x212623f8 -> :sswitch_d
        -0x196bd2b6 -> :sswitch_c
        -0xb645cc3 -> :sswitch_b
        -0xa1c907e -> :sswitch_a
        0x6ff767 -> :sswitch_9
        0xa5459a -> :sswitch_8
        0x1bda093 -> :sswitch_7
        0x420c89c -> :sswitch_6
        0x58b38a9 -> :sswitch_5
        0x8d59706 -> :sswitch_4
        0x484d0069 -> :sswitch_3
        0x562b0807 -> :sswitch_2
        0x58de3ef5 -> :sswitch_1
        0x7baf40aa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_d
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleCloseAllTabs()V
    .locals 2

    const-string v0, "si__MainViewBixby"

    const-string v1, "[handleCloseAllTabs] INTENT_CLOSE_ALL_TABS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->isMultiTabShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mIsMultiTabLaunchedByBixby:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->closeAllTabsForBixby()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/B;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/B;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->openTabs(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V

    :goto_0
    return-void
.end method

.method private handleCloseCurrentTab()V
    .locals 2

    const-string v0, "si__MainViewBixby"

    const-string v1, "[handleCloseAllTabs] INTENT_CLOSE_CURRENT_TAB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->isMultiTabShowing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mIsMultiTabLaunchedByBixby:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->closeCurrentTabForBixby()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/B;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/B;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->openTabs(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V

    :goto_0
    return-void
.end method

.method private handleOpenTabs()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "si__MainViewBixby"

    const-string v1, "[handleOpenTabs] INTENT_OPEN_TABS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->openTabs(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V

    return-void
.end method

.method private handleToggleSecretMode()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "si__MainViewBixby"

    const-string v1, "[handleToggleSecretMode] INTENT_TURN_ON_SECRET_MODE"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->isTabBarEnabled(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->isMultiTabShowing()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mIsMultiTabLaunchedByBixby:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->toggleSecretMode()V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/B;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/B;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->openTabs(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V

    :goto_0
    return-void
.end method

.method private isMultiTabShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMultiTabShowing()Z

    move-result p0

    return p0
.end method

.method private isSecretModeEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$handleCapsuleIntent$0(Landroid/content/Intent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getAppMenu()Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/common/model/main/menu/IAppMenu;->shareVia(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$handleCloseAllTabs$4()V
    .locals 2

    const-string v0, "si__MainViewBixby"

    const-string v1, "[handleCloseAllTabs] onMultiTabLaunched"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mIsMultiTabLaunchedByBixby:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->closeAllTabsForBixby()V

    return-void
.end method

.method private synthetic lambda$handleCloseCurrentTab$5()V
    .locals 2

    const-string v0, "si__MainViewBixby"

    const-string v1, "[handleCloseCurrentTab] onMultiTabLaunched"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mIsMultiTabLaunchedByBixby:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->closeCurrentTabForBixby()V

    return-void
.end method

.method private synthetic lambda$handleToggleSecretMode$3()V
    .locals 2

    const-string v0, "si__MainViewBixby"

    const-string v1, "[handleToggleSecretMode] onMultiTabLaunched"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mIsMultiTabLaunchedByBixby:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->toggleSecretMode()V

    return-void
.end method

.method private synthetic lambda$openTabs$1(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mIsMultiTabLaunchedByBixby:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->launchMultiTabStack(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V

    return-void
.end method

.method private synthetic lambda$openTabs$2(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/C;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/main_view/C;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$readAloudWebpage$7(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getReadAloudController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, v0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/IReadAloudController;->onReadAloudWebpage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$translateWebpage$6(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->onTranslateWebpage(Ljava/lang/String;)V

    return-void
.end method

.method private launchNewTab(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->launchNewTab(Z)V

    return-void
.end method

.method private loadUrl(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->isSecretModeEnabled()Z

    move-result v4

    sget-object v5, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;->FROM_EXTERNAL_APP:Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v1, p1

    invoke-interface/range {v0 .. v6}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->loadUrlWithNewTab(Ljava/lang/String;Ljava/lang/String;ZZLcom/sec/android/app/sbrowser/common/model/sbrowser_tab/TabLaunchType;Z)V

    return-void
.end method

.method private openDownloadHistory()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->isSecretModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b005b

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private openHistory()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->isSecretModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->HISTORY:Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/model/sites/SitePages;->getValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->openSites(I)V

    :cond_0
    return-void
.end method

.method private openNewTab()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->openNewTabOnTabManager()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->isSecretModeEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->launchNewTab(Z)V

    :goto_0
    return-void
.end method

.method private openNewTabOnTabManager()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->openNewTabOnTabManager()V

    return-void
.end method

.method private openSites(I)V
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mNewTabHandler:Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;

    const/4 v0, 0x0

    const v1, 0x7f0b004f

    invoke-interface {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/NewTabHandler;->openSites(IZI)V

    return-void
.end method

.method private openTabs(Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;)V
    .locals 2
    .param p1    # Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mIsMultiTabLaunchedByBixby:Z

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;->onMultiTabLaunched()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/C;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/app/sbrowser/main_view/C;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;Lcom/sec/android/app/sbrowser/multi_tab/MultiTabLaunchCallback;I)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->waitingForBitmapManager(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private openTranslateSettings()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mActivity:Landroid/app/Activity;

    const v0, 0x7f0b0073

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/settings/utils/SettingsUtils;->openTranslateSettings(Landroid/app/Activity;I)V

    return-void
.end method

.method private readAloudWebpage(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "si__MainViewBixby"

    const-string v1, "readAloudWebpage()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "language_code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMainViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/A;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/main_view/A;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;Ljava/lang/String;I)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private reloadWebsite(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->reload()V

    :cond_0
    return-void
.end method

.method private savePageUtilityCheck()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->savePageUtilityCheck()Z

    move-result p0

    return p0
.end method

.method private saveWebpage()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isSavedPageUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onSaveWebPage()V

    :cond_1
    :goto_0
    return-void
.end method

.method private searchKeyword(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "si__MainViewBixby"

    const-string v1, "[searchKeyword]"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "extra_search_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->loadUrl(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->finishEditMode()V

    return-void
.end method

.method private summarizeWebsite()V
    .locals 2

    const-string v0, "si__MainViewBixby"

    const-string v1, "summarizeWebsite()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMainViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->getSummarizeController()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ISummarizeController;->onSummarizeWebsite()V

    :cond_0
    return-void
.end method

.method private translateWebpage(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "si__MainViewBixby"

    const-string v1, "translateWebpage()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isSupportMainSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/extensions/SixStatus;->isTranslatorEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->openTranslateSettings()V

    return-void

    :cond_0
    const-string v0, "language_code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMainViewShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->getInstance()Lcom/sec/android/app/sbrowser/extensions/SixManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/extensions/SixManager;->updateDefaultTranslatorStatus()Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getInstanceId()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getUserLanguage(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/A;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v2}, Lcom/sec/android/app/sbrowser/main_view/A;-><init>(Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;Ljava/lang/String;I)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    return-void
.end method

.method private waitingForBitmapManager(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->waitingForBitmapManager(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public handleBixbyIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    const-string v0, "extra_by_capsule"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->handleCapsuleIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public isMultiTabLaunchedByBixby()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/main_view/MainViewBixby;->mIsMultiTabLaunchedByBixby:Z

    return p0
.end method
