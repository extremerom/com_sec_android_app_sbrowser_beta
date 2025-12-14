.class Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;
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
    name = "VariableSizeAllocatorImpl"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mAllocatedConnections:LN/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LN/g;"
        }
    .end annotation
.end field

.field private final mMaxAllocated:I

.field private mNextInstance:I


# direct methods
.method private constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIZ)V
    .locals 12

    move-object v11, p0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIZ)V

    new-instance v0, LN/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN/g;-><init>(I)V

    iput-object v0, v11, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->mAllocatedConnections:LN/g;

    move/from16 v0, p9

    iput v0, v11, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->mMaxAllocated:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIZI)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIZ)V

    return-void
.end method

.method private allocate(Landroid/content/Context;Landroid/os/Bundle;)Lorg/chromium/base/process_launcher/ChildProcessConnection;
    .locals 13

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->mAllocatedConnections:LN/g;

    iget v0, v0, LN/g;->c:I

    iget v1, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->mMaxAllocated:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const-string p0, "ChildConnAllocator"

    const-string p1, "Ran out of UIDs to allocate."

    invoke-static {p0, p1}, Lorg/chromium/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_0
    new-instance v5, Landroid/content/ComponentName;

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mServiceClassName:Ljava/lang/String;

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mFallbackServiceClassName:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v2, Landroid/content/ComponentName;

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mFallbackServiceClassName:Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v6, v2

    iget v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->mNextInstance:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    iget v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->mNextInstance:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->mNextInstance:I

    iget-object v3, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mConnectionFactory:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactory;

    iget-boolean v7, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mBindToCaller:Z

    iget-boolean v8, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mBindAsExternalService:Z

    const/4 v11, 0x0

    iget-boolean v12, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mIsSandboxedForHistograms:Z

    move-object v4, p1

    move-object v9, p2

    invoke-interface/range {v3 .. v12}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactory;->createConnection(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZLandroid/os/Bundle;Ljava/lang/String;ZZ)Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public anyConnectionAllocated()Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->mAllocatedConnections:LN/g;

    iget p0, p0, LN/g;->c:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public doAllocate(Landroid/content/Context;Landroid/os/Bundle;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)Lorg/chromium/base/process_launcher/ChildProcessConnection;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->allocate(Landroid/content/Context;Landroid/os/Bundle;)Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p2, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->mAllocatedConnections:LN/g;

    invoke-virtual {p2, p1}, LN/g;->add(Ljava/lang/Object;)Z

    iget-boolean p0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mUseStrongBinding:Z

    invoke-virtual {p1, p0, p3}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->start(ZLorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)V

    return-object p1
.end method

.method public doFree(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->mAllocatedConnections:LN/g;

    invoke-virtual {p0, p1}, LN/g;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getMaxNumberOfAllocations()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public tryAllocate(Landroid/content/Context;Landroid/os/Bundle;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)Lorg/chromium/base/process_launcher/ChildProcessConnection;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->allocate(Landroid/content/Context;Landroid/os/Bundle;)Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    iget-boolean v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->mUseStrongBinding:Z

    invoke-virtual {p1, v0, p3}, Lorg/chromium/base/process_launcher/ChildProcessConnection;->tryStart(ZLorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)Z

    move-result p3

    if-nez p3, :cond_1

    return-object p2

    :cond_1
    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->mAllocatedConnections:LN/g;

    invoke-virtual {p0, p1}, LN/g;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public wasConnectionAllocated(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Z
    .locals 0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->mAllocatedConnections:LN/g;

    invoke-virtual {p0, p1}, LN/g;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
