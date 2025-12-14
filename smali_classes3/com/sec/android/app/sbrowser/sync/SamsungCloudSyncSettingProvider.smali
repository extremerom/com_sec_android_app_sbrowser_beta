.class public final Lcom/sec/android/app/sbrowser/sync/SamsungCloudSyncSettingProvider;
.super Lcom/samsung/android/scloud/lib/setting/q;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ!\u0010\u000f\u001a\u00020\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0008R#\u0010\u001b\u001a\n \u0016*\u0004\u0018\u00010\u00150\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/sec/android/app/sbrowser/sync/SamsungCloudSyncSettingProvider;",
        "Lcom/samsung/android/scloud/lib/setting/q;",
        "<init>",
        "()V",
        "",
        "networkOption",
        "Ldb/r;",
        "notifyNetworkOption",
        "(I)V",
        "",
        "sync",
        "notifyAutoSync",
        "(Z)V",
        "",
        "contentId",
        "notifyContentSync",
        "(Ljava/lang/String;Z)V",
        "isSupported",
        "()Z",
        "edpState",
        "notifyEdpStateChanged",
        "Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;",
        "kotlin.jvm.PlatformType",
        "syncStateNotifier$delegate",
        "Ldb/f;",
        "getSyncStateNotifier",
        "()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;",
        "syncStateNotifier",
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
.field public static final $stable:I = 0x8


# instance fields
.field private final syncStateNotifier$delegate:Ldb/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Lcom/sec/android/app/sbrowser/si_log/model/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/sec/android/app/sbrowser/si_log/model/c;-><init>(I)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/sbrowser/sync/SamsungCloudSyncSettingProvider;->syncStateNotifier$delegate:Ldb/f;

    return-void
.end method

.method public static synthetic a()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/sync/SamsungCloudSyncSettingProvider;->syncStateNotifier_delegate$lambda$0()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    move-result-object v0

    return-object v0
.end method

.method private final getSyncStateNotifier()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sync/SamsungCloudSyncSettingProvider;->syncStateNotifier$delegate:Ldb/f;

    invoke-interface {p0}, Ldb/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    return-object p0
.end method

.method private static final syncStateNotifier_delegate$lambda$0()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->getInstance()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public notifyAutoSync(Z)V
    .locals 0

    return-void
.end method

.method public notifyContentSync(Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "kmjqYba23r"

    invoke-static {p1, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sync/SamsungCloudSyncSettingProvider;->getSyncStateNotifier()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const/16 v0, 0x17

    invoke-static {p1, v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/sync/SamsungCloudSyncSettingProvider;->getSyncStateNotifier()Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/common/sync/SyncStateNotifier;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public notifyEdpStateChanged(I)V
    .locals 0

    return-void
.end method

.method public notifyNetworkOption(I)V
    .locals 0

    return-void
.end method
