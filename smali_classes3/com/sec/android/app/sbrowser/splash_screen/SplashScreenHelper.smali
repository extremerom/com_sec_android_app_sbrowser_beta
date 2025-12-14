.class public Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mLayout:Landroid/view/ViewGroup;

.field private mSplashScreenManager:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;->mLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method private initializeIfNeeded()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;->mSplashScreenManager:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;->mSplashScreenManager:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mSplashScreenManager = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;->mSplashScreenManager:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SplashScreenHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetMultiTabCount(Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;)V
    .locals 0

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->resetMultiTabCount()V

    :cond_0
    return-void
.end method

.method private restoreMultiTabCount(Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;)V
    .locals 0

    instance-of p0, p1, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/main_view/MainViewPhone;->restoreMultiTabCount()V

    :cond_0
    return-void
.end method


# virtual methods
.method public hideSplashScreenIfNeeded()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;->mSplashScreenManager:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->hideSplashScreenIfNeeded()V

    :cond_0
    return-void
.end method

.method public prepare()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;->initializeIfNeeded()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;->mSplashScreenManager:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->prepare(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public showSplashScreenIfReady()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;->mSplashScreenManager:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->showSplashScreenIfReady()V

    return-void
.end method

.method public storeSplashScreenIfNeeded(Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;)V
    .locals 2

    const-string v0, "SplashScreenHelper"

    const-string v1, "storeSplashScreenIfNeeded "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;->initializeIfNeeded()V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;->resetMultiTabCount(Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;->mSplashScreenManager:Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenManager;->storeSplashScreenIfNeeded(Landroid/view/ViewGroup;Lcom/sec/android/app/sbrowser/common/model/tab/TabDelegate;)V

    invoke-direct {p0, p2}, Lcom/sec/android/app/sbrowser/splash_screen/SplashScreenHelper;->restoreMultiTabCount(Lcom/sec/android/app/sbrowser/main_view/MainViewLayout;)V

    return-void
.end method
