.class Lorg/chromium/content/browser/framehost/NavigationControllerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content_public/browser/NavigationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation

.annotation runtime Lorg/jni_zero/JNINamespace;
.end annotation


# instance fields
.field private mNativeNavigationControllerAndroid:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    return-void
.end method

.method private static addToNavigationHistory(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    check-cast p0, Lorg/chromium/content_public/browser/NavigationHistory;

    check-cast p1, Lorg/chromium/content_public/browser/NavigationEntry;

    invoke-virtual {p0, p1}, Lorg/chromium/content_public/browser/NavigationHistory;->addEntry(Lorg/chromium/content_public/browser/NavigationEntry;)V

    return-void
.end method

.method private static create(J)Lorg/chromium/content/browser/framehost/NavigationControllerImpl;
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;

    invoke-direct {v0, p0, p1}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;-><init>(J)V

    return-object v0
.end method

.method private static createNavigationEntry(ILorg/chromium/url/GURL;Lorg/chromium/url/GURL;Lorg/chromium/url/GURL;Ljava/lang/String;Landroid/graphics/Bitmap;IJZ)Lorg/chromium/content_public/browser/NavigationEntry;
    .locals 12
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v11, Lorg/chromium/content_public/browser/NavigationEntry;

    move-object v0, v11

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lorg/chromium/content_public/browser/NavigationEntry;-><init>(ILorg/chromium/url/GURL;Lorg/chromium/url/GURL;Lorg/chromium/url/GURL;Ljava/lang/String;Landroid/graphics/Bitmap;IJZ)V

    return-object v11
.end method

.method private destroy()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    return-void
.end method


# virtual methods
.method public canGoBack()Z
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;->get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;->canGoBack(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canGoForward()Z
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;->get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;->canGoForward(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canGoToOffset(I)Z
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;->get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;->canGoToOffset(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public cancelPendingReload()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;->get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;->cancelPendingReload(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)V

    :cond_0
    return-void
.end method

.method public continuePendingReload()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;->get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;->continuePendingReload(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)V

    :cond_0
    return-void
.end method

.method public getDirectedNavigationHistory(ZI)Lorg/chromium/content_public/browser/NavigationHistory;
    .locals 8

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v7, Lorg/chromium/content_public/browser/NavigationHistory;

    invoke-direct {v7}, Lorg/chromium/content_public/browser/NavigationHistory;-><init>()V

    invoke-static {}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;->get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    move-object v3, p0

    move-object v4, v7

    move v5, p1

    move v6, p2

    invoke-interface/range {v0 .. v6}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;->getDirectedNavigationHistory(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;Lorg/chromium/content_public/browser/NavigationHistory;ZI)V

    return-object v7
.end method

.method public getEntryAtIndex(I)Lorg/chromium/content_public/browser/NavigationEntry;
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;->get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;->getEntryAtIndex(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;I)Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLastCommittedEntryIndex()I
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;->get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;->getLastCommittedEntryIndex(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getNavigationHistory()Lorg/chromium/content_public/browser/NavigationHistory;
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lorg/chromium/content_public/browser/NavigationHistory;

    invoke-direct {v0}, Lorg/chromium/content_public/browser/NavigationHistory;-><init>()V

    invoke-static {}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;->get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;

    move-result-object v1

    iget-wide v2, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    invoke-interface {v1, v2, v3, p0, v0}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;->getNavigationHistory(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/chromium/content_public/browser/NavigationHistory;->setCurrentEntryIndex(I)V

    return-object v0
.end method

.method public getUseDesktopUserAgent()Z
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;->get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;->getUseDesktopUserAgent(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)Z

    move-result p0

    return p0
.end method

.method public goBack()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;->get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;->goBack(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)V

    :cond_0
    return-void
.end method

.method public goForward()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;->get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;->goForward(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)V

    :cond_0
    return-void
.end method

.method public goToNavigationIndex(I)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;->get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;->goToNavigationIndex(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;I)V

    :cond_0
    return-void
.end method

.method public isInitialNavigation()Z
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;->get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;->isInitialNavigation(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public loadIfNecessary()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;->get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;->loadIfNecessary(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)V

    :cond_0
    return-void
.end method

.method public loadUrl(Lorg/chromium/content_public/browser/LoadUrlParams;)Lorg/chromium/content_public/browser/NavigationHandle;
    .locals 31

    move-object/from16 v3, p0

    iget-wide v0, v3, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getExtraHeaders()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getVerbatimHeaders()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v10, v0

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getExtraHeadersString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getInputStartTimestamp()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-nez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getIntentReceivedTimestamp()J

    move-result-wide v6

    :goto_2
    move-wide/from16 v22, v6

    goto :goto_3

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getInputStartTimestamp()J

    move-result-wide v6

    goto :goto_2

    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v22

    const-string v0, "Android.Omnibox.InputToNavigationControllerStart"

    invoke-static {v0, v6, v7}, Lorg/chromium/base/metrics/RecordHistogram;->recordTimesHistogram(Ljava/lang/String;J)V

    invoke-static {}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;->get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;

    move-result-object v0

    iget-wide v6, v3, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getLoadUrlType()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getTransitionType()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getReferrer()Lorg/chromium/content_public/common/Referrer;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getReferrer()Lorg/chromium/content_public/common/Referrer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content_public/common/Referrer;->getUrl()Ljava/lang/String;

    move-result-object v1

    :cond_2
    move-object v12, v1

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getReferrer()Lorg/chromium/content_public/common/Referrer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getReferrer()Lorg/chromium/content_public/common/Referrer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/content_public/common/Referrer;->getPolicy()I

    move-result v1

    :goto_4
    move v13, v1

    goto :goto_5

    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    :goto_5
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getUserAgentOverrideOption()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getPostData()Lorg/chromium/content_public/common/ResourceRequestBody;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getBaseUrl()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getVirtualUrlForSpecialCases()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getDataUrlAsString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getCanLoadLocalResources()Z

    move-result v19

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getIsRendererInitiated()Z

    move-result v20

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getShouldReplaceCurrentEntry()Z

    move-result v21

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getInitiatorOrigin()Lorg/chromium/url/Origin;

    move-result-object v24

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getHasUserGesture()Z

    move-result v25

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getShouldClearHistoryList()Z

    move-result v27

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getAdditionalNavigationParams()Lorg/chromium/content_public/browser/AdditionalNavigationParams;

    move-result-object v28

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getNavigationUIDataSupplier()Lorg/chromium/base/supplier/Supplier;

    move-result-object v1

    if-nez v1, :cond_4

    move-wide/from16 v29, v4

    goto :goto_6

    :cond_4
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getNavigationUIDataSupplier()Lorg/chromium/base/supplier/Supplier;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    move-wide/from16 v29, v1

    :goto_6
    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->getIsPdf()Z

    move-result v26

    move-wide v1, v6

    move-object/from16 v3, p0

    move-object v4, v8

    move v5, v9

    move v6, v11

    move-object v7, v12

    move v8, v13

    move v9, v14

    move-object v11, v15

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    move-object/from16 v14, v18

    move/from16 v15, v19

    move/from16 v16, v20

    move/from16 v17, v21

    move-object/from16 v18, v24

    move/from16 v19, v25

    move/from16 v20, v27

    move-object/from16 v21, v28

    move-wide/from16 v24, v29

    invoke-interface/range {v0 .. v26}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;->loadUrl(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;Lorg/chromium/content_public/common/ResourceRequestBody;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLorg/chromium/url/Origin;ZZLorg/chromium/content_public/browser/AdditionalNavigationParams;JJZ)Lorg/chromium/content_public/browser/NavigationHandle;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Lorg/chromium/content_public/browser/LoadUrlParams;->takeNavigationHandleUserData()Lorg/chromium/base/UserDataHost;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/chromium/content_public/browser/NavigationHandle;->setUserDataHost(Lorg/chromium/base/UserDataHost;)V

    :cond_5
    return-object v1
.end method

.method public pruneForwardEntries()V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;->get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;->pruneForwardEntries(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)V

    return-void
.end method

.method public reload(Z)V
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;->get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;->reload(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;Z)V

    :cond_0
    return-void
.end method

.method public removeEntryAtIndex(I)Z
    .locals 4

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;->get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    invoke-interface {v0, v1, v2, p0, p1}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;->removeEntryAtIndex(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setNeedsReload()V
    .locals 3

    invoke-static {}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;->get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;

    move-result-object v0

    iget-wide v1, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    invoke-interface {v0, v1, v2, p0}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;->setNeedsReload(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;)V

    return-void
.end method

.method public setUseDesktopUserAgent(ZZI)V
    .locals 9

    iget-wide v0, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Thread dump for debugging, override: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " reloadOnChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " caller: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NavigationController"

    invoke-static {v1, v0}, Lorg/chromium/base/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    invoke-static {}, Lorg/chromium/content/browser/framehost/NavigationControllerImplJni;->get()Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;

    move-result-object v2

    iget-wide v3, p0, Lorg/chromium/content/browser/framehost/NavigationControllerImpl;->mNativeNavigationControllerAndroid:J

    move-object v5, p0

    move v6, p1

    move v7, p2

    move v8, p3

    invoke-interface/range {v2 .. v8}, Lorg/chromium/content/browser/framehost/NavigationControllerImpl$Natives;->setUseDesktopUserAgent(JLorg/chromium/content/browser/framehost/NavigationControllerImpl;ZZI)V

    :cond_0
    return-void
.end method
