.class public final Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u0000 %2\u00020\u0001:\u0001%B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001f\u0010\u0013\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0012\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0017\u0010\u0017\u001a\u00020\u00062\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J1\u0010\u0017\u001a\u00020\u00062\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u000e\u0010\u001b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u001a0\u00192\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001c\u00a2\u0006\u0004\u0008\u0017\u0010\u001eJ\u0015\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u001f\u0010\u0018R\u0016\u0010 \u001a\u00020\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0018\u0010\"\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0018\u0010$\u001a\u0004\u0018\u00010\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010#\u00a8\u0006&"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;",
        "Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;",
        "<init>",
        "()V",
        "",
        "newState",
        "Ldb/r;",
        "onApplicationStateChange",
        "(I)V",
        "Landroid/app/Activity;",
        "activity",
        "update",
        "(Landroid/app/Activity;)V",
        "",
        "enabled",
        "setBackgroundPlayEnabled",
        "(Z)V",
        "Ljava/lang/Runnable;",
        "resultCallback",
        "checkPermissionForExternalAudioDevice",
        "(Landroid/app/Activity;Ljava/lang/Runnable;)V",
        "Landroid/content/Context;",
        "context",
        "registerReceiver",
        "(Landroid/content/Context;)V",
        "",
        "",
        "actions",
        "Landroid/content/BroadcastReceiver;",
        "receiver",
        "(Landroid/content/Context;[Ljava/lang/String;Landroid/content/BroadcastReceiver;)V",
        "unregisterReceiver",
        "mReceiverRegistered",
        "Z",
        "mBluetoothReceiver",
        "Landroid/content/BroadcastReceiver;",
        "mHeadsetPlugReceiver",
        "Companion",
        "SBrowser_highendBetaGlobal64Release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private mBluetoothReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mReceiverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->Companion:Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ltb/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->update$lambda$0(Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/Runnable;[Ljava/lang/String;[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->checkPermissionForExternalAudioDevice$lambda$1(Ljava/lang/Runnable;[Ljava/lang/String;[I)V

    return-void
.end method

.method private static final checkPermissionForExternalAudioDevice$lambda$1(Ljava/lang/Runnable;[Ljava/lang/String;[I)V
    .locals 0

    const-string p1, "grantResults"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(...)"

    invoke-static {p1, p2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "Permission result : "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "BackgroundPlayHandler"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public static final getInstance()Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->Companion:Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler$Companion;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler$Companion;->getInstance()Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;

    move-result-object v0

    return-object v0
.end method

.method private static final update$lambda$0(Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;)V
    .locals 4

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isWiredHeadSetOn()Z

    move-result v0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isBluetoothAudioDeviceConnected()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EXTERNAL:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BackgroundPlayHandler"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->setBackgroundPlayEnabled(Z)V

    return-void
.end method


# virtual methods
.method public final checkPermissionForExternalAudioDevice(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "resultCallback"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "BackgroundPlayHandler"

    const-string v0, "isExternalAudioDeviceValid"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_2

    if-nez p1, :cond_0

    const-string p1, "No Activity"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    const-string v1, "requestPermissions"

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/sbrowser/media/common/a;

    invoke-direct {v0, p2}, Lcom/sec/android/app/sbrowser/media/common/a;-><init>(Ljava/lang/Runnable;)V

    invoke-static {p1, p0, v0}, Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/sec/android/app/sbrowser/common/utils/PermissionHelper$PermissionCallback;)V

    goto :goto_0

    :cond_2
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public onApplicationStateChange(I)V
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "getApplicationContext(...)"

    invoke-static {p1, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->unregisterReceiver(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized registerReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->mReceiverRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->registerApplicationStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;)V

    new-instance v0, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler$registerReceiver$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler$registerReceiver$1;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler$registerReceiver$2;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler$registerReceiver$2;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->registerReceiver(Landroid/content/Context;[Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    const-string v0, "android.bluetooth.device.action.ACL_CONNECTED"

    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->registerReceiver(Landroid/content/Context;[Ljava/lang/String;Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->mReceiverRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final registerReceiver(Landroid/content/Context;[Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/BroadcastReceiver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string p0, "actions"

    invoke-static {p2, p0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    invoke-virtual {p0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1, p3, p0}, Lcom/sec/android/app/sbrowser/common/device/ContextUtils;->registerExportedBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final setBackgroundPlayEnabled(Z)V
    .locals 0

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isBackgroundPlayEnabled()Z

    move-result p0

    if-eq p1, p0, :cond_0

    invoke-static {p1}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->setBackgroundPlayEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final unregisterReceiver(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->mReceiverRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->mHeadsetPlugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {p0}, Lcom/sec/terrace/TerraceApplicationStatus;->unregisterApplicationStateListener(Lcom/sec/terrace/TerraceApplicationStatus$TerraceApplicationStateListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->mReceiverRegistered:Z

    return-void
.end method

.method public final update(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/sbrowser/media/common/MediaFeatureGlobalConfigUtils;->Companion:Lcom/sec/android/app/sbrowser/media/common/MediaFeatureGlobalConfigUtils$Companion;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/sbrowser/media/common/MediaFeatureGlobalConfigUtils$Companion;->isBackgroundPlaySupported(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->setBackgroundPlayEnabled(Z)V

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->unregisterReceiver(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->getInstance()Lcom/sec/android/app/sbrowser/common/media/MediaSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/common/media/MediaSettings;->getBackgroundPlay()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    const/4 p1, 0x2

    if-eq v1, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->setBackgroundPlayEnabled(Z)V

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->unregisterReceiver(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/sec/android/app/sbrowser/download/b;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, Lcom/sec/android/app/sbrowser/download/b;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->checkPermissionForExternalAudioDevice(Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->registerReceiver(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->setBackgroundPlayEnabled(Z)V

    invoke-static {v0}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/media/common/BackgroundPlayHandler;->unregisterReceiver(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
