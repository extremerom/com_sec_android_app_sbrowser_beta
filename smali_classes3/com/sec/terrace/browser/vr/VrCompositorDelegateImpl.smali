.class public Lcom/sec/terrace/browser/vr/VrCompositorDelegateImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/vr/VrCompositorDelegate;


# instance fields
.field private mActivity:Lcom/sec/terrace/TerraceActivity;

.field private mCompositorView:Lcom/sec/terrace/browser/compositor/TinCompositorView;


# direct methods
.method public constructor <init>(Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/terrace/browser/vr/VrCompositorDelegateImpl;->mCompositorView:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    invoke-static {}, Lcom/sec/terrace/TerraceHelper;->getInstance()Lcom/sec/terrace/TerraceHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/terrace/TerraceHelper;->getCurrentTerraceActivity()Lcom/sec/terrace/TerraceActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/vr/VrCompositorDelegateImpl;->mActivity:Lcom/sec/terrace/TerraceActivity;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/sec/terrace/TinTerraceInternals;->getCompositorView(Lcom/sec/terrace/TerraceActivity;)Lcom/sec/terrace/browser/compositor/TinCompositorView;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/terrace/browser/vr/VrCompositorDelegateImpl;->mCompositorView:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    :cond_0
    return-void
.end method


# virtual methods
.method public openNewTab(Lorg/chromium/content_public/browser/LoadUrlParams;)V
    .locals 0

    return-void
.end method

.method public setOverlayImmersiveVrMode(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/browser/vr/VrCompositorDelegateImpl;->mCompositorView:Lcom/sec/terrace/browser/compositor/TinCompositorView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/compositor/TinCompositorView;->setOverlayVideoMode(Z)V

    :cond_0
    return-void
.end method
