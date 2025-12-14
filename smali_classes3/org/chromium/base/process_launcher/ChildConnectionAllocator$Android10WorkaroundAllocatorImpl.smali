.class Lorg/chromium/base/process_launcher/ChildConnectionAllocator$Android10WorkaroundAllocatorImpl;
.super Lorg/chromium/base/process_launcher/ChildConnectionAllocator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/process_launcher/ChildConnectionAllocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Android10WorkaroundAllocatorImpl"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mNonZygoteAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;

.field private final mZygoteAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;


# direct methods
.method private constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;ZZZIZ)V
    .locals 37

    move-object/from16 v11, p0

    move-object/from16 v12, p4

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIZ)V

    new-instance v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;

    const-string v1, "0"

    invoke-static {v12, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v24, 0x0

    move-object v13, v0

    move-object/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move/from16 v19, p5

    move/from16 v20, p6

    move/from16 v21, p7

    move/from16 v22, p8

    move/from16 v23, p9

    invoke-direct/range {v13 .. v24}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIZI)V

    iput-object v0, v11, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$Android10WorkaroundAllocatorImpl;->mZygoteAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;

    new-instance v0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;

    const-string v1, "1"

    invoke-static {v12, v1}, Lt/b;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    const/16 v36, 0x0

    move-object/from16 v25, v0

    move-object/from16 v26, p1

    move-object/from16 v27, p2

    move-object/from16 v28, p3

    move/from16 v31, p5

    move/from16 v32, p6

    move/from16 v33, p7

    move/from16 v34, p8

    move/from16 v35, p9

    invoke-direct/range {v25 .. v36}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZIZI)V

    iput-object v0, v11, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$Android10WorkaroundAllocatorImpl;->mNonZygoteAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;ZZZZ)V
    .locals 10

    const/16 v8, 0x62

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$Android10WorkaroundAllocatorImpl;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;ZZZIZ)V

    return-void
.end method


# virtual methods
.method public anyConnectionAllocated()Z
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$Android10WorkaroundAllocatorImpl;->mZygoteAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;

    invoke-virtual {v0}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->anyConnectionAllocated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$Android10WorkaroundAllocatorImpl;->mNonZygoteAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;

    invoke-virtual {p0}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->anyConnectionAllocated()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public doAllocate(Landroid/content/Context;Landroid/os/Bundle;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)Lorg/chromium/base/process_launcher/ChildProcessConnection;
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$Android10WorkaroundAllocatorImpl;->mZygoteAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->tryAllocate(Landroid/content/Context;Landroid/os/Bundle;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$Android10WorkaroundAllocatorImpl;->mNonZygoteAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;

    invoke-virtual {p0, p1, p2, p3}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->doAllocate(Landroid/content/Context;Landroid/os/Bundle;Lorg/chromium/base/process_launcher/ChildProcessConnection$ServiceCallback;)Lorg/chromium/base/process_launcher/ChildProcessConnection;

    move-result-object p0

    return-object p0
.end method

.method public doFree(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$Android10WorkaroundAllocatorImpl;->mZygoteAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;

    invoke-virtual {v0, p1}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->wasConnectionAllocated(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$Android10WorkaroundAllocatorImpl;->mZygoteAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;

    invoke-virtual {p0, p1}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->doFree(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$Android10WorkaroundAllocatorImpl;->mNonZygoteAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;

    invoke-virtual {v0, p1}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->wasConnectionAllocated(Lorg/chromium/base/process_launcher/ChildProcessConnection;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$Android10WorkaroundAllocatorImpl;->mNonZygoteAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;

    invoke-virtual {p0, p1}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;->doFree(Lorg/chromium/base/process_launcher/ChildProcessConnection;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getMaxNumberOfAllocations()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public setConnectionFactoryForTesting(Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactory;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->setConnectionFactoryForTesting(Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactory;)V

    iget-object v0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$Android10WorkaroundAllocatorImpl;->mZygoteAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;

    invoke-virtual {v0, p1}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->setConnectionFactoryForTesting(Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactory;)V

    iget-object p0, p0, Lorg/chromium/base/process_launcher/ChildConnectionAllocator$Android10WorkaroundAllocatorImpl;->mNonZygoteAllocator:Lorg/chromium/base/process_launcher/ChildConnectionAllocator$VariableSizeAllocatorImpl;

    invoke-virtual {p0, p1}, Lorg/chromium/base/process_launcher/ChildConnectionAllocator;->setConnectionFactoryForTesting(Lorg/chromium/base/process_launcher/ChildConnectionAllocator$ConnectionFactory;)V

    return-void
.end method
