.class Lorg/chromium/components/embedder_support/view/ContentViewRenderViewJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/embedder_support/view/ContentViewRenderView$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/components/embedder_support/view/ContentViewRenderView$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/embedder_support/view/ContentViewRenderViewJni;

    invoke-direct {v0}, Lorg/chromium/components/embedder_support/view/ContentViewRenderViewJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onPhysicalBackingSizeChanged(JLorg/chromium/components/embedder_support/view/ContentViewRenderView;Lorg/chromium/content_public/browser/WebContents;II)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->M719LIHN(JLjava/lang/Object;Ljava/lang/Object;II)V

    return-void
.end method

.method public setCurrentWebContents(JLorg/chromium/components/embedder_support/view/ContentViewRenderView;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MVaqBcNY(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setOverlayVideoMode(JLorg/chromium/components/embedder_support/view/ContentViewRenderView;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MPNypfRc(JLjava/lang/Object;Z)V

    return-void
.end method

.method public surfaceChanged(JLorg/chromium/components/embedder_support/view/ContentViewRenderView;IIILandroid/view/Surface;Landroid/window/InputTransferToken;)Ljava/lang/Integer;
    .locals 0

    invoke-static/range {p1 .. p8}, LJ/N;->MS0NVCmv(JLjava/lang/Object;IIILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method public surfaceCreated(JLorg/chromium/components/embedder_support/view/ContentViewRenderView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MHtpxjbd(JLjava/lang/Object;)V

    return-void
.end method

.method public surfaceDestroyed(JLorg/chromium/components/embedder_support/view/ContentViewRenderView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MABd50C6(JLjava/lang/Object;)V

    return-void
.end method
