.class public Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectChecker$SmartProtectUIManager;


# instance fields
.field private mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field private mIsTestMode:Z

.field private mMainActivity:Landroid/app/Activity;

.field private mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

.field private mTabEventListener:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

.field private mWarningInfoBar:Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->mMainActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->mTabEventListener:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;)Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->mWarningInfoBar:Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->mWarningInfoBar:Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;

    return-void
.end method

.method private getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->mIsTestMode:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->mCurrentTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->mMainActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabUtils;->getCurrentTab(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public isWarningInfoBarAdded()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->mWarningInfoBar:Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setSecurityDelegateForInfoBar(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$InfoBarSecurityDelegate;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->createInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->getInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;->setSecurityDelegate(Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer$InfoBarSecurityDelegate;)V

    :cond_1
    return-void
.end method

.method public showSuspiciousSiteWarningInfoBar(J)V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->isWarningInfoBarAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getInfoBarService()Lcom/sec/android/app/sbrowser/infobars/InfoBarService;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    new-instance v9, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->mMainActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->mMainActivityDelegate:Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->createInfoBarContainer()Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl$1;

    invoke-direct {v6, p0, v0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl$1;-><init>(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    move-object v2, v9

    move-wide v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;-><init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/common/model/main/MainActivityDelegate;Lcom/sec/android/app/sbrowser/infobars/InfoBarContainer;Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar$DismissCallback;J)V

    iput-object v9, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->mWarningInfoBar:Lcom/sec/android/app/sbrowser/infobars/SmartProtectWarningInfoBar;

    invoke-virtual {v1, v9}, Lcom/sec/android/app/sbrowser/infobars/InfoBarService;->addInfoBar(Lcom/sec/android/app/sbrowser/infobars/InfoBar;)Z

    new-instance p1, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl$2;

    invoke-direct {p1, p0}, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl$2;-><init>(Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/smart_protect/SmartProtectUIManagerImpl;->mTabEventListener:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->addEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V

    return-void
.end method
