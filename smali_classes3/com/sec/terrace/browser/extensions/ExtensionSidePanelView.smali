.class public Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$Natives;
    }
.end annotation


# instance fields
.field private mBSListener:Lcom/sec/terrace/browser/extensions/BottomSheetFragment$ViewStateChangeListener;

.field private mBottomSheet:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

.field private mCompositorHeight:I

.field private mCompositorWidth:I

.field private mDensity:F

.field private mExtensionClient:Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

.field private mExtensionView:Landroid/widget/FrameLayout;

.field private mExtensionsRenderView:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

.field private mExtensionsTerrace:Lcom/sec/terrace/Terrace;

.field private mExtensionsWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

.field private mIsSurfaceSyncThrottling:Z

.field private mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mMaxCompositorHeight:I

.field private mMinCompositorHeight:I

.field private mNativeExtensionSidePanelView:J

.field private mPanelHeight:I

.field private mRotation:I

.field private mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method public constructor <init>(JLorg/chromium/content_public/browser/WebContents;Z)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ExtensionSidePanelView"

    invoke-static {v0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iput-wide p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mNativeExtensionSidePanelView:J

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mDensity:F

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p1}, Lcom/sec/terrace/TinTerraceInternals;->getCompositorView(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/compositor/TinCompositorView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-double p2, p2

    const-wide v0, 0x3fd999999999999aL    # 0.4

    mul-double/2addr p2, v0

    double-to-int p2, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-double v2, p3

    const-wide v5, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v2, v5

    double-to-int p3, v2

    iput p3, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mMaxCompositorHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-double v2, p1

    mul-double/2addr v2, v0

    double-to-int p1, v2

    iput p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mMinCompositorHeight:I

    iput v4, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mCompositorWidth:I

    iput p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mCompositorHeight:I

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mRotation:I

    iput-boolean p4, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mIsSurfaceSyncThrottling:Z

    invoke-static {}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelViewJni;->get()Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mNativeExtensionSidePanelView:J

    move-object v3, p0

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$Natives;->init(JLcom/sec/terrace/browser/extensions/ExtensionSidePanelView;II)V

    int-to-float p1, p2

    const/high16 p2, 0x42600000    # 56.0f

    iget p3, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mDensity:F

    mul-float/2addr p3, p2

    add-float/2addr p3, p1

    float-to-int p1, p3

    iput p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mPanelHeight:I

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Lcom/sec/terrace/browser/extensions/BottomSheetFragment;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mBottomSheet:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mCompositorHeight:I

    return p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mCompositorWidth:I

    return p0
.end method

.method private closeContents()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "ExtensionSidePanelView"

    const-string v1, "closeContents"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->dismissPopup()V

    return-void
.end method

.method private closePopup()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "ExtensionSidePanelView"

    const-string v1, "closePopup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->dismissPopup()V

    return-void
.end method

.method private collapseOrDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mBottomSheet:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->isCollapsed()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mBottomSheet:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    invoke-virtual {v1}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->collapseOrHide()V

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->dismissPopup()V

    :cond_0
    return-void
.end method

.method private static createExtensionView(JLorg/chromium/content_public/browser/WebContents;Z)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;-><init>(JLorg/chromium/content_public/browser/WebContents;Z)V

    return-void
.end method

.method private createSidePanelView(II)V
    .locals 2

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance v0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$1;-><init>(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mBSListener:Lcom/sec/terrace/browser/extensions/BottomSheetFragment$ViewStateChangeListener;

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mBottomSheet:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-direct {v0, v1, p1}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;-><init>(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mBottomSheet:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    invoke-virtual {v0, p2}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->setHeight(I)V

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mBottomSheet:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    iget v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mDensity:F

    const/high16 v1, 0x42400000    # 48.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->setPeekHeight(I)V

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mBottomSheet:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, v0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->setContentView(Landroid/widget/FrameLayout;)V

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mBottomSheet:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mBSListener:Lcom/sec/terrace/browser/extensions/BottomSheetFragment$ViewStateChangeListener;

    invoke-virtual {p2, v0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->setListener(Lcom/sec/terrace/browser/extensions/BottomSheetFragment$ViewStateChangeListener;)V

    :cond_0
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const v0, 0x800055

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mBottomSheet:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mBottomSheet:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->show()V

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->getViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/ui/base/ViewAndroidDelegate;->getContainerView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object p1

    new-instance p2, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$2;

    invoke-direct {p2, p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$2;-><init>(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p1, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$3;

    invoke-direct {p1, p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$3;-><init>(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mBottomSheet:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    invoke-virtual {p1}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->getView()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private createTerraceInterceptNavigationDelegate()Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$6;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$6;-><init>(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionsRenderView:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    return-object p0
.end method

.method private dismissExtensionsRenderView()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->dismissExtensionsRenderView()V

    :cond_0
    return-void
.end method

.method private dismissPopup()V
    .locals 6

    const-string v0, "ExtensionSidePanelView"

    const-string v1, "dismissPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mBottomSheet:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mBottomSheet:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->close()V

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mBottomSheet:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    invoke-virtual {v0}, Lcom/sec/terrace/browser/extensions/BottomSheetFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mBottomSheet:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mNativeExtensionSidePanelView:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelViewJni;->get()Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$Natives;

    move-result-object v0

    iget-wide v4, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mNativeExtensionSidePanelView:J

    invoke-interface {v0, v4, v5, p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$Natives;->close(JLcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)V

    iput-wide v2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mNativeExtensionSidePanelView:J

    :cond_2
    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->dismissExtensionsRenderView()V

    :cond_3
    return-void
.end method

.method private dismissRenderView()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string p0, "ExtensionSidePanelView"

    const-string v0, "dismissRenderView"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->dismissExtensionsRenderView()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    return-object p0
.end method

.method public static bridge synthetic f(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Lorg/chromium/ui/base/ActivityWindowAndroid;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionsWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    return-object p0
.end method

.method public static bridge synthetic g(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mIsSurfaceSyncThrottling:Z

    return p0
.end method

.method public static bridge synthetic h(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mNativeExtensionSidePanelView:J

    return-wide v0
.end method

.method public static bridge synthetic i(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mRotation:I

    return p0
.end method

.method public static bridge synthetic j(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Lcom/sec/terrace/TerraceActivity;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    return-object p0
.end method

.method public static bridge synthetic k(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)Lorg/chromium/content_public/browser/WebContents;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-object p0
.end method

.method public static bridge synthetic l(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;I)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mCompositorWidth:I

    return-void
.end method

.method private launchExtensionView(Lorg/chromium/content_public/browser/WebContents;II)V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p2

    if-eq p1, p2, :cond_0

    iget-wide p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mNativeExtensionSidePanelView:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelViewJni;->get()Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$Natives;

    move-result-object p1

    iget-wide p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mNativeExtensionSidePanelView:J

    invoke-interface {p1, p2, p3, p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$Natives;->close(JLcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)V

    iput-wide v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mNativeExtensionSidePanelView:J

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p1}, Lcom/sec/terrace/TerraceApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result p1

    const/4 p2, 0x5

    if-lt p1, p2, :cond_1

    return-void

    :cond_1
    iget p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mCompositorWidth:I

    iget p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mCompositorHeight:I

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->launchExtensionsRenderView(II)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;I)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mRotation:I

    return-void
.end method

.method public static bridge synthetic o(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->collapseOrDismiss()V

    return-void
.end method

.method public static bridge synthetic p(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->dismissPopup()V

    return-void
.end method

.method private resizeDueToAutoResize(Lorg/chromium/content_public/browser/WebContents;II)V
    .locals 0
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eq p2, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionsRenderView:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mCompositorWidth:I

    iget p3, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mCompositorHeight:I

    invoke-virtual {p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->resizeDueToAutoResize(II)V

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mBottomSheet:Lcom/sec/terrace/browser/extensions/BottomSheetFragment;

    if-nez p1, :cond_2

    iget p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mCompositorWidth:I

    iget p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mPanelHeight:I

    invoke-direct {p0, p1, p2}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->createSidePanelView(II)V

    :cond_2
    return-void
.end method


# virtual methods
.method public launchExtensionsRenderView(II)Landroid/widget/FrameLayout;
    .locals 7

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lorg/chromium/ui/base/IntentRequestTracker;->createFromActivity(Landroid/app/Activity;)Lorg/chromium/ui/base/IntentRequestTracker;

    move-result-object v4

    new-instance v0, Lorg/chromium/ui/base/ActivityWindowAndroid;

    iget-object v2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/chromium/ui/base/ActivityWindowAndroid;-><init>(Landroid/content/Context;ZLorg/chromium/ui/base/IntentRequestTracker;Lorg/chromium/ui/InsetObserver;Z)V

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionsWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    new-instance v0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    iget-object v2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionsWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    int-to-double v3, p2

    const-wide v5, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v3, v5

    double-to-int p2, v3

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;-><init>(Landroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;II)V

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionsRenderView:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    new-instance p1, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$4;

    invoke-direct {p1, p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$4;-><init>(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionClient:Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionsWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-static {p1, p2}, Lcom/sec/terrace/TinTerraceInternals;->setLaunchedExtensionView(Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;Lorg/chromium/ui/base/ActivityWindowAndroid;)V

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p1, p2}, Lcom/sec/terrace/TinTerraceInternals;->createExtensionTerraceWithWebContents(ZLorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/Terrace;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {p1, p2}, Lcom/sec/terrace/Terrace;->initializeWithContext(Landroid/content/Context;)Z

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->createTerraceInterceptNavigationDelegate()Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/terrace/Terrace;->setInterceptNavigationDelegate(Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->createContextMenuPopulator(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceContextMenuPopulator;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p2, p1}, Lcom/sec/terrace/Terrace;->setContextMenuPopulator(Lcom/sec/terrace/TerraceContextMenuPopulator;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionsRenderView:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p2}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object p2

    iget v0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mCompositorWidth:I

    iget v1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mCompositorHeight:I

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    new-instance p1, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$5;

    invoke-direct {p1, p0}, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView$5;-><init>(Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;)V

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p1, p2}, Lcom/sec/terrace/browser/extensions/ExtensionsTerraceCallback;->setTerrace(Lcom/sec/terrace/Terrace;)V

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p2, p1}, Lcom/sec/terrace/Terrace;->setListenerCallback(Lcom/sec/terrace/TerraceListenerCallback;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->show()V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/ExtensionSidePanelView;->mExtensionsRenderView:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    return-object p0
.end method
