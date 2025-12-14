.class public Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController$LazyHolder;,
        Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController$Natives;
    }
.end annotation


# instance fields
.field private mNativeTinBfcacheController:J


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController$LazyHolder;->a()Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doNotStoreCurrentPage()V
    .locals 5

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->mNativeTinBfcacheController:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/sec/terrace/TinWebContentsHelper;->getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheControllerJni;->get()Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->mNativeTinBfcacheController:J

    invoke-interface {v1, v2, v3, p0, v0}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController$Natives;->doNotStoreCurrentPage(JLcom/sec/terrace/browser/bfcache/TerraceBfcacheController;Lorg/chromium/content_public/browser/WebContents;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public flushEntry()V
    .locals 5

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->mNativeTinBfcacheController:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/sec/terrace/TinWebContentsHelper;->getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheControllerJni;->get()Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->mNativeTinBfcacheController:J

    invoke-interface {v1, v2, v3, p0, v0}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController$Natives;->flushEntry(JLcom/sec/terrace/browser/bfcache/TerraceBfcacheController;Lorg/chromium/content_public/browser/WebContents;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public init()V
    .locals 2

    invoke-static {}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheControllerJni;->get()Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController$Natives;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController$Natives;->init(Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->mNativeTinBfcacheController:J

    const-string p0, "TerraceBfcacheController"

    const-string v0, "init"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "enable-back-forward-cache"

    invoke-static {p0}, Lcom/sec/terrace/TerraceCommandLine;->appendSwitch(Ljava/lang/String;)V

    return-void
.end method

.method public setAllowList()V
    .locals 5

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->mNativeTinBfcacheController:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/sec/terrace/TinWebContentsHelper;->getWebContents(Lcom/sec/terrace/Terrace;)Lorg/chromium/content_public/browser/WebContents;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheControllerJni;->get()Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->mNativeTinBfcacheController:J

    invoke-interface {v1, v2, v3, p0, v0}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController$Natives;->setAllowList(JLcom/sec/terrace/browser/bfcache/TerraceBfcacheController;Lorg/chromium/content_public/browser/WebContents;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setBlockedFeatures(I)V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheControllerJni;->get()Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->mNativeTinBfcacheController:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController$Natives;->setBlockedFeatures(JLcom/sec/terrace/browser/bfcache/TerraceBfcacheController;I)V

    return-void
.end method

.method public setBlockedUrl([Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheControllerJni;->get()Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->mNativeTinBfcacheController:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController$Natives;->setBlockedUrl(JLcom/sec/terrace/browser/bfcache/TerraceBfcacheController;[Ljava/lang/String;)V

    return-void
.end method

.method public setConfigSetting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheControllerJni;->get()Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController;->mNativeTinBfcacheController:J

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/browser/bfcache/TerraceBfcacheController$Natives;->setConfigSetting(JLcom/sec/terrace/browser/bfcache/TerraceBfcacheController;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
