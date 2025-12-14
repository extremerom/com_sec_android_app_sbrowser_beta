.class public Lcom/sec/terrace/browser/net/TinLoadingFailTracker;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;,
        Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/sec/terrace/browser/net/TinLoadingFailTracker;


# instance fields
.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mIsOnPowerSaveModeWhitelist:Z

.field private mIsPowerSaveMode:Z

.field private mMyNetworkState:Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mNetworkRequest:Landroid/net/NetworkRequest;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mReporter:Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;

.field private mRestrictBackgroundStatus:I

.field private mRestrictBackgroundStatusString:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "NOT_SUPPORTED"

    const-string v1, "DISABLED"

    const-string v2, "WHITELISTED"

    const-string v3, "ENABLED"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mRestrictBackgroundStatusString:[Ljava/lang/String;

    new-instance v0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$1;-><init>(Lcom/sec/terrace/browser/net/TinLoadingFailTracker;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mPowerManager:Landroid/os/PowerManager;

    new-instance v1, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;-><init>(Lcom/sec/terrace/browser/net/TinLoadingFailTracker;I)V

    iput-object v1, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mMyNetworkState:Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;

    new-instance v1, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;

    invoke-direct {v1, p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;-><init>(Lcom/sec/terrace/browser/net/TinLoadingFailTracker;)V

    iput-object v1, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mReporter:Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {v0, p0, v1}, Lorg/chromium/base/ContextUtils;->registerNonExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->registerNetworkCallback()V

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerApplicationStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;)V

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->updatePowerSaveState()V

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->updateRestrictBackgroundStatus()V

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mMyNetworkState:Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;

    invoke-static {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->d(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/net/TinLoadingFailTracker;)Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/net/TinLoadingFailTracker;)Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mMyNetworkState:Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;

    return-object p0
.end method

.method private getCurrentTerrace()Lcom/sec/terrace/Terrace;
    .locals 0

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/sec/terrace/browser/net/TinLoadingFailTracker;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->initialize()Lcom/sec/terrace/browser/net/TinLoadingFailTracker;

    move-result-object v0

    return-object v0
.end method

.method public static initialize()Lcom/sec/terrace/browser/net/TinLoadingFailTracker;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->sInstance:Lcom/sec/terrace/browser/net/TinLoadingFailTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;

    invoke-direct {v0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;-><init>()V

    sput-object v0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->sInstance:Lcom/sec/terrace/browser/net/TinLoadingFailTracker;

    :cond_0
    sget-object v0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->sInstance:Lcom/sec/terrace/browser/net/TinLoadingFailTracker;

    return-object v0
.end method

.method private registerNetworkCallback()V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mNetworkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v1, v2, v0}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_0
    :goto_0
    return-void
.end method

.method public static reportLoadFail(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->getInstance()Lcom/sec/terrace/browser/net/TinLoadingFailTracker;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->reportLoadFailInternal(ILjava/lang/String;)V

    return-void
.end method

.method private reportLoadFailInternal(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mMyNetworkState:Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;

    invoke-static {v0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->e(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mMyNetworkState:Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;

    invoke-static {v0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->d(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mReporter:Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;

    invoke-static {p0, p1, p2}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->a(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;ILjava/lang/String;)V

    return-void
.end method

.method private updatePowerSaveState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mIsPowerSaveMode:Z

    iget-object v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mPowerManager:Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mIsOnPowerSaveModeWhitelist:Z

    return-void
.end method

.method private updateRestrictBackgroundStatus()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getRestrictBackgroundStatus()I

    move-result v0

    iput v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mRestrictBackgroundStatus:I

    return-void
.end method


# virtual methods
.method public onApplicationStateChange(I)V
    .locals 4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mReporter:Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;

    invoke-static {v0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->c(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;)V

    iget-boolean v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mIsPowerSaveMode:Z

    const-string v1, "TinLoadingFailTracker"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "LoaderLog PowerSaveMode:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mIsPowerSaveMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " OnWhitelist:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mIsOnPowerSaveModeWhitelist:Z

    invoke-static {v1, v0, v2}, Lcom/sec/android/app/sbrowser/autofill/password/k;->A(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    :cond_0
    iget v0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mRestrictBackgroundStatus:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "LoaderLog BG data restrict status:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mRestrictBackgroundStatusString:[Ljava/lang/String;

    iget v3, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mRestrictBackgroundStatus:I

    aget-object v2, v2, v3

    invoke-static {v0, v2, v1}, Landroidx/recyclerview/widget/P;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->getCurrentTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->getCurrentTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->isJavaScriptEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "LoaderLog  Javascript Disabled"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mReporter:Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;

    invoke-static {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;->b(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$Reporter;)V

    :cond_3
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->updatePowerSaveState()V

    iget-object p1, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mMyNetworkState:Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;

    invoke-static {p1}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->f(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;)V

    :cond_0
    const-string p1, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->updateRestrictBackgroundStatus()V

    iget-object p0, p0, Lcom/sec/terrace/browser/net/TinLoadingFailTracker;->mMyNetworkState:Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;

    invoke-static {p0}, Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;->f(Lcom/sec/terrace/browser/net/TinLoadingFailTracker$MyNetworkState;)V

    :cond_1
    return-void
.end method
