.class public Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$Listener;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mHandoffObserver:Landroid/database/ContentObserver;

.field private mListener:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$Listener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$Listener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$1;-><init>(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->mHandoffObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->mListener:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$Listener;

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->lambda$sendData$0(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic b(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->mActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;)Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$Listener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->mListener:Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$Listener;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->onUrlOnlyReceived(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->onWebStateReceived(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic f(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->requestSyncHandoffData()V

    return-void
.end method

.method private isOtherInstanceShowing()Z
    .locals 3

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getRunningActivities()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    instance-of v2, v1, Lcom/sec/android/app/sbrowser/common/model/main/MainActivityListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->mActivity:Landroid/app/Activity;

    if-eq v1, v2, :cond_0

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$sendData$0(Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "sendData::ExecutorService start"

    const-string v1, "HandoffHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/sec/android/app/sbrowser/handoff/HandoffConstants;->HANDOFF_EXPIRE_DURATION:J

    add-long/2addr v2, v4

    const-string v0, "expiryTime"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.samsung.android.mcfds.HandoffProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "enableHandoff"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "sendData::ExecutorService, Handoff unsupported"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "sendData::ExecutorService end"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onUrlOnlyReceived(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$5;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$5;-><init>(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onWebStateReceived(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$6;-><init>(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerObserver()V
    .locals 4

    const-string v0, "registerObserver()"

    const-string v1, "HandoffHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "content://com.samsung.android.mcfds.HandoffProvider/DataReceivingSuccess/com.sec.android.app.sbrowser.beta"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->mHandoffObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "registerObserver(), Handoff unsupported"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private requestSyncHandoffData()V
    .locals 4

    const-string v0, "HandoffHelper"

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->registerObserver()V

    :try_start_0
    const-string v1, "Request Sync Handoff Data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "content://com.samsung.android.mcfds.HandoffProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "requestSyncHandoffData"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "handleIntent(), Handoff unsupported"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private sendData(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, LGa/d;

    const/16 v2, 0x18

    invoke-direct {v1, v2, p0, p1}, LGa/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method


# virtual methods
.method public cancelRevivalTimer()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotion;->cancelRevivalTimer()V

    return-void
.end method

.method public disableHandoff()V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->unsetTimer()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->isContinuitySettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->isOtherInstanceShowing()Z

    move-result v0

    const-string v1, "HandoffHelper"

    if-eqz v0, :cond_1

    const-string p0, "Other instance is showing. Do not disable handoff"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "content://com.samsung.android.mcfds.HandoffProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v2, "disableHandoff"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "Disable Handoff"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    const-string p0, "disableHandoff(), Handoff unsupported"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->isContinuitySettingEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "handoff"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->requestSyncHandoffData()V

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotion;->isReady()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotion;->getInstance()Lcom/sec/android/app/sbrowser/handoff/HandoffPromotion;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$2;-><init>(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;)V

    invoke-virtual {p1, v0, v1}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotion;->showPromotionIfAvailable(Landroid/app/Activity;Lcom/sec/android/app/sbrowser/handoff/HandoffPromotionView$Callback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public sendUrl(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->isSendingAvailable(Landroid/app/Activity;)Z

    move-result v0

    const-string v1, "HandoffHelper"

    if-nez v0, :cond_0

    const-string p0, "Send url is not available"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->isValidHandoffUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "URL is empty or invalid"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->encodeHandoffData(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "handoffData"

    invoke-static {v2, v0}, Lt/b;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->isAppDataProviderSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "use app data provider"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "handoffDataURL"

    const-string v3, "content://com.sec.android.app.sbrowser.beta.handoffData"

    invoke-virtual {v0, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->sendData(Landroid/os/Bundle;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$3;-><init>(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;)V

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->setTimer(Ljava/lang/String;Lcom/sec/android/app/sbrowser/handoff/HandoffUtil$Listener;)V

    const-string p0, "Send Handoff URL"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public sendWebState(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->isSendingAvailable(Landroid/app/Activity;)Z

    move-result v0

    const-string v1, "HandoffHelper"

    if-nez v0, :cond_0

    const-string p0, "Send web state is not available"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->encodeWebStateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->getUrlFromWebState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->isValidHandoffUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "webState URL is empty or invalid"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v2, 0x1

    invoke-static {v2, v0, p1}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->encodeHandoffData(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "handoffData"

    invoke-static {v2, v0}, Lt/b;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->sendData(Landroid/os/Bundle;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper$4;-><init>(Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;)V

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/handoff/HandoffUtil;->setTimer(Ljava/lang/String;Lcom/sec/android/app/sbrowser/handoff/HandoffUtil$Listener;)V

    const-string p0, "Send Handoff URL and WebState"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startRevivalTimer()V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/handoff/HandoffPromotion;->startRevivalTimer()V

    return-void
.end method

.method public unregisterObserver()V
    .locals 2

    const-string v0, "HandoffHelper"

    const-string v1, "unregisterObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/handoff/HandoffHelper;->mHandoffObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
