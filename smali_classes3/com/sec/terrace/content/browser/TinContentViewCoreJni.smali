.class Lcom/sec/terrace/content/browser/TinContentViewCoreJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;


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

.method public static get()Lcom/sec/terrace/content/browser/TinContentViewCore$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;

    invoke-direct {v0}, Lcom/sec/terrace/content/browser/TinContentViewCoreJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public checkFastScrollLayer(JLcom/sec/terrace/content/browser/TinContentViewCore;FF)I
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MkPYZwpm(JLjava/lang/Object;FF)I

    move-result p0

    return p0
.end method

.method public disableBitmapCompositionForLayers(JLcom/sec/terrace/content/browser/TinContentViewCore;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M9kT5iM3(JLjava/lang/Object;)V

    return-void
.end method

.method public enableBitmapCompositionForLayer(JLcom/sec/terrace/content/browser/TinContentViewCore;IZLandroid/graphics/Bitmap;Z)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->M$aMx4ai(JLjava/lang/Object;IZLjava/lang/Object;Z)V

    return-void
.end method

.method public enableBlurEffectOnToolbar(JLcom/sec/terrace/content/browser/TinContentViewCore;IIIIIIF)V
    .locals 0

    invoke-static/range {p1 .. p10}, LJ/N;->MI90a2e5(JLjava/lang/Object;IIIIIIF)V

    return-void
.end method

.method public endDragDrop(JLcom/sec/terrace/content/browser/TinContentViewCore;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Ms0VW283(JLjava/lang/Object;)V

    return-void
.end method

.method public fastScrollerEnabled(JLcom/sec/terrace/content/browser/TinContentViewCore;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MZZRo5fN(JLjava/lang/Object;Z)V

    return-void
.end method

.method public findResourceLayerHitByPoint(JLcom/sec/terrace/content/browser/TinContentViewCore;IFF)I
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MS8eiJeF(JLjava/lang/Object;IFF)I

    move-result p0

    return p0
.end method

.method public getChildProcessUniqueId(JLcom/sec/terrace/content/browser/TinContentViewCore;)I
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->Mgx2yRmw(JLjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public init(Lcom/sec/terrace/content/browser/TinContentViewCore;Lorg/chromium/content_public/browser/WebContents;)J
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M4gM9Nu6(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public notifyFixedContainerEdgesChanged(JLcom/sec/terrace/content/browser/TinContentViewCore;[I)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M_1wJ$_L(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onJavaContentViewCoreDestroyed(JLcom/sec/terrace/content/browser/TinContentViewCore;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MHvmWSYC(JLjava/lang/Object;)V

    return-void
.end method

.method public requestDocumentDump(JLcom/sec/terrace/content/browser/TinContentViewCore;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MnhWKFr7(JLjava/lang/Object;)V

    return-void
.end method

.method public requestNumberOfBlockedElements(JLcom/sec/terrace/content/browser/TinContentViewCore;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M9k61yJ_(JLjava/lang/Object;)V

    return-void
.end method

.method public resetBackgroundColor(JLcom/sec/terrace/content/browser/TinContentViewCore;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MQ0isu8g(JLjava/lang/Object;)V

    return-void
.end method

.method public resetFastScrollLayerState(JLcom/sec/terrace/content/browser/TinContentViewCore;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MdlMlH03(JLjava/lang/Object;)V

    return-void
.end method

.method public resetResourceLayerManagerClient(JLcom/sec/terrace/content/browser/TinContentViewCore;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MHMZd0n2(JLjava/lang/Object;)V

    return-void
.end method

.method public savePage(JLcom/sec/terrace/content/browser/TinContentViewCore;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M4UPH8IL(JLjava/lang/Object;)V

    return-void
.end method

.method public selectLinkText(JLcom/sec/terrace/content/browser/TinContentViewCore;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MVCZPLjV(JLjava/lang/Object;)V

    return-void
.end method

.method public setFastScrollBitmap(JLcom/sec/terrace/content/browser/TinContentViewCore;ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MN9uRF31(JLjava/lang/Object;ILjava/lang/Object;)V

    return-void
.end method

.method public setGotoPosition(JLcom/sec/terrace/content/browser/TinContentViewCore;F)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MbtkscDR(JLjava/lang/Object;F)V

    return-void
.end method

.method public setLayoutRtl(JLcom/sec/terrace/content/browser/TinContentViewCore;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MxSQYhKZ(JLjava/lang/Object;Z)V

    return-void
.end method

.method public setSavePageDirectory(JLcom/sec/terrace/content/browser/TinContentViewCore;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MTNjGvMe(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setTopControlsHeight(JLcom/sec/terrace/content/browser/TinContentViewCore;IIZ)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MzoDtEOj(JLjava/lang/Object;IIZ)V

    return-void
.end method

.method public singleTap(JLcom/sec/terrace/content/browser/TinContentViewCore;JFF)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->MSjaIIeH(JLjava/lang/Object;JFF)V

    return-void
.end method

.method public tinScrollBy(JLcom/sec/terrace/content/browser/TinContentViewCore;JFFFF)V
    .locals 0

    invoke-static/range {p1 .. p9}, LJ/N;->M4bKl8P5(JLjava/lang/Object;JFFFF)V

    return-void
.end method

.method public updateBrowserControlsState(JLcom/sec/terrace/content/browser/TinContentViewCore;IIZ)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MuSxluin(JLjava/lang/Object;IIZ)V

    return-void
.end method

.method public updateLayerAppearance(JLcom/sec/terrace/content/browser/TinContentViewCore;IZ)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MRTg75kF(JLjava/lang/Object;IZ)V

    return-void
.end method
