.class public Lcom/sec/terrace/TerraceStylusWritingController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mTinStylusWritingController:Lcom/sec/terrace/content/directwriting/TinStylusWritingController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/terrace/content/directwriting/TinStylusWritingController;

    invoke-direct {v0, p1}, Lcom/sec/terrace/content/directwriting/TinStylusWritingController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/terrace/TerraceStylusWritingController;->mTinStylusWritingController:Lcom/sec/terrace/content/directwriting/TinStylusWritingController;

    invoke-direct {p0}, Lcom/sec/terrace/TerraceStylusWritingController;->registerStylusWritingObserver()V

    return-void
.end method

.method private registerStylusWritingObserver()V
    .locals 2

    const-string v0, "CacheStylusSettings"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap;->isEnabledOrDefault(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->getInstance()Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/TerraceStylusWritingController;->mTinStylusWritingController:Lcom/sec/terrace/content/directwriting/TinStylusWritingController;

    invoke-virtual {v0, p0}, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->registerObserver(Lorg/chromium/components/stylus_handwriting/StylusWritingController;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public hideHandwritingToolbar()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceStylusWritingController;->mTinStylusWritingController:Lcom/sec/terrace/content/directwriting/TinStylusWritingController;

    invoke-virtual {p0}, Lcom/sec/terrace/content/directwriting/TinStylusWritingController;->hideHandwritingToolbar()V

    return-void
.end method

.method public onCurrentTabChanged(Lcom/sec/terrace/Terrace;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/TerraceStylusWritingController;->mTinStylusWritingController:Lcom/sec/terrace/content/directwriting/TinStylusWritingController;

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getWebContents()Lcom/sec/terrace/content/browser/TinWebContentsImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/terrace/content/directwriting/TinStylusWritingController;->onWebContentsChanged(Lorg/chromium/content_public/browser/WebContents;)V

    iget-object p0, p0, Lcom/sec/terrace/TerraceStylusWritingController;->mTinStylusWritingController:Lcom/sec/terrace/content/directwriting/TinStylusWritingController;

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/directwriting/TinStylusWritingController;->setStylusWritingIconSupplierForView(Landroid/view/View;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/TerraceStylusWritingController;->mTinStylusWritingController:Lcom/sec/terrace/content/directwriting/TinStylusWritingController;

    invoke-virtual {p0, p1}, Lorg/chromium/components/stylus_handwriting/StylusWritingController;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setTinStylusWritingControllerForTest(Lcom/sec/terrace/content/directwriting/TinStylusWritingController;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/sec/terrace/TerraceStylusWritingController;->mTinStylusWritingController:Lcom/sec/terrace/content/directwriting/TinStylusWritingController;

    return-void
.end method

.method public unregisterStylusWritingObserver()V
    .locals 2

    const-string v0, "CacheStylusSettings"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/chromium/components/stylus_handwriting/StylusHandwritingFeatureMap;->isEnabledOrDefault(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->getInstance()Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/TerraceStylusWritingController;->mTinStylusWritingController:Lcom/sec/terrace/content/directwriting/TinStylusWritingController;

    invoke-virtual {v0, p0}, Lorg/chromium/components/stylus_handwriting/StylusWritingSettingsState;->unregisterObserver(Lorg/chromium/components/stylus_handwriting/StylusWritingController;)Z

    :cond_0
    return-void
.end method
