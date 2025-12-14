.class public Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

.field private mContext:Landroid/content/Context;

.field private mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

.field private mTesting:Z

.field private mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mActivity:Landroid/app/Activity;

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getToolbar()Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->lambda$handleKeyCodeS$0(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method private addBookmark()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    const-string v2, "c_B"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->addBookmark(Z)Z

    move-result p0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private canSwipeTabPaging()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->canSwipeTabPaging()Z

    move-result p0

    return p0
.end method

.method private changeFontSize(Z)Z
    .locals 1

    const p0, 0x3d4ccccd    # 0.05f

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->getFontScaleFactor()F

    move-result p1

    add-float/2addr p1, p0

    const/high16 p0, 0x40000000    # 2.0f

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->getFontScaleFactor()F

    move-result p1

    sub-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    :goto_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->getInstance()Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/android/app/sbrowser/common/device/setting_preference/SettingPreference;->setTextScale(F)V

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, p1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "text size changed: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "si__KeyboardShortcuts"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setFontScaleFactor(F)V

    const/4 p0, 0x1

    return p0
.end method

.method private changeZoomValue(ZLjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p2, p1, p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->changeZoomValue(ZLandroid/view/View;)V

    const/4 p0, 0x1

    return p0
.end method

.method private closeCurrentTab(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->closeCurrentTab()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getMainViewAi()Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/ArtificialIntelligenceDelegate;->updateAiButtonStatus()V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private dismissZoomInfoBar()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->dismissZoomInfoBar()V

    return-void
.end method

.method private getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mTesting:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method

.method private getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object p0

    return-object p0
.end method

.method private handleKeyCodeS(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    const-string v2, "c_S"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "si__KeyboardShortcuts"

    if-nez p1, :cond_0

    const-string p0, "CTRL+S, currentTab == null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->savePageUtilityCheck()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "start of save pages"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object p2

    const-string v0, "https://maps.google.com/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/main_view/h;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/main_view/h;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 p0, 0x64

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->savePage(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private handleKeyDpadDown(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "DOWN"

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->hideVideoAssistant()V

    :cond_1
    return-void
.end method

.method private handleKeyNumber(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const-string v0, "c_1"

    :pswitch_1
    if-nez v0, :cond_0

    const-string v0, "c_2"

    :cond_0
    :pswitch_2
    if-nez v0, :cond_1

    const-string v0, "c_3"

    :cond_1
    :pswitch_3
    if-nez v0, :cond_2

    const-string v0, "c_4"

    :cond_2
    :pswitch_4
    if-nez v0, :cond_3

    const-string v0, "c_5"

    :cond_3
    :pswitch_5
    if-nez v0, :cond_4

    const-string v0, "c_6"

    :cond_4
    :pswitch_6
    if-nez v0, :cond_5

    const-string v0, "c_7"

    :cond_5
    :pswitch_7
    if-nez v0, :cond_6

    const-string v0, "c_8"

    :cond_6
    :pswitch_8
    if-nez v0, :cond_7

    const-string v0, "c_9"

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string v1, "9099"

    invoke-static {p1, v1, v0}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->setCurrentTabByNumber(Landroid/view/KeyEvent;)V

    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch -0x7ffffff8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private handleMenuOrKeyboardAction(Landroid/view/KeyEvent;I)Ljava/lang/Boolean;
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isNativePage()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getNativePage()Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/NativePage;->notifyKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "si__KeyboardShortcuts"

    const-string p1, "handleKeyEvent, isNativePage"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    :try_start_0
    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_APPLICATION:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_QPANEL_ON_OFF:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_SIP_ON_OFF:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_VOICESEARCH:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_EMAIL:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_USER:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/sec/sbrowser/spl/wrapper/MajoKeyEvent;->KEYCODE_APPSELECT:Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;

    invoke-virtual {v0}, Lcom/sec/sbrowser/spl/util/ReflectField$I$StaticFinal;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne p2, v0, :cond_3

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/sec/sbrowser/spl/util/FallbackException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, p2}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->handleKeyUpEvent(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, p2, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->handleKeyDownEvent(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private handleMultiTabKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->loadMultiTab()Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->loadMultiTab()Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->isMultiTabAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->loadMultiTab()Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/multi_tab/MultiTab;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private handleNoTabsKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->handleNoTabsKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private isFocusedItemEditable()Z
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFocusedNodeEditable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isMultiTabShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isMultiTabShowing()Z

    move-result p0

    return p0
.end method

.method private isNoTabsShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isNoTabsShowing()Z

    move-result p0

    return p0
.end method

.method private isSecretModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mTesting:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isSecretModeEnabled()Z

    move-result p0

    return p0
.end method

.method private isTabBarShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->isTabBarShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$handleKeyCodeS$0(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->savePage(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method private launchPrivacySettingToRemoveBrowsingData()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    const-string v2, "c_s_DEL"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "si__KeyboardShortcuts"

    const-string v1, "dispatchKeyEvent, CTRL SHIFT KEYCODE_DEL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/sec/android/app/sbrowser/settings/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v1, Lcom/sec/android/app/sbrowser/settings/ClearBrowsingDataFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sbrowser.settings.show_fragment"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "command"

    const-string v2, "delete_browsing_data"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0073

    invoke-static {p0, v1, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;ILandroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private onMoreMenuClicked(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->onMoreMenuClicked()V

    const/4 p0, 0x1

    return p0
.end method

.method public static onProvideKeyboardShortcuts(Ljava/util/List;Landroid/content/Context;Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;",
            ")V"
        }
    .end annotation

    new-instance v0, Ls/i;

    invoke-direct {v0, p1}, Ls/i;-><init>(Landroid/content/Context;)V

    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    const v3, 0x7f100012

    invoke-virtual {v2, v3, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v2, v0, Ls/i;->f:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_5

    invoke-virtual {v0, v5}, Ls/i;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v6}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const/16 v8, 0x42

    const/16 v9, 0x1e

    const/16 v10, 0x15

    const/4 v11, 0x2

    const/16 v12, 0x1000

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportTabSwitchByShortcut(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v8, 0x3d

    const/16 v11, 0x1001

    goto/16 :goto_3

    :pswitch_1
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->supportTabSwitchByShortcut(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    goto/16 :goto_4

    :cond_1
    move v8, v10

    :goto_1
    move v11, v12

    goto :goto_3

    :pswitch_2
    const/16 v8, 0x2e

    goto :goto_1

    :pswitch_3
    const/16 v8, 0x87

    :cond_2
    :goto_2
    move v11, v4

    goto :goto_3

    :pswitch_4
    const/16 v8, 0x2c

    goto :goto_1

    :pswitch_5
    const/4 v8, 0x3

    goto :goto_3

    :pswitch_6
    move v8, v9

    goto :goto_3

    :pswitch_7
    const/16 v8, 0x30

    goto :goto_1

    :pswitch_8
    const/16 v8, 0x88

    goto :goto_2

    :pswitch_9
    const/16 v8, 0x43

    goto :goto_2

    :pswitch_a
    move v8, v10

    goto :goto_3

    :pswitch_b
    const/16 v8, 0x16

    goto :goto_3

    :pswitch_c
    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/main_view/MainView;->isFindOnPageRunning()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_4

    :cond_3
    const/4 v11, 0x1

    goto :goto_3

    :pswitch_d
    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/main_view/MainView;->isFindOnPageRunning()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_4

    :pswitch_e
    const/16 v8, 0x86

    goto :goto_1

    :pswitch_f
    const/16 v8, 0x33

    goto :goto_1

    :pswitch_10
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DesktopModeUtils;->isDesktopMode()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    const/4 v8, 0x7

    goto :goto_1

    :pswitch_11
    move v8, v9

    goto :goto_1

    :goto_3
    new-instance v6, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortCutInfoItem;

    invoke-direct {v6, v7, v8, v11}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortCutInfoItem;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    new-instance p1, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcutCompat;

    invoke-direct {p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcutCompat;-><init>()V

    invoke-virtual {p1, v1, v3}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcutCompat;->getGroup(Landroid/app/Activity;Ljava/util/ArrayList;)Landroid/view/KeyboardShortcutGroup;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0b49
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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private openHistory()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    const-string v2, "c_H"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->isSecretModeEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    const/4 v0, 0x0

    const v2, 0x7f0b005f

    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->openSites(IZI)V

    return v1
.end method

.method private openSites(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    const/4 p1, 0x0

    const v0, 0x7f0b004f

    invoke-virtual {p0, p1, p1, v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->openSites(IZI)V

    const/4 p0, 0x1

    return p0
.end method

.method private prepareKeyEvent(Landroid/view/KeyEvent;I)Ljava/lang/Boolean;
    .locals 2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isInitialized()Z

    move-result p0

    const-string v0, "si__KeyboardShortcuts"

    if-nez p0, :cond_0

    const-string p0, "handleKeyEvent, !mIsInitialized"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "keyCode = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x40000054    # 2.00002f

    if-ne p2, p0, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isBlackberry()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p1, 0x42

    if-ne p0, p1, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private print()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    const-string v2, "c_P"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->print()V

    const/4 p0, 0x1

    return p0
.end method

.method private resetZoomValue()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    const-string v2, "c_0"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->setZoomValue(D)V

    const/4 p0, 0x1

    return p0
.end method

.method private setUrlToEditText()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    const-string v2, "c_E"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->inputUrl()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p0

    const-string v0, ""

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBar;->setUrlToEditText(Ljava/lang/String;Z)V

    return v1
.end method

.method private startFindOnPage()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    const-string v2, "c_F"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->isFindAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v0, ""

    invoke-interface {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->startFindOnPage(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private switchTabWithTabBar(ZZ)Z
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getCurrentVisibleTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->isTabBarShowing()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->enableHideToolbar(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Z)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getTabBar()Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->isSecretModeEnabled()Z

    move-result p0

    invoke-virtual {v0, p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_bar/TabBarController;->switchToNextTabButton(ZZZ)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public callOnClickForward()Z
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasNoTab()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->onForwardClicked()V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public callOnClickHome()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    const-string v2, "a_HOME"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->hasNoTab()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mAppMenu:Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/menu/AppMenu;->onHomeClicked()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public goBack(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    const-string v2, "DEL"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isFocusedNodeEditable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isFindOnPageRunning()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->goBack()V

    :cond_0
    return-void
.end method

.method public handleKeyDownEvent(ILandroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 5

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->handleKeyNumber(ILandroid/view/KeyEvent;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    const-string v1, "9099"

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->callOnClickHome()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :sswitch_1
    const-string p1, "a_D"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->inputUrl(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_2
    const-string p1, "a_B"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->openSites(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getSaLoggingDelegate()Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/logging/SALogging$ISALoggingDelegate;->getScreenID()Ljava/lang/String;

    move-result-object p1

    const-string p2, "a_RIGHT"

    invoke-static {p1, v1, p2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->callOnClickForward()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :sswitch_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string p2, "a_LEFT"

    invoke-static {p1, v1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onBackPressed()V

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :sswitch_5
    const-string p1, "F6"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->inputUrl(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string p2, "FORWARD"

    invoke-static {p1, v1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->finishFindOnPage()Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->callOnClickForward()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :sswitch_7
    const-string p1, "SEARCH"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->inputUrl(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_8
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :sswitch_9
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->goBack(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto/16 :goto_0

    :sswitch_a
    const-string p1, "DOWN"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->handleKeyDpadDown(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b
    const-string p1, "UP"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->handleKeyDpadDown(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_c
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->dismissZoomInfoBar()V

    goto/16 :goto_0

    :sswitch_d
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->launchPrivacySettingToRemoveBrowsingData()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_e
    const-string p1, "c_s_TAB"

    invoke-virtual {p0, v3, v4, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->switchTab(ZZLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :sswitch_f
    const-string p1, "c_s_0"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->openSites(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_10
    const-string p1, "c_ADD"

    invoke-direct {p0, v4, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->changeZoomValue(ZLjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_11
    const-string p1, "c_SUBTRACT"

    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->changeZoomValue(ZLjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_12
    const-string p1, "c_F4"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->closeCurrentTab(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :sswitch_13
    const-string p1, "c_PLUS"

    invoke-direct {p0, v4, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->changeZoomValue(ZLjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_14
    invoke-direct {p0, v4}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->changeFontSize(Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_15
    invoke-direct {p0, v3}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->changeFontSize(Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_16
    const-string p1, "c_EQUALS"

    invoke-direct {p0, v4, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->changeZoomValue(ZLjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_17
    const-string p1, "c_MINUS"

    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->changeZoomValue(ZLjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_18
    const-string p1, "c_TAB"

    invoke-virtual {p0, v4, v4, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->switchTab(ZZLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :sswitch_19
    const-string p1, "c_W"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->closeCurrentTab(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :sswitch_1a
    const-string p1, "c_T"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->launchNewTab(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :sswitch_1b
    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->handleKeyCodeS(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/view/KeyEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_1c
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->print()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_1d
    const-string p1, "c_N"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->launchNewTab(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :sswitch_1e
    const-string p1, "c_L"

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->inputUrl(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->openDownload()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_20
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->openHistory()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_21
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->startFindOnPage()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_22
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->setUrlToEditText()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_23
    const-string p1, "c_RIGHT"

    invoke-virtual {p0, v4, v3, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->switchTab(ZZLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :sswitch_24
    const-string p1, "c_LEFT"

    invoke-virtual {p0, v3, v3, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->switchTab(ZZLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "si__KeyboardShortcuts"

    const-string p1, "handleKeyDownEvent is not handled"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :sswitch_25
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->resetZoomValue()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ffffff9 -> :sswitch_25
        -0x7fffffeb -> :sswitch_24
        -0x7fffffea -> :sswitch_23
        -0x7fffffdf -> :sswitch_22
        -0x7fffffde -> :sswitch_21
        -0x7fffffdc -> :sswitch_20
        -0x7fffffda -> :sswitch_1f
        -0x7fffffd8 -> :sswitch_1e
        -0x7fffffd6 -> :sswitch_1d
        -0x7fffffd4 -> :sswitch_1c
        -0x7fffffd1 -> :sswitch_1b
        -0x7fffffd0 -> :sswitch_1a
        -0x7fffffcd -> :sswitch_19
        -0x7fffffc3 -> :sswitch_18
        -0x7fffffbb -> :sswitch_17
        -0x7fffffba -> :sswitch_16
        -0x7fffffb9 -> :sswitch_15
        -0x7fffffb8 -> :sswitch_14
        -0x7fffffaf -> :sswitch_13
        -0x7fffff7a -> :sswitch_12
        -0x7fffff70 -> :sswitch_25
        -0x7fffff64 -> :sswitch_11
        -0x7fffff63 -> :sswitch_10
        -0x5fffffd5 -> :sswitch_f
        -0x5fffffc3 -> :sswitch_e
        -0x5fffff90 -> :sswitch_d
        0x4 -> :sswitch_c
        0x13 -> :sswitch_b
        0x14 -> :sswitch_a
        0x43 -> :sswitch_9
        0x52 -> :sswitch_8
        0x54 -> :sswitch_7
        0x6f -> :sswitch_c
        0x7d -> :sswitch_6
        0x88 -> :sswitch_5
        0x40000015 -> :sswitch_4
        0x40000016 -> :sswitch_3
        0x4000001e -> :sswitch_2
        0x40000020 -> :sswitch_1
        0x4000007a -> :sswitch_0
    .end sparse-switch
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;)Ljava/lang/Boolean;
    .locals 5

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/utils/ImeUtil;->getMetaState(Landroid/view/KeyEvent;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->prepareKeyEvent(Landroid/view/KeyEvent;I)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->isMultiTabShowing()Z

    move-result v1

    const v2, -0x7fffffd6

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    const/16 v1, 0x43

    if-ne v0, v1, :cond_1

    return-object v4

    :cond_1
    const/16 v1, 0x42

    if-eq v0, v1, :cond_4

    const v1, 0x20000042

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_5

    const/16 v1, 0x52

    if-ne v0, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->handleMultiTabKeyEvent(Landroid/view/KeyEvent;)Z

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->handleMultiTabKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->handleMultiTabKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->isNoTabsShowing()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_6

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->handleNoTabsKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->handleMenuOrKeyboardAction(Landroid/view/KeyEvent;I)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    return-object v4
.end method

.method public handleKeyUpEvent(I)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->setImmersiveMode()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_1
    const-string p1, "F5"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->reload(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_2
    const-string p1, "MENU"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->onMoreMenuClicked(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->reopenClosedTab()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->onReaderButtonClicked()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->turnOnSecretMode()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_6
    const-string p1, "c_MENU"

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->onMoreMenuClicked(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_7
    const-string p1, "c_R"

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->reload(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :sswitch_8
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->addBookmark()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_0
    :goto_0
    const-string p0, "si__KeyboardShortcuts"

    const-string p1, "handleKeyUpEvent is not handled"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7fffffe2 -> :sswitch_8
        -0x7fffffd2 -> :sswitch_7
        -0x7fffffae -> :sswitch_6
        -0x5fffffd6 -> :sswitch_5
        -0x5fffffd2 -> :sswitch_4
        -0x5fffffd0 -> :sswitch_3
        0x52 -> :sswitch_2
        0x87 -> :sswitch_1
        0x8d -> :sswitch_0
    .end sparse-switch
.end method

.method public inputUrl(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/common/device/DeviceLayoutUtil;->isImmersiveMode(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->getLocationBar()Lcom/sec/android/app/sbrowser/omnibox/LocationBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/omnibox/LocationBarButtonLayout;->isEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->inputUrl()V

    const/4 p0, 0x1

    return p0
.end method

.method public launchNewTab(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    invoke-static {v0, v1, p1}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->isMultiTabShowing()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->isSecretModeEnabled()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->launchNewTab(Z)V

    return v0
.end method

.method public onReaderButtonClicked()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    const-string v2, "c_s_R"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isFindOnPageRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->onReaderButtonClicked()V

    const/4 p0, 0x1

    return p0
.end method

.method public openDownload()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    const-string v2, "c_J"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->clearFocusUrlBar()V

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mActivity:Landroid/app/Activity;

    const-class v3, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "IsFromMainMoreMenu"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0b005b

    invoke-static {p0, v2, v0}, Lcom/sec/android/app/sbrowser/common/utils/LargeScreenUtil;->startActivity(Landroid/app/Activity;ILandroid/content/Intent;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public reload(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    invoke-static {v0, v1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isOfflineModePage()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/toolbar/Toolbar;->showReconnectToOnlinePopup()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->reload()V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public reopenClosedTab()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    const-string v2, "c_s_T"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->isFindOnPageRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->isSecretModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->reopenClosedTab()V

    const/4 p0, 0x1

    return p0
.end method

.method public setCurrentTabByNumber(Landroid/view/KeyEvent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mTesting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getTabManager()Lcom/sec/android/app/sbrowser/tab_manager/TabManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    add-int/lit8 v1, p1, -0x7

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->isSecretModeEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getTabList(Z)Ljava/util/List;

    move-result-object p0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    const/4 p1, 0x1

    invoke-static {p1, p0}, LV0/c;->g(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    goto :goto_0

    :cond_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v1, :cond_4

    add-int/lit8 p1, p1, -0x8

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    goto :goto_0

    :cond_4
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p1

    if-eq p0, p1, :cond_5

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManager;->setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    :cond_5
    return-void
.end method

.method public setImmersiveMode()Z
    .locals 4

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mTesting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v2, "9099"

    const-string v3, "F11"

    invoke-static {v0, v2, v3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->setImmersiveMode()V

    return v1
.end method

.method public setTesting(Z)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mTesting:Z

    return-void
.end method

.method public setToolbar(Lcom/sec/android/app/sbrowser/toolbar/Toolbar;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mToolbar:Lcom/sec/android/app/sbrowser/toolbar/Toolbar;

    return-void
.end method

.method public switchTab(I)Z
    .locals 3

    const-string v0, "switchTab, direction: "

    const-string v1, "si__KeyboardShortcuts"

    invoke-static {p1, v0, v1}, Lt/b;->x(ILjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->canSwipeTabPaging()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/main_view/TabAnimator;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {v2}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->getHideToolbarManager()Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/sbrowser/hide_toolbar/HideToolbarManager;->enableHideToolbar(Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->scrollTab(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public switchTab(ZZLjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    invoke-static {v0, v1, p3}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_5

    invoke-interface {p3}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->isFocusedItemEditable()Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->isTabBarShowing()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->switchTabWithTabBar(ZZ)Z

    move-result p0

    return p0

    :cond_2
    if-nez p2, :cond_3

    return v0

    :cond_3
    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, -0x1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->switchTab(I)Z

    move-result p0

    return p0

    :cond_5
    :goto_1
    return v0
.end method

.method public turnOnSecretMode()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    const-string v1, "9099"

    const-string v2, "c_s_N"

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->w(Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->isSecretModeEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0, v1}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->launchNewTab(Z)V

    return v1

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/main_view/KeyboardShortcuts;->mMainViewInterface:Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/main_view/main_interface/MainViewInterface;->toggleSecretMode()V

    return v1
.end method
