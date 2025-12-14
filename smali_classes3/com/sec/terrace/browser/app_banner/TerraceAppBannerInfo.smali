.class public Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo$Natives;,
        Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo$Icon;
    }
.end annotation


# instance fields
.field private mDisplay:Ljava/lang/String;

.field private mIcons:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo$Icon;",
            ">;"
        }
    .end annotation
.end field

.field private mManifestUrl:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNativeAppBannerInfo:J

.field private mOrientation:Ljava/lang/String;

.field private mScope:Ljava/lang/String;

.field private mSourceUrl:Ljava/lang/String;

.field private mStartUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mIcons:Ljava/util/Vector;

    iput-object p1, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mSourceUrl:Ljava/lang/String;

    invoke-static {}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoJni;->get()Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo$Natives;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo$Natives;->create(Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mNativeAppBannerInfo:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mIcons:Ljava/util/Vector;

    iput-object p1, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mSourceUrl:Ljava/lang/String;

    iput-wide p2, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mNativeAppBannerInfo:J

    return-void
.end method

.method private setDisplay(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mDisplay:Ljava/lang/String;

    return-void
.end method

.method private setManifestUrl(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mManifestUrl:Ljava/lang/String;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method private setOrientation(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mOrientation:Ljava/lang/String;

    return-void
.end method

.method private setStartUrl(Ljava/lang/String;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mStartUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 6

    iget-object v0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mIcons:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-wide v0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mNativeAppBannerInfo:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertTrue(Z)V

    invoke-static {}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfoJni;->get()Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo$Natives;

    move-result-object v0

    iget-wide v4, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mNativeAppBannerInfo:J

    invoke-interface {v0, v4, v5, p0}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo$Natives;->destroy(JLcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;)V

    iput-wide v2, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mNativeAppBannerInfo:J

    return-void
.end method

.method public getDisplay()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mDisplay:Ljava/lang/String;

    return-object p0
.end method

.method public getIcons()Ljava/util/Vector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo$Icon;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mIcons:Ljava/util/Vector;

    return-object p0
.end method

.method public getManifestUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mManifestUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNativeAppBannerInfo()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mNativeAppBannerInfo:J

    return-wide v0
.end method

.method public getOrientation()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mOrientation:Ljava/lang/String;

    return-object p0
.end method

.method public getScope()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mScope:Ljava/lang/String;

    return-object p0
.end method

.method public getSourceUrl()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mSourceUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getStartUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mStartUrl:Ljava/lang/String;

    return-object p0
.end method

.method public initData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mSourceUrl:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mDisplay:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mManifestUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mOrientation:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mScope:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mStartUrl:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mIcons:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public isEmpty()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mDisplay:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mManifestUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mName:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mOrientation:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mScope:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget-object v0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mStartUrl:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-object p0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mIcons:Ljava/util/Vector;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    if-nez p0, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    return v1
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo$Icon;

    invoke-direct {v0}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo$Icon;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo$Icon;->setSrc(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo$Icon;->setType(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo$Icon;->setSizes(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/app_banner/TerraceAppBannerInfo;->mIcons:Ljava/util/Vector;

    invoke-virtual {p0, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method
