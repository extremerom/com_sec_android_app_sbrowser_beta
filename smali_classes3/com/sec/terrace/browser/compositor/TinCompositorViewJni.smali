.class Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/browser/compositor/TinCompositorView$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/compositor/TinCompositorViewJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public cacheBackBufferForCurrentSurface(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MQQ0nhxw(JLjava/lang/Object;)V

    return-void
.end method

.method public destroy(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M2XWJJA4(JLjava/lang/Object;)V

    return-void
.end method

.method public evictCachedBackBuffer(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MuNbHvAC(JLjava/lang/Object;)V

    return-void
.end method

.method public getResourceManager(JLcom/sec/terrace/browser/compositor/TinCompositorView;)Lorg/chromium/ui/resources/ResourceManager;
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MIMmvpPw(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/ui/resources/ResourceManager;

    return-object p0
.end method

.method public init(Lcom/sec/terrace/browser/compositor/TinCompositorView;ZLorg/chromium/ui/base/WindowAndroid;)J
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M6X$6Nwn(Ljava/lang/Object;ZLjava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public notifyVirtualKeyboardOverlayRect(JLcom/sec/terrace/browser/compositor/TinCompositorView;Lorg/chromium/content_public/browser/WebContents;IIII)V
    .locals 0

    invoke-static/range {p1 .. p8}, LJ/N;->M$VT2zLM(JLjava/lang/Object;Ljava/lang/Object;IIII)V

    return-void
.end method

.method public onPhysicalBackingSizeChanged(JLcom/sec/terrace/browser/compositor/TinCompositorView;Lorg/chromium/content_public/browser/WebContents;II)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MfOTHEmS(JLjava/lang/Object;Ljava/lang/Object;II)V

    return-void
.end method

.method public onSplitModeChanged(JLcom/sec/terrace/browser/compositor/TinCompositorView;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M6oa7nQ6(JLjava/lang/Object;Z)V

    return-void
.end method

.method public preserveChildSurfaceControls(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M00azk64(JLjava/lang/Object;)V

    return-void
.end method

.method public resetRootLayerBackground(JLcom/sec/terrace/browser/compositor/TinCompositorView;I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->Mf_vOFSj(JLjava/lang/Object;I)V

    return-void
.end method

.method public setCurrentWebContents(JLcom/sec/terrace/browser/compositor/TinCompositorView;Lorg/chromium/content_public/browser/WebContents;J)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->M3gI2$cE(JLjava/lang/Object;Ljava/lang/Object;J)V

    return-void
.end method

.method public setDidSwapBuffersCallbackEnabled(JZ)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MIjbha3a(JZ)V

    return-void
.end method

.method public setNeedsComposite(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MjgPoaiC(JLjava/lang/Object;)V

    return-void
.end method

.method public setOverlayImmersiveArMode(JLcom/sec/terrace/browser/compositor/TinCompositorView;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MT0YgBYf(JLjava/lang/Object;Z)V

    return-void
.end method

.method public setOverlayVideoMode(JLcom/sec/terrace/browser/compositor/TinCompositorView;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MnQnJepV(JLjava/lang/Object;Z)V

    return-void
.end method

.method public surfaceChanged(JLcom/sec/terrace/browser/compositor/TinCompositorView;IIIZLandroid/view/Surface;Landroid/window/InputTransferToken;)V
    .locals 0

    invoke-static/range {p1 .. p9}, LJ/N;->MuXnFh3Y(JLjava/lang/Object;IIIZLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public surfaceCreated(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M0pV3UsG(JLjava/lang/Object;)V

    return-void
.end method

.method public surfaceDestroyed(JLcom/sec/terrace/browser/compositor/TinCompositorView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M4fsEDEE(JLjava/lang/Object;)V

    return-void
.end method
