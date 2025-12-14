.class public Lcom/sec/terrace/TerraceConnectionInfoPopup;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;,
        Lcom/sec/terrace/TerraceConnectionInfoPopup$Natives;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;

.field private mNativeTinConnectionInfoPopup:J

.field private mTerrace:Lcom/sec/terrace/Terrace;

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;

.field private final mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;


# direct methods
.method private constructor <init>(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup;->mTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup;->mDelegate:Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/sec/terrace/TerraceConnectionInfoPopupJni;->get()Lcom/sec/terrace/TerraceConnectionInfoPopup$Natives;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {p1, p0, p2}, Lcom/sec/terrace/TerraceConnectionInfoPopup$Natives;->init(Lcom/sec/terrace/TerraceConnectionInfoPopup;Lorg/chromium/content_public/browser/WebContents;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup;->mNativeTinConnectionInfoPopup:J

    :cond_0
    new-instance p1, Lcom/sec/terrace/TerraceConnectionInfoPopup$1;

    iget-object p2, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-direct {p1, p0, p2}, Lcom/sec/terrace/TerraceConnectionInfoPopup$1;-><init>(Lcom/sec/terrace/TerraceConnectionInfoPopup;Lorg/chromium/content_public/browser/WebContents;)V

    iput-object p1, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/TerraceConnectionInfoPopup;)Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup;->mDelegate:Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;

    return-object p0
.end method

.method private static addPermissionsToArray([Landroid/util/Pair;Landroid/util/Pair;I)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    aput-object p1, p0, p2

    return-void
.end method

.method public static create(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;)Lcom/sec/terrace/TerraceConnectionInfoPopup;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sec/terrace/TerraceConnectionInfoPopup;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/terrace/TerraceConnectionInfoPopup;-><init>(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;Z)V

    return-object v0
.end method

.method public static createForTesting(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;)Lcom/sec/terrace/TerraceConnectionInfoPopup;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lcom/sec/terrace/TerraceConnectionInfoPopup;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/terrace/TerraceConnectionInfoPopup;-><init>(Lcom/sec/terrace/Terrace;Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;Z)V

    return-object v0
.end method

.method private static createPermissionArray(I)[Landroid/util/Pair;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-array p0, p0, [Landroid/util/Pair;

    return-object p0
.end method

.method private static makePair(II)Landroid/util/Pair;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Landroid/util/Pair;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public addCertificateSection(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup;->mDelegate:Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;->addCertificateSection(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addDescriptionSection(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup;->mDelegate:Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;->addDescriptionSection(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 6

    iget-wide v0, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup;->mNativeTinConnectionInfoPopup:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    iget-object v0, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    invoke-virtual {v0}, Lorg/chromium/content_public/browser/WebContentsObserver;->webContentsDestroyed()V

    iget-object v0, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup;->mWebContentsObserver:Lorg/chromium/content_public/browser/WebContentsObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/content_public/browser/WebContentsObserver;->observe(Lorg/chromium/content_public/browser/WebContents;)V

    invoke-static {}, Lcom/sec/terrace/TerraceConnectionInfoPopupJni;->get()Lcom/sec/terrace/TerraceConnectionInfoPopup$Natives;

    move-result-object v0

    iget-wide v4, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup;->mNativeTinConnectionInfoPopup:J

    invoke-interface {v0, v4, v5, p0}, Lcom/sec/terrace/TerraceConnectionInfoPopup$Natives;->destroy(JLcom/sec/terrace/TerraceConnectionInfoPopup;)V

    iput-wide v2, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup;->mNativeTinConnectionInfoPopup:J

    return-void
.end method

.method public getNativeTinConnectionInfoPopupForTest()J
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-wide v0, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup;->mNativeTinConnectionInfoPopup:J

    return-wide v0
.end method

.method public getPermissions()[Landroid/util/Pair;
    .locals 4

    invoke-static {}, Lcom/sec/terrace/TerraceConnectionInfoPopupJni;->get()Lcom/sec/terrace/TerraceConnectionInfoPopup$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup;->mNativeTinConnectionInfoPopup:J

    iget-object v3, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v0, v1, v2, p0, v3}, Lcom/sec/terrace/TerraceConnectionInfoPopup$Natives;->getPermissions(JLcom/sec/terrace/TerraceConnectionInfoPopup;Lorg/chromium/content_public/browser/WebContents;)[Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public setNativeTinConnectionInfoPopupForTest(J)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-wide p1, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup;->mNativeTinConnectionInfoPopup:J

    return-void
.end method

.method public showDialog()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/TerraceConnectionInfoPopup;->mDelegate:Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;

    invoke-interface {p0}, Lcom/sec/terrace/TerraceConnectionInfoPopup$TerraceConnectionInfoPopupDelegate;->showDialog()V

    return-void
.end method
