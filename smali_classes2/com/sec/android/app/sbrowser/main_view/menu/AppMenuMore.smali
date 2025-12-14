.class public Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;
.super Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;
.source "SourceFile"


# instance fields
.field private mCloseAllDialog:Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;

.field private mTextSizeDialog:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

.field private mZoomInOutPopup:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    new-instance p4, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;

    invoke-direct {p4, p2, p1, p3}, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V

    iput-object p4, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mToolsMenu:Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;

    return-void
.end method

.method private getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private isNoTabInCurrentMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->isNoTabInCurrentMode()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$askExit$0(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->doFinish(Z)V

    return-void
.end method

.method private synthetic lambda$askExit$1(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateAssistantMenuIfNecessary()V

    return-void
.end method

.method private loggingForNightMode(Z)V
    .locals 4

    if-eqz p1, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HHmm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit16 v0, v0, 0x12c

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1035"

    invoke-static {v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLogWithoutScreenID(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "2049"

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendStatusLog(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_1

    const-string p1, "1"

    goto :goto_0

    :cond_1
    const-string p1, "0"

    :goto_0
    const-string v0, "2462"

    invoke-static {p0, v0, p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onDebugOpenFile()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    const/16 v1, 0x385

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic r(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->lambda$askExit$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private reloadUsingMyanmarZawgyi(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setZawgyiLanguageEnable(Z)V

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->reload()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "AppMenuMore"

    const-string p1, "reloadUsingMyanmarZawgyi, tab is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic s(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->lambda$askExit$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private shareUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 2

    const-string v0, "AppMenuMore"

    const-string v1, "shareUrl"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, p0, p2, p1}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->setShareExtras(Landroid/os/Bundle;)Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->setChooserExtras(Landroid/os/Bundle;)Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->setFromTools(Z)Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/utils/ShareParams$Builder;->build()Lcom/sec/android/app/sbrowser/common/utils/ShareParams;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->showShareDialog(Lcom/sec/android/app/sbrowser/common/utils/ShareParams;)Z

    move-result p0

    return p0
.end method

.method private showShare(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasNoTab()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    if-nez p2, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Lcom/sec/terrace/Terrace;->getSanitizedUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->shareUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_3
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->shareUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_4
    :goto_1
    return v2
.end method

.method private startNotificationFragmentOnSettingActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/sec/android/app/sbrowser/settings/notifications/SitesNotificationPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sbrowser.settings.show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0073

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;ILandroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic t(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->mZoomInOutPopup:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    return-void
.end method


# virtual methods
.method public askExit()V
    .locals 4

    const-string v0, "AppMenuMore"

    const-string v1, "askExit called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isInLockTaskMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "askExit, isInLockTaskMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->finishOrMoveTaskToBack()V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isChm()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "askExit, CMCC"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lm/k;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mContext:Landroid/content/Context;

    const v2, 0x7f1501c5

    invoke-direct {v0, v1, v2}, Lm/k;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f1404c7

    invoke-virtual {v0, v1}, Lm/k;->a(I)V

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/menu/h;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/main_view/menu/h;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;I)V

    const v2, 0x7f140869

    invoke-virtual {v0, v2, v1}, Lm/k;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/main_view/menu/h;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/sbrowser/main_view/menu/h;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;I)V

    const p0, 0x7f1402ac

    invoke-virtual {v0, p0, v1}, Lm/k;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lm/k;

    move-result-object p0

    invoke-virtual {p0}, Lm/k;->create()Lm/l;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->setSEP10Dialog(Landroid/app/Dialog;)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mContext:Landroid/content/Context;

    const-string v2, "close_all_dialog_preference"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "close_all_dialog_dont_show_again"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "askExit, dontShowAgain"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->isCloseAllTabsEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->doFinish(Z)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->dismissCloseAllDialog()V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore$2;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore$2;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;Landroid/content/SharedPreferences;)V

    invoke-direct {v0, v2, v3}, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;-><init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog$CloseAllDialogListener;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->mCloseAllDialog:Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;->show()V

    return-void
.end method

.method public changeZoomValue(ZLandroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->changeZoomValue(ZLandroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public desktopView()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->isNoTabInCurrentMode()Z

    move-result v0

    const-string v1, "AppMenuMore"

    if-eqz v0, :cond_0

    const-string p0, "desktopView, isNoTabInCurrentMode"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getFocusedTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUseDesktopUserAgent()Z

    move-result v2

    xor-int/lit8 v3, v2, 0x1

    invoke-interface {v0, v3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setCustomUserAgentIfNeeded(Z)V

    xor-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setUseDesktopUserAgent(ZZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    xor-int/lit8 v3, v2, 0x1

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordMoreDesktopView(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "desktopView, DesktopUA="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getUserAgentOverride()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "desktopView, MobileUA="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/terrace/TerraceHelper;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewToolbar()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;->onPcVersionChanged()V

    return-void

    :cond_5
    :goto_2
    const-string p0, "desktopView, tab == null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dismissCloseAllDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->mCloseAllDialog:Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;->dismissDialog()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->mCloseAllDialog:Lcom/sec/android/app/sbrowser/main_view/menu/CloseAllDialog;

    return-void
.end method

.method public dismissTextSizeDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->mTextSizeDialog:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->mTextSizeDialog:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

    return-void
.end method

.method public dismissZoomDialog(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->mZoomInOutPopup:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->dismissPopup(Z)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->mZoomInOutPopup:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    :cond_0
    return-void
.end method

.method public dismissZoomInfoBar()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->dismissZoomInfoBar()V

    :cond_1
    :goto_0
    return-void
.end method

.method public doExit()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->updateAssistantMenuIfNecessary()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1203"

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/PromptExitUtil;->getEnablePromptToExit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->askExit()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->doFinish(Z)V

    :goto_0
    return-void
.end method

.method public findOnPage()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->isNoTabInCurrentMode()Z

    move-result v0

    const-string v1, "AppMenuMore"

    if-eqz v0, :cond_0

    const-string p0, "findOnPage, isNoTabInCurrentMode"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v0, ""

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->startFindOnPage(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "findOnPage, tab == null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getTextSizeDialog()Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->mTextSizeDialog:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->mTextSizeDialog:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->mTextSizeDialog:Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

    return-object p0
.end method

.method public handleNightMode()V
    .locals 2

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isSystemSupportNightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object p0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isContentDarkModeEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->setContentDarkModeEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->isNightModeEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/common/device/DarkModeUtils;->setNightModeEnabled(Z)V

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->loggingForNightMode(Z)V

    :goto_0
    return-void
.end method

.method public launchSettingsActivity(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "browsing_assist"

    const/4 v1, 0x1

    const-string v2, "settings_privacy"

    const-string v3, "settings_appearance"

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setApplySettingsValue(Z)V

    new-instance v4, Landroid/content/Intent;

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    const-class v7, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {v4, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mTabDelegate:Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;

    invoke-interface {v6}, Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;->getCurrentUrl()Ljava/lang/String;

    move-result-object v6

    const-string v7, "sbrowser.settings.current_url"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "host"

    const/4 v7, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_0
    move v5, v7

    goto :goto_1

    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    packed-switch v5, :pswitch_data_0

    const-string p1, "AppMenuMore"

    const-string v0, "[onCloseInternetClicked] Close all tabs"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_0
    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :pswitch_1
    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :pswitch_2
    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_2
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/device/DeviceFeatureUtils;->setMainScreenWidthDp(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setSettingLayout(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    const p1, 0x7f0b0073

    const/16 v0, 0xa0

    invoke-static {p0, p1, v4, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivityForResult(Landroid/app/Activity;ILandroid/content/Intent;I)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4c108e00 -> :sswitch_2
        -0x4bcd4c94 -> :sswitch_1
        -0x237ce71f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public loggingForAskExit(ZZ)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "askExit, onPositiveButtonClicked, closeAllTabs = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", dontShowAgain = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppMenuMore"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    const/4 p0, 0x2

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    :goto_0
    const-string p1, "1017"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "201"

    invoke-static {p2, p1, p0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAddTo()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    const v0, 0x7f0b0046

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->showAddToDialog(I)Z

    return-void
.end method

.method public onAppMenuLongClick()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/main_view/menu/CustomizeToolbarInitializer;->initialize()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "host"

    const-string v2, "toolbar_custom"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startNonPopOverActivity(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public onDownload()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "IsFromMainMoreMenu"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b005b

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;ILandroid/content/Intent;)V

    return-void
.end method

.method public onExtension()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuHidden;->launchExtensionsActivity()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordMoreExtensions(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V

    return-void
.end method

.method public onHistory()V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f0b005f

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->startSitesActivity(IZI)V

    return-void
.end method

.method public onLaunchNotificationsClicked()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordNotificationsClicked(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;Landroid/content/Context;)V

    const-string v0, "AppMenuMore"

    const-string v1, "[NotificationManager] Launching notifications"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->startNotificationFragmentOnSettingActivity()V

    return-void
.end method

.method public onMyanmar()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->isPageUsesMyanmarUnicode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->reloadUsingMyanmarZawgyi(Z)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->setPageUsesMyanmarUnicode(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewToolbar()Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/main/IMainViewToolbar;->onMyanmarFontChanged()V

    return-void
.end method

.method public onNewGuiStateChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mToolsMenu:Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/ToolsMenu;->onNewGuiStateChanged()V

    return-void
.end method

.method public onPrivacy()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "host"

    const-string v2, "settings_privacy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b006c

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;ILandroid/content/Intent;)V

    return-void
.end method

.method public onSavedPage()V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7f0b0070

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->startSitesActivity(IZI)V

    return-void
.end method

.method public onSetting()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->launchSettingsActivity(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/logging/RecordUserAction;->recordMoreSettings(Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;)V

    return-void
.end method

.method public onShare()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->showShare(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    return-void
.end method

.method public onTextSize()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainActivityListener:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;->dismissTextSizeDialogInOtherInstance()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->getTextSizeDialog()Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const v2, 0x7f0b007b

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMenuPopupAnchorView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->setAnchor(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->getTextSizeDialog()Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/main_view/menu/TextSizeDialog;->show(Landroid/content/Context;)V

    return-void
.end method

.method public openContentBlocker()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/SystemSettings;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->getInstance()Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/sbrowser/common/blockers/ContentBlockStatus;->isContentBlockMenuEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sec/android/app/sbrowser/extensions/ExtensionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "SBrowserMainActivityContextId"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/sbrowser/blockers/content_block/view/ContentBlockPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sbrowser.extensions.show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "sbrowser.extensions.show_fragment_type"

    const-string v2, "singleTask"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0057

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public print()V
    .locals 3

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/device/DebugSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/common/device/DebugSettings;->isDebugOpenDocumentEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->onDebugOpenFile()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const-string v1, "AppMenuMore"

    if-nez v0, :cond_1

    const-string p0, "Print shortcut doesn\'t work if current tab is null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v2, "about:blank"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->isNoTabInCurrentMode()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->print()V

    :cond_4
    return-void

    :cond_5
    :goto_0
    const-string p0, "Print shortcut not works on QA, blank page"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public restoreZoomValueIfNeeded(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isZoomApplyToThisTabOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->mZoomInOutPopup:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->restoreZoomValueIfNeeded(Z)V

    :cond_0
    return-void
.end method

.method public setZoomValue(D)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->setConfirmedZoomValue(D)V

    :cond_1
    :goto_0
    return-void
.end method

.method public shareVia(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "[shareVia]"

    const-string v1, "AppMenuMore"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMenuInterface:Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/menu/MenuInterface;->isShareMenuAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMultiTabShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTitle()Ljava/lang/String;

    move-result-object v0

    const-string v2, "resultType"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "result_type_success"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-static {p0, p1, v1, v0}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->startActivityForShare(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    invoke-static {p0, v0, v1}, Lcom/sec/android/app/sbrowser/utils/ShareHelper;->showShareDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string p0, "[shareVia] Share Menu is not available"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showZoomInOutPopup()V
    .locals 8

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/sec/terrace/Terrace;->getZoomPercent()I

    move-result v4

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isZoomApplyToThisTabOnly()Z

    move-result v5

    new-instance v1, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuToolbar;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const v6, 0x7f0b0e86

    invoke-interface {v2, v6}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMenuPopupAnchorView(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore$1;

    invoke-direct {v7, p0, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore$1;-><init>(Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;-><init>(Landroid/app/Activity;IZLandroid/view/View;Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup$Listener;)V

    iput-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenuMore;->mZoomInOutPopup:Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/zoom_in_out/ZoomInOutPopup;->show()V

    :cond_2
    :goto_0
    return-void
.end method
