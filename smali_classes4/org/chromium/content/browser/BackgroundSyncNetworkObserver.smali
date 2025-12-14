.class public Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/BackgroundSyncNetworkObserver$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# static fields
.field private static sInstance:Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field

.field private static sSetConnectionTypeForTesting:Z


# instance fields
.field private mHasBroadcastConnectionType:Z

.field private mLastBroadcastConnectionType:I

.field private mNativePtrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNativePtrs:Ljava/util/List;

    const/4 p0, 0x0

    sput-boolean p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->sSetConnectionTypeForTesting:Z

    return-void
.end method

.method private broadcastNetworkChangeIfNecessary(I)V
    .locals 5

    iget-boolean v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mHasBroadcastConnectionType:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mLastBroadcastConnectionType:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mHasBroadcastConnectionType:Z

    iput p1, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mLastBroadcastConnectionType:I

    iget-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNativePtrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-static {}, Lorg/chromium/content/browser/BackgroundSyncNetworkObserverJni;->get()Lorg/chromium/content/browser/BackgroundSyncNetworkObserver$Natives;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4, p0, p1}, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver$Natives;->notifyConnectionTypeChanged(JLorg/chromium/content/browser/BackgroundSyncNetworkObserver;I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static canCreateObserver()Z
    .locals 4

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v3, v1, v2}, Lorg/chromium/base/ApiCompatibilityUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static createObserver(J)Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->getBackgroundSyncNetworkObserver()Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->registerObserver(J)V

    sget-object p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->sInstance:Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;

    return-object p0
.end method

.method private static getBackgroundSyncNetworkObserver()Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->sInstance:Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;

    if-nez v0, :cond_0

    new-instance v0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;

    invoke-direct {v0}, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;-><init>()V

    sput-object v0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->sInstance:Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;

    :cond_0
    sget-object v0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->sInstance:Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;

    return-object v0
.end method

.method private registerObserver(J)V
    .locals 3

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    invoke-static {}, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->canCreateObserver()Z

    move-result v0

    const-string v1, "BackgroundSync.NetworkObserver.HasPermission"

    if-nez v0, :cond_0

    const/4 p0, 0x0

    invoke-static {v1, p0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    if-nez v0, :cond_1

    new-instance v0, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    new-instance v2, Lorg/chromium/net/RegistrationPolicyAlwaysRegister;

    invoke-direct {v2}, Lorg/chromium/net/RegistrationPolicyAlwaysRegister;-><init>()V

    invoke-direct {v0, p0, v2}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;-><init>(Lorg/chromium/net/NetworkChangeNotifierAutoDetect$Observer;Lorg/chromium/net/NetworkChangeNotifierAutoDetect$RegistrationPolicy;)V

    iput-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lorg/chromium/base/metrics/RecordHistogram;->recordBooleanHistogram(Ljava/lang/String;Z)V

    :cond_1
    iget-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNativePtrs:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->updateCurrentNetworkState()V

    invoke-static {}, Lorg/chromium/content/browser/BackgroundSyncNetworkObserverJni;->get()Lorg/chromium/content/browser/BackgroundSyncNetworkObserver$Natives;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentNetworkState()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getConnectionType()I

    move-result v1

    invoke-interface {v0, p1, p2, p0, v1}, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver$Natives;->notifyConnectionTypeChanged(JLorg/chromium/content/browser/BackgroundSyncNetworkObserver;I)V

    return-void
.end method

.method private removeObserver(J)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNativePtrs:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNativePtrs:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->destroy()V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    :cond_0
    return-void
.end method


# virtual methods
.method public onConnectionCostChanged(I)V
    .locals 0

    return-void
.end method

.method public onConnectionSubtypeChanged(I)V
    .locals 0

    return-void
.end method

.method public onConnectionTypeChanged(I)V
    .locals 1

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-boolean v0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->sSetConnectionTypeForTesting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->broadcastNetworkChangeIfNecessary(I)V

    return-void
.end method

.method public onNetworkConnect(JI)V
    .locals 0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-boolean p1, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->sSetConnectionTypeForTesting:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->broadcastNetworkChangeIfNecessary(I)V

    return-void
.end method

.method public onNetworkDisconnect(J)V
    .locals 0

    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    sget-boolean p1, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->sSetConnectionTypeForTesting:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->updateCurrentNetworkState()V

    iget-object p1, p0, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->mNotifier:Lorg/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentNetworkState()Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getConnectionType()I

    move-result p1

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/BackgroundSyncNetworkObserver;->broadcastNetworkChangeIfNecessary(I)V

    return-void
.end method

.method public onNetworkSoonToDisconnect(J)V
    .locals 0

    return-void
.end method

.method public purgeActiveNetworkList([J)V
    .locals 0

    return-void
.end method
