.class public Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;
.super Lorg/chromium/base/process_launcher/ChildConnectionAllocator;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/process_launcher/ChildConnectionAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedSizeAllocatorImpl"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mChildProcessConnections:[Lorg/chromium/base/process_launcher/ChildProcessConnection;

.field private final mFallbackSlots:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/chromium/base/process_launcher/ChildProcessConnection;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mFreeConnectionIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;ZZZZIZ)V
    .locals 13

    move-object v11, p0

    move/from16 v12, p9

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIZ)V

    new-array v0, v12, [Lorg/chromium/base/process_launcher/ChildProcessConnection;

    iput-object v0, v11, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mChildProcessConnections:[Lorg/chromium/base/process_launcher/ChildProcessConnection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v11, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mFreeConnectionIndices:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v12, :cond_0

    iget-object v1, v11, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mFreeConnectionIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p8, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v11, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mFallbackSlots:Ljava/util/Map;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, v11, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mFallbackSlots:Ljava/util/Map;

    :goto_1
    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;ZZZZIZI)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;ZZZZIZ)V

    return-void
.end method


# virtual methods
.method public anyConnectionAllocated()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mFreeConnectionIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mChildProcessConnections:[Lorg/chromium/base/process_launcher/ChildProcessConnection;

    array-length p0, p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public doAllocate(Landroid/content/Context;Landroid/os/Bundle;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)Lorg/chromium/base/process_launcher/ChildProcessConnection;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mFreeConnectionIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "ChildConnAllocator"

    if-eqz v1, :cond_0

    const-string v0, "Ran out of services to allocate."

    invoke-static {v3, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    iget-object v1, v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mFallbackSlots:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mFreeConnectionIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x2

    if-ge v1, v4, :cond_1

    const-string v0, "Ran out of services for fallback."

    invoke-static {v3, v0}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    iget-object v1, v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mFreeConnectionIndices:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    new-instance v8, Landroid/content/ComponentName;

    iget-object v6, v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mPackageName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mServiceClassName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mFallbackSlots:Ljava/util/Map;

    if-eqz v6, :cond_2

    iget-object v2, v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mFreeConnectionIndices:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v4, Landroid/content/ComponentName;

    iget-object v6, v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mPackageName:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mServiceClassName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v4

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    move-object v9, v2

    move v2, v4

    :goto_0
    iget-object v6, v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mConnectionFactory:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactory;

    iget-boolean v10, v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mBindToCaller:Z

    iget-boolean v11, v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mBindAsExternalService:Z

    const/4 v14, 0x1

    iget-boolean v15, v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mIsSandboxedForHistograms:Z

    const/4 v13, 0x0

    move-object/from16 v7, p1

    move-object/from16 v12, p2

    invoke-interface/range {v6 .. v15}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactory;->createConnection(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZLandroid/os/Bundle;Ljava/lang/String;ZZ)Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object v4

    iget-object v6, v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mChildProcessConnections:[Lorg/chromium/base/process_launcher/ChildProcessConnection;

    aput-object v4, v6, v5

    iget-object v5, v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mFallbackSlots:Ljava/util/Map;

    if-eqz v5, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v5, v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mServiceClassName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v5, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Allocator allocated and bound a connection, name: %s, slot: %d fallback:%d"

    invoke-static {v3, v2, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mUseStrongBinding:Z

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->start(ZLorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)V

    return-object v4
.end method

.method public doFree(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 5

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mChildProcessConnections:[Lorg/chromium/base/process_launcher/ChildProcessConnection;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const-string v1, "ChildConnAllocator"

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const-string p0, "Unable to find connection to free."

    invoke-static {v1, p0}, Lorg/chromium/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mChildProcessConnections:[Lorg/chromium/base/process_launcher/ChildProcessConnection;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    iget-object v3, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mFreeConnectionIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mFallbackSlots:Ljava/util/Map;

    if-eqz v3, :cond_1

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lorg/chromium/build/NullUtil;->assumeNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mFreeConnectionIndices:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mServiceClassName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, p1, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Allocator freed a connection, name: %s, slot: %d fallback:%d"

    invoke-static {v1, p1, p0}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public getMaxNumberOfAllocations()I
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mFallbackSlots:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mChildProcessConnections:[Lorg/chromium/base/process_launcher/ChildProcessConnection;

    array-length p0, p0

    div-int/lit8 p0, p0, 0x2

    return p0

    :cond_0
    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mChildProcessConnections:[Lorg/chromium/base/process_launcher/ChildProcessConnection;

    array-length p0, p0

    return p0
.end method

.method public isFreeConnectionAvailable()Z
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$FixedSizeAllocatorImpl;->mFreeConnectionIndices:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
