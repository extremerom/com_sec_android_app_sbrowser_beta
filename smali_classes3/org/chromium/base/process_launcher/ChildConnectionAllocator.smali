.class public abstract Lorg/chromium/base/process_launcher/ChildConnectionAllocator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;,
        Lorg/chromium/base/process_launcher/ChildConnectionAllocator$Android10WorkaroundAllocatorImpl;,
        Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;,
        Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactoryImpl;,
        Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactory;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final mBindAsExternalService:Z

.field final mBindToCaller:Z

.field mConnectionFactory:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactory;

.field final mFallbackServiceClassName:Ljava/lang/String;

.field private final mFreeSlotCallback:Ljava/lang/Runnable;

.field final mIsSandboxedForHistograms:Z

.field private final mLauncherHandler:Landroid/os/Handler;

.field final mPackageName:Ljava/lang/String;

.field private final mPendingAllocations:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field final mServiceClassName:Ljava/lang/String;

.field final mUseStrongBinding:Z


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIZ)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mPendingAllocations:Ljava/util/Queue;

    new-instance v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactoryImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactoryImpl;-><init>(I)V

    iput-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mConnectionFactory:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactory;

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mLauncherHandler:Landroid/os/Handler;

    iput-object p2, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mFreeSlotCallback:Ljava/lang/Runnable;

    iput-object p3, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mServiceClassName:Ljava/lang/String;

    iput-object p5, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mFallbackServiceClassName:Ljava/lang/String;

    iput-boolean p6, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mBindToCaller:Z

    iput-boolean p7, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mBindAsExternalService:Z

    iput-boolean p8, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mUseStrongBinding:Z

    iput-boolean p9, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mIsSandboxedForHistograms:Z

    return-void
.end method

.method public static synthetic a(Lorg/chromium/base/process_launcher/ChildConnectionAllocator;Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactory;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->lambda$setConnectionFactoryForTesting$0(Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactory;)V

    return-void
.end method

.method public static bridge synthetic b(Lorg/chromium/base/process_launcher/ChildConnectionAllocator;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mLauncherHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic c(Lorg/chromium/base/process_launcher/ChildConnectionAllocator;Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->free(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    return-void
.end method

.method private static checkServiceExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lorg/chromium/base/PackageUtils;->maybeWorkAroundWebViewPackageVisibility()V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "0"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lorg/chromium/base/JavaUtils;->throwUnchecked(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZ)Lorg/chromium/base/process_launcher/ChildConnectionAllocator;
    .locals 13

    move-object/from16 v4, p3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {v0, v4, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    move v10, v2

    goto :goto_2

    :goto_1
    invoke-static {v0}, Lorg/chromium/base/JavaUtils;->throwUnchecked(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_0

    :goto_2
    if-ltz v10, :cond_1

    move-object v1, p0

    move-object/from16 v5, p4

    invoke-static {p0, v4, v5}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->checkServiceExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;

    const/4 v12, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;ZZZZIZI)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static createFixedForTesting(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;IZZZZZ)Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;
    .locals 13

    new-instance v12, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const/4 v11, 0x0

    move-object v0, v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p3

    move/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;ZZZZIZI)V

    return-object v12
.end method

.method public static createVariableSize(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;ZZZZ)Lorg/chromium/base/process_launcher/ChildConnectionAllocator;
    .locals 13

    move-object/from16 v4, p4

    move-object v0, p0

    move-object/from16 v3, p3

    invoke-static {p0, v3, v4}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->checkServiceExists(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lorg/chromium/base/BuildInfo;->getInstance()Lorg/chromium/base/BuildInfo;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x1d

    if-ne v1, v6, :cond_0

    iget-object v0, v0, Lorg/chromium/base/BuildInfo;->androidBuildFingerprint:Ljava/lang/String;

    const-string v7, "OnePlus/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne v1, v6, :cond_1

    if-nez v0, :cond_1

    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v6, "user"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v9, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$Android10WorkaroundAllocatorImpl;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$Android10WorkaroundAllocatorImpl;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    return-object v9

    :cond_1
    invoke-static {}, Lorg/chromium/base/SysUtils;->isLowEndDevice()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v2, v5

    :cond_3
    const-string v0, "1"

    if-eqz v2, :cond_4

    move-object v1, v0

    goto :goto_1

    :cond_4
    const-string v1, "0"

    :goto_1
    if-eqz v2, :cond_5

    const/4 v0, 0x0

    :goto_2
    move-object v5, v0

    goto :goto_3

    :cond_5
    invoke-static {v4, v0}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :goto_3
    new-instance v12, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;

    invoke-static {v4, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v9, 0x62

    const/4 v11, 0x0

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIZI)V

    return-object v12
.end method

.method private free(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->doFree(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    iget-object p1, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mPendingAllocations:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mPendingAllocations:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mPendingAllocations:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mFreeSlotCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$setConnectionFactoryForTesting$0(Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mConnectionFactory:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactory;

    return-void
.end method


# virtual methods
.method public allocate(Landroid/content/Context;Landroid/os/Bundle;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)Lorg/chromium/base/process_launcher/ChildProcessConnection;
    .locals 1

    new-instance v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;

    invoke-direct {v0, p0, p3}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$1;-><init>(Lorg/chromium/base/process_launcher/ChildConnectionAllocator;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)V

    invoke-virtual {p0, p1, p2, v0}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->doAllocate(Landroid/content/Context;Landroid/os/Bundle;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object p0

    return-object p0
.end method

.method public abstract anyConnectionAllocated()Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end method

.method public abstract doAllocate(Landroid/content/Context;Landroid/os/Bundle;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)Lorg/chromium/base/process_launcher/ChildProcessConnection;
.end method

.method public abstract doFree(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
.end method

.method public abstract getMaxNumberOfAllocations()I
.end method

.method public final queueAllocation(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mPendingAllocations:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mPendingAllocations:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mFreeSlotCallback:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setConnectionFactoryForTesting(Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactory;)V
    .locals 2

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mConnectionFactory:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactory;

    iput-object p1, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mConnectionFactory:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactory;

    new-instance p1, Lorg/chromium/base/process_launcher/e;

    const/4 v1, 0x1

    invoke-direct {p1, v1, p0, v0}, Lorg/chromium/base/process_launcher/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/chromium/base/ResettersForTesting;->register(Ljava/lang/Runnable;)V

    return-void
.end method
