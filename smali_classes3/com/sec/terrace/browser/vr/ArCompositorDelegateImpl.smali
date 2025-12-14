.class public Lcom/sec/terrace/browser/vr/ArCompositorDelegateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/vr/ArCompositorDelegate;


# instance fields
.field private mActivity:Lcom/sec/terrace/TerraceActivity;

.field private mCompositorView:Lcom/sec/terrace/browser/compositor/TinCompositorView;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/browser/vr/ArCompositorDelegateImpl;->mCompositorView:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/vr/ArCompositorDelegateImpl;->mActivity:Lcom/sec/terrace/TerraceActivity;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sec/terrace/TinTerraceInternals;->getCompositorView(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/compositor/TinCompositorView;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/vr/ArCompositorDelegateImpl;->mCompositorView:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/vr/ArCompositorDelegateImpl;->mActivity:Lcom/sec/terrace/TerraceActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/TerraceActivity;->getActiveTerrace()Lcom/sec/terrace/Terrace;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getWebContainerView()Landroid/view/ViewGroup;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public getArSurfaceParent()Landroid/view/ViewGroup;
    .locals 1

    iget-object p0, p0, Lcom/sec/terrace/browser/vr/ArCompositorDelegateImpl;->mActivity:Lcom/sec/terrace/TerraceActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public setOverlayImmersiveArMode(ZZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/vr/ArCompositorDelegateImpl;->mCompositorView:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->setOverlayImmersiveArMode(ZZ)V

    :cond_0
    return-void
.end method

.method public shouldToggleArSurfaceParentVisibility()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
