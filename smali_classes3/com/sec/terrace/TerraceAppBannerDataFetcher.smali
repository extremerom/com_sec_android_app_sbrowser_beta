.class public Lcom/sec/terrace/TerraceAppBannerDataFetcher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/TerraceAppBannerDataFetcher$TerraceAppBannerDataFetcherDelegate;,
        Lcom/sec/terrace/TerraceAppBannerDataFetcher$Natives;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/sec/terrace/TerraceAppBannerDataFetcher$TerraceAppBannerDataFetcherDelegate;

.field private mInfo:Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;

.field private mIsFetchedManifest:Z

.field private mNativeAppBannerDataFetcher:J


# direct methods
.method public constructor <init>(Lcom/sec/terrace/TerraceAppBannerDataFetcher$TerraceAppBannerDataFetcherDelegate;Lcom/sec/terrace/Terrace;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mNativeAppBannerDataFetcher:J

    invoke-virtual {p2}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mDelegate:Lcom/sec/terrace/TerraceAppBannerDataFetcher$TerraceAppBannerDataFetcherDelegate;

    invoke-virtual {p0, p2}, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->getNativeAppBannerDataFetcher(Lcom/sec/terrace/Terrace;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mNativeAppBannerDataFetcher:J

    return-void
.end method

.method private onBannerShownResult(II)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mDelegate:Lcom/sec/terrace/TerraceAppBannerDataFetcher$TerraceAppBannerDataFetcherDelegate;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mInfo:Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->getManifestUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/terrace/TerraceAppBannerDataFetcher$TerraceAppBannerDataFetcherDelegate;->onBannerShownResult(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public closeBannerIfNeeded()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mNativeAppBannerDataFetcher:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceAppBannerDataFetcherJni;->get()Lcom/sec/terrace/TerraceAppBannerDataFetcher$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mNativeAppBannerDataFetcher:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/TerraceAppBannerDataFetcher$Natives;->closeBannerIfNeeded(JLcom/sec/terrace/TerraceAppBannerDataFetcher;)V

    return-void
.end method

.method public destroy()V
    .locals 6

    iget-object v0, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mInfo:Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->destroy()V

    iput-object v1, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mInfo:Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;

    :cond_0
    iget-wide v2, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mNativeAppBannerDataFetcher:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/terrace/TerraceAppBannerDataFetcherJni;->get()Lcom/sec/terrace/TerraceAppBannerDataFetcher$Natives;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mNativeAppBannerDataFetcher:J

    invoke-interface {v0, v2, v3, p0}, Lcom/sec/terrace/TerraceAppBannerDataFetcher$Natives;->onJavaTinAppBannerDataFetcherDestroyed(JLcom/sec/terrace/TerraceAppBannerDataFetcher;)V

    iput-wide v4, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mNativeAppBannerDataFetcher:J

    :cond_1
    iput-object v1, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mDelegate:Lcom/sec/terrace/TerraceAppBannerDataFetcher$TerraceAppBannerDataFetcherDelegate;

    return-void
.end method

.method public destroyDialogIfExisted()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mDelegate:Lcom/sec/terrace/TerraceAppBannerDataFetcher$TerraceAppBannerDataFetcherDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sec/terrace/TerraceAppBannerDataFetcher$TerraceAppBannerDataFetcherDelegate;->destroyDialogIfExisted()V

    :cond_0
    return-void
.end method

.method public fetchManifest(ILjava/lang/String;I)Z
    .locals 9

    iget-wide v0, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mNativeAppBannerDataFetcher:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mIsFetchedManifest:Z

    iget-object v0, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mInfo:Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;

    invoke-direct {v0, p2}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mInfo:Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->initData(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/sec/terrace/TerraceAppBannerDataFetcherJni;->get()Lcom/sec/terrace/TerraceAppBannerDataFetcher$Natives;

    move-result-object v1

    iget-wide v2, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mNativeAppBannerDataFetcher:J

    iget-object p2, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mInfo:Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;

    invoke-virtual {p2}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->getNativeAppBannerInfo()J

    move-result-wide v6

    move-object v4, p0

    move v5, p1

    move v8, p3

    invoke-interface/range {v1 .. v8}, Lcom/sec/terrace/TerraceAppBannerDataFetcher$Natives;->fetchManifest(JLcom/sec/terrace/TerraceAppBannerDataFetcher;IJI)V

    const/4 p0, 0x1

    return p0
.end method

.method public fetchPWAStatus(ILjava/lang/String;I)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->fetchManifest(ILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getNativeAppBannerDataFetcher(Lcom/sec/terrace/Terrace;)J
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/sec/terrace/TerraceAppBannerDataFetcherJni;->get()Lcom/sec/terrace/TerraceAppBannerDataFetcher$Natives;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/sec/terrace/TerraceAppBannerDataFetcher$Natives;->create(Lcom/sec/terrace/TerraceAppBannerDataFetcher;Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide p0

    return-wide p0
.end method

.method public onDisplayAppBanner(I)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mDelegate:Lcom/sec/terrace/TerraceAppBannerDataFetcher$TerraceAppBannerDataFetcherDelegate;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/sec/terrace/TerraceAppBannerDataFetcher$TerraceAppBannerDataFetcherDelegate;->onDisplayAppBanner(I)V

    :cond_0
    return-void
.end method

.method public onFetchedManifest(I)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mInfo:Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mIsFetchedManifest:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mDelegate:Lcom/sec/terrace/TerraceAppBannerDataFetcher$TerraceAppBannerDataFetcherDelegate;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mInfo:Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;

    invoke-interface {v0, p1, p0}, Lcom/sec/terrace/TerraceAppBannerDataFetcher$TerraceAppBannerDataFetcherDelegate;->onFetchedManifest(ILcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;)V

    :cond_1
    return-void
.end method

.method public onFetchedPWAStatus(II)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mInfo:Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mIsFetchedManifest:Z

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mDelegate:Lcom/sec/terrace/TerraceAppBannerDataFetcher$TerraceAppBannerDataFetcherDelegate;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mInfo:Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;

    invoke-interface {v0, p1, p0, p2}, Lcom/sec/terrace/TerraceAppBannerDataFetcher$TerraceAppBannerDataFetcherDelegate;->onFetchedManifestWithPWAStatus(ILcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;I)V

    :cond_1
    return-void
.end method

.method public onInstall()V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mNativeAppBannerDataFetcher:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceAppBannerDataFetcherJni;->get()Lcom/sec/terrace/TerraceAppBannerDataFetcher$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mNativeAppBannerDataFetcher:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/TerraceAppBannerDataFetcher$Natives;->onInstall(JLcom/sec/terrace/TerraceAppBannerDataFetcher;)V

    return-void
.end method

.method public onNativeTinAppBannerDataFetcherDestroyed(J)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mNativeAppBannerDataFetcher:J

    return-void
.end method

.method public sendBannerEvent(I)V
    .locals 4

    iget-wide v0, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mNativeAppBannerDataFetcher:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/sec/terrace/TerraceAppBannerDataFetcherJni;->get()Lcom/sec/terrace/TerraceAppBannerDataFetcher$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/TerraceAppBannerDataFetcher;->mNativeAppBannerDataFetcher:J

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/sec/terrace/TerraceAppBannerDataFetcher$Natives;->sendBannerEvent(JLcom/sec/terrace/TerraceAppBannerDataFetcher;I)V

    return-void
.end method
