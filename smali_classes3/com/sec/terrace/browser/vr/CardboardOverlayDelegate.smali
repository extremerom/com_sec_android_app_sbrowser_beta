.class public Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/vr/XrImmersiveOverlay$Delegate;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCardboardView:Landroid/view/View;

.field private mCompositorDelegate:Lcom/sec/terrace/browser/vr/VrCompositorDelegate;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/browser/vr/VrCompositorDelegate;Landroid/app/Activity;)V
    .locals 0
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->mActivity:Landroid/app/Activity;

    iput-object p1, p0, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->mCompositorDelegate:Lcom/sec/terrace/browser/vr/VrCompositorDelegate;

    return-void
.end method

.method private getContentView()Landroid/view/View;
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private getParentView()Landroid/view/ViewGroup;
    .locals 0

    invoke-direct {p0}, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->getContentView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method private setupWidgetsLayout()V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/sec/terrace/R$layout;->cardboard_ui:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->mCardboardView:Landroid/view/View;

    sget v1, Lcom/sec/terrace/R$id;->cardboard_ui_back_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate$1;

    invoke-direct {v1, p0}, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate$1;-><init>(Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->mCardboardView:Landroid/view/View;

    sget v1, Lcom/sec/terrace/R$id;->cardboard_ui_settings_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v1, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate$2;

    invoke-direct {v1, p0}, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate$2;-><init>(Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public configureSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    return-void
.end method

.method public getDesiredOrientation()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public maybeForwardTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/sec/terrace/R$id;->cardboard_menu_option_use_another_device:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->onActiveXrSessionButtonTouched()V

    invoke-static {}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->endActiveSession()Z

    return v2

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/sec/terrace/R$id;->cardboard_menu_option_product_safety:I

    if-ne p1, v0, :cond_1

    new-instance p1, Lorg/chromium/content_public/browser/LoadUrlParams;

    const-string v0, "google.com/get/cardboard/product-safety"

    invoke-direct {p1, v0}, Lorg/chromium/content_public/browser/LoadUrlParams;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->mCompositorDelegate:Lcom/sec/terrace/browser/vr/VrCompositorDelegate;

    invoke-static {}, Lcom/sec/terrace/browser/vr/XrSessionCoordinator;->endActiveSession()Z

    invoke-interface {p0, p1}, Lcom/sec/terrace/browser/vr/VrCompositorDelegate;->openNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;)V

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onStopUsingSurfaceView()V
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->mCompositorDelegate:Lcom/sec/terrace/browser/vr/VrCompositorDelegate;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sec/terrace/browser/vr/VrCompositorDelegate;->setOverlayImmersiveVrMode(Z)V

    return-void
.end method

.method public parentAndShowSurfaceView(Landroid/view/SurfaceView;)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iget-object v1, p0, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    or-int/lit16 v0, v0, 0x1706

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object p0, p0, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->mCardboardView:Landroid/view/View;

    sget v0, Lcom/sec/terrace/R$id;->surface_view_holder:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public prepareToCreateSurfaceView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->mCompositorDelegate:Lcom/sec/terrace/browser/vr/VrCompositorDelegate;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/terrace/browser/vr/VrCompositorDelegate;->setOverlayImmersiveVrMode(Z)V

    invoke-direct {p0}, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->setupWidgetsLayout()V

    invoke-direct {p0}, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->getParentView()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->mCardboardView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public removeAndHideSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->getContentView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-object p1, p0, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    iget-object v0, p0, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    and-int/lit16 p1, p1, -0x1707

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-direct {p0}, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->getParentView()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->mCardboardView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public showSettings(Landroid/view/View;)V
    .locals 7

    new-instance v6, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/sec/terrace/browser/vr/CardboardOverlayDelegate;->mActivity:Landroid/app/Activity;

    const/4 v4, 0x0

    sget v5, Lcom/sec/terrace/R$style;->CardboardSettingsPopupMenu:I

    const v3, 0x800005

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    invoke-virtual {v6}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    sget v0, Lcom/sec/terrace/R$menu;->settings_menu:I

    invoke-virtual {v6}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {v6, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v6}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method

.method public useDisplaySizes()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
