.class public Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$Natives;
    }
.end annotation


# instance fields
.field private mExtensionClient:Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

.field private mExtensionView:Landroid/widget/FrameLayout;

.field private mExtensionsRenderView:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

.field private mExtensionsTerrace:Lcom/sec/terrace/Terrace;

.field private mExtensionsWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

.field private mIsSurfaceSyncThrottling:Z

.field private mNativeTinAndroidExtensionView:J

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mRotation:I

.field private mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

.field private mWebContents:Lorg/chromium/content_public/browser/WebContents;


# direct methods
.method public constructor <init>(JLorg/chromium/content_public/browser/WebContents;Z)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TinAndroidExtensionView"

    invoke-static {v0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    iput-wide p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mNativeTinAndroidExtensionView:J

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p1}, Lcom/sec/terrace/TinTerraceInternals;->getCompositorView(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/compositor/TinCompositorView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-double p2, p2

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr p2, v0

    double-to-int v6, p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-double p1, p1

    mul-double/2addr p1, v0

    double-to-int v7, p1

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mRotation:I

    iput-boolean p4, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mIsSurfaceSyncThrottling:Z

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionViewJni;->get()Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$Natives;

    move-result-object v2

    iget-wide v3, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mNativeTinAndroidExtensionView:J

    move-object v5, p0

    invoke-interface/range {v2 .. v7}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$Natives;->init(JLcom/sec/terrace/browser/extensions/TinAndroidExtensionView;II)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsRenderView:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Lcom/sec/terrace/Terrace;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Lorg/chromium/ui/base/ActivityWindowAndroid;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    return-object p0
.end method

.method private closeContents()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "TinAndroidExtensionView"

    const-string v1, "closeContents"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->dismissPopup()V

    return-void
.end method

.method private closePopup()V
    .locals 2
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string v0, "TinAndroidExtensionView"

    const-string v1, "closePopup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->dismissPopup()V

    return-void
.end method

.method private static createExtensionView(JLorg/chromium/content_public/browser/WebContents;Z)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    new-instance v0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;-><init>(JLorg/chromium/content_public/browser/WebContents;Z)V

    return-void
.end method

.method private createPopupWindow(II)V
    .locals 4

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionView:Landroid/widget/FrameLayout;

    invoke-direct {v0, v1, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Lm/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance p2, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-direct {p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v0, -0x1000000

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {p0, v0, v1}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->getColorWithAlpha(IF)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$1;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$1;-><init>(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$2;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$2;-><init>(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v2, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$3;

    invoke-direct {v2, p0, v0, p2, p1}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$3;-><init>(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;Landroid/view/View$OnLayoutChangeListener;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance p2, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$4;

    invoke-direct {p2, p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$4;-><init>(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->update()V

    return-void
.end method

.method private createTerraceInterceptNavigationDelegate()Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;
    .locals 1

    new-instance v0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$7;

    invoke-direct {v0, p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$7;-><init>(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V

    return-object v0
.end method

.method public static bridge synthetic d(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mIsSurfaceSyncThrottling:Z

    return p0
.end method

.method private dismissExtensionsRenderView()V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsRenderView:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->destroy()V

    :cond_1
    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsRenderView:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionClient:Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/chromium/ui/base/WindowAndroid;->destroy()V

    :cond_2
    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->dismissExtensionsRenderView()V

    :cond_3
    invoke-static {}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionViewJni;->get()Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$Natives;

    move-result-object v0

    iget-wide v1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mNativeTinAndroidExtensionView:J

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$Natives;->clear(JLcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V

    return-void
.end method

.method private dismissPopup()V
    .locals 2

    const-string v0, "TinAndroidExtensionView"

    const-string v1, "dismissPopup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mPopupWindow:Landroid/widget/PopupWindow;

    :cond_0
    return-void
.end method

.method private dismissRenderView()V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string p0, "TinAndroidExtensionView"

    const-string v0, "dismissRenderView"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/terrace/TinTerraceInternals;->dismissExtensionsRenderView()V

    return-void
.end method

.method public static bridge synthetic e(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mNativeTinAndroidExtensionView:J

    return-wide v0
.end method

.method public static bridge synthetic f(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)I
    .locals 0

    iget p0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mRotation:I

    return p0
.end method

.method public static bridge synthetic g(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Lcom/sec/terrace/TerraceActivity;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    return-object p0
.end method

.method private getColorWithAlpha(IF)I
    .locals 1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result p2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p0, p2, v0, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic h(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)Lorg/chromium/content_public/browser/WebContents;
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    return-object p0
.end method

.method public static bridge synthetic i(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    return-void
.end method

.method public static bridge synthetic j(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mNativeTinAndroidExtensionView:J

    return-void
.end method

.method public static bridge synthetic k(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mPopupWindow:Landroid/widget/PopupWindow;

    return-void
.end method

.method public static bridge synthetic l(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;I)V
    .locals 0

    iput p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mRotation:I

    return-void
.end method

.method private launchExtensionView(Lorg/chromium/content_public/browser/WebContents;II)V
    .locals 4
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    const-string p1, "TinAndroidExtensionView"

    const-string v0, "launchExtensionView"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-wide v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mNativeTinAndroidExtensionView:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionViewJni;->get()Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$Natives;

    move-result-object p1

    iget-wide p2, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mNativeTinAndroidExtensionView:J

    invoke-interface {p1, p2, p3, p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$Natives;->close(JLcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V

    iput-wide v2, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mNativeTinAndroidExtensionView:J

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-static {p1}, Lcom/sec/terrace/TerraceApplicationStatus;->getStateForActivity(Landroid/app/Activity;)I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->launchExtensionsRenderView(II)Landroid/widget/FrameLayout;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static bridge synthetic m(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->dismissExtensionsRenderView()V

    return-void
.end method

.method public static bridge synthetic n(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->dismissPopup()V

    return-void
.end method

.method private resizeDueToAutoResize(Lorg/chromium/content_public/browser/WebContents;II)V
    .locals 1
    .annotation build Lorg/jni_zero/CalledByNative;
    .end annotation

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsRenderView:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;->resizeDueToAutoResize(II)V

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez p1, :cond_2

    invoke-direct {p0, p2, p3}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->createPopupWindow(II)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2, p3}, Landroid/widget/PopupWindow;->update(II)V

    :goto_0
    return-void
.end method


# virtual methods
.method public launchExtensionsRenderView(II)Landroid/widget/FrameLayout;
    .locals 7

    iget-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-static {v0}, Lorg/chromium/ui/base/IntentRequestTracker;->createFromActivity(Landroid/app/Activity;)Lorg/chromium/ui/base/IntentRequestTracker;

    move-result-object v4

    new-instance v0, Lorg/chromium/ui/base/ActivityWindowAndroid;

    iget-object v2, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/chromium/ui/base/ActivityWindowAndroid;-><init>(Landroid/content/Context;ZLorg/chromium/ui/base/IntentRequestTracker;Lorg/chromium/ui/InsetObserver;Z)V

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    new-instance v0, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    iget-object v1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    iget-object v2, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;-><init>(Landroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;II)V

    iput-object v0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsRenderView:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    new-instance p1, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$5;

    invoke-direct {p1, p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$5;-><init>(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionClient:Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsWindowAndroid:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-static {p1, p2}, Lcom/sec/terrace/TinTerraceInternals;->setLaunchedExtensionView(Lcom/sec/terrace/browser/extensions/ExtensionViewClient$ExtensionClient;Lorg/chromium/ui/base/ActivityWindowAndroid;)V

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mWebContents:Lorg/chromium/content_public/browser/WebContents;

    invoke-static {p1, p2}, Lcom/sec/terrace/TinTerraceInternals;->createExtensionTerraceWithWebContents(ZLorg/chromium/content_public/browser/WebContents;)Lcom/sec/terrace/Terrace;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mTerraceActivity:Lcom/sec/terrace/TerraceActivity;

    invoke-virtual {p1, p2}, Lcom/sec/terrace/Terrace;->initializeWithContext(Landroid/content/Context;)Z

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    invoke-direct {p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->createTerraceInterceptNavigationDelegate()Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/terrace/Terrace;->setInterceptNavigationDelegate(Lcom/sec/terrace/navigation_interception/TerraceInterceptNavigationDelegate;)V

    invoke-static {}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->getInstance()Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p1, p2}, Lcom/sec/terrace/browser/extensions/TerraceExtensionsManager;->createContextMenuPopulator(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceContextMenuPopulator;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p2, p1}, Lcom/sec/terrace/Terrace;->setContextMenuPopulator(Lcom/sec/terrace/TerraceContextMenuPopulator;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsRenderView:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p2}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$6;

    invoke-direct {p1, p0}, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView$6;-><init>(Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;)V

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p1, p2}, Lcom/sec/terrace/browser/extensions/ExtensionsTerraceCallback;->setTerrace(Lcom/sec/terrace/Terrace;)V

    iget-object p2, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p2, p1}, Lcom/sec/terrace/Terrace;->setListenerCallback(Lcom/sec/terrace/TerraceListenerCallback;)V

    iget-object p1, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsTerrace:Lcom/sec/terrace/Terrace;

    invoke-virtual {p1}, Lcom/sec/terrace/Terrace;->show()V

    iget-object p0, p0, Lcom/sec/terrace/browser/extensions/TinAndroidExtensionView;->mExtensionsRenderView:Lcom/sec/terrace/browser/extensions/TinExtensionsRenderView;

    return-object p0
.end method
