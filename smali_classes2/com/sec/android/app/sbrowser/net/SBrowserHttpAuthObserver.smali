.class public Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/TerraceHttpAuthHandler$HttpAuthObserver;


# static fields
.field private static sInstance:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;


# instance fields
.field private mIsTestMode:Z

.field private mSBrowserAuthHandler:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;

.field private mTestTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;->sInstance:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;->sInstance:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;

    :cond_0
    sget-object v0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;->sInstance:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;

    return-object v0
.end method


# virtual methods
.method public closeDialog()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;->mSBrowserAuthHandler:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;->mSBrowserAuthHandler:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;

    :cond_0
    return-void
.end method

.method public onHttpAuthRequest(Landroid/content/Context;Lcom/sec/terrace/browser/TerraceHttpAuthHandler;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;->mIsTestMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;->mTestTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabUtils;->getCurrentTab(Landroid/app/Activity;)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;->mSBrowserAuthHandler:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->getTabID()I

    move-result v1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getTabId()I

    move-result v0

    if-ne v1, v0, :cond_1

    return v2

    :cond_1
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->get(Landroid/content/Context;Lcom/sec/terrace/browser/TerraceHttpAuthHandler;)Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;->mSBrowserAuthHandler:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->createDialog()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthObserver;->mSBrowserAuthHandler:Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/net/SBrowserHttpAuthHandler;->show()V

    return v2
.end method
