.class public Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$LazyHolder;,
        Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;,
        Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatisticsListener;,
        Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatusListener;,
        Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$AAADelegate;,
        Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;
    }
.end annotation


# static fields
.field private static sStatisticsListener:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatisticsListener;

.field private static sStatusListener:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatusListener;


# instance fields
.field private mAAADelegate:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$AAADelegate;

.field private mNativeTinContentBlockPackageManager:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManagerJni;->get()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;->init(Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;-><init>()V

    return-void
.end method

.method public static bridge synthetic a()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatisticsListener;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->sStatisticsListener:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatisticsListener;

    return-object v0
.end method

.method public static bridge synthetic b()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatusListener;
    .locals 1

    sget-object v0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->sStatusListener:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatusListener;

    return-object v0
.end method

.method public static getInstance()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$LazyHolder;->a()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;

    move-result-object v0

    return-object v0
.end method

.method private isAntiAdblockAvoidanceEnabled(Z)Z
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mAAADelegate:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$AAADelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$AAADelegate;->isAntiAdblockAvoidanceEnabled(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onNumberOfBlockedRequests(JI)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$1;-><init>(Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;JI)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private onResetIgnoreBlockContent(J)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$2;-><init>(Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;J)V

    invoke-static {v0}, Lorg/chromium/base/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setStatisticsListener(Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatisticsListener;)V
    .locals 0

    sput-object p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->sStatisticsListener:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatisticsListener;

    return-void
.end method

.method public static setStatusListener(Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatusListener;)V
    .locals 0

    sput-object p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->sStatusListener:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$StatusListener;

    return-void
.end method


# virtual methods
.method public defaultInitialized()Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManagerJni;->get()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;->defaultInitialized(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initContentBlocker(Ljava/nio/ByteBuffer;Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;I)V
    .locals 9
    .param p2    # Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManagerJni;->get()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    invoke-interface/range {v1 .. v8}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;->initContentBlockerFromByteBuffer(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;Ljava/nio/ByteBuffer;Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;IZ)V

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;->onCompleted(Z)V

    return-void
.end method

.method public initContentBlockerFromCache(Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;)V
    .locals 4
    .param p1    # Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;->onCompleted(Z)V

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManagerJni;->get()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;->initContentBlockerFromCache(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;)V

    return-void
.end method

.method public initDefaultContentBlocker(Ljava/nio/ByteBuffer;Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;)V
    .locals 9
    .param p2    # Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-wide v0, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManagerJni;->get()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-interface/range {v1 .. v8}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;->initContentBlockerFromByteBuffer(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;Ljava/nio/ByteBuffer;Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;IZ)V

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x0

    invoke-interface {p2, p0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$OnContentBlockInitCallback;->onCompleted(Z)V

    return-void
.end method

.method public initialized()Z
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManagerJni;->get()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;->initialized(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetContentBlocker()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManagerJni;->get()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;->resetContentBlocker(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;)V

    return-void
.end method

.method public resetDefaultContentBlocker()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManagerJni;->get()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;->resetDefaultContentBlocker(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;)V

    return-void
.end method

.method public setAAABaitElementDetectionEnabled(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManagerJni;->get()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;->setAAABaitElementDetectionEnabled(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;Z)V

    return-void
.end method

.method public setAAABaitJavascriptDetectionEnabled(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManagerJni;->get()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;->setAAABaitJavascriptDetectionEnabled(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;Z)V

    return-void
.end method

.method public setAAADelegate(Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$AAADelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mAAADelegate:Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$AAADelegate;

    return-void
.end method

.method public setFiltersCacheFile(Ljava/io/File;)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-wide v0, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManagerJni;->get()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;->setFiltersCacheFilePath(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;Ljava/lang/String;)V

    return-void
.end method

.method public setSitekeyRulesEnabled(Z)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManagerJni;->get()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;->setSitekeyRulesEnabled(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;Z)V

    return-void
.end method

.method public setTemporarilyUnblockAds(JZ)V
    .locals 8

    iget-wide v0, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManagerJni;->get()Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;->mNativeTinContentBlockPackageManager:J

    move-object v4, p0

    move-wide v5, p1

    move v7, p3

    invoke-interface/range {v1 .. v7}, Lcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager$Natives;->setTemporarilyUnblockAds(JLcom/sec/terrace/browser/content_block/TerraceContentBlockPackageManager;JZ)V

    return-void
.end method
