.class Lorg/chromium/content/browser/androidoverlay/DialogOverlayImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl$Natives;


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

.method public static get()Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImplJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public completeInit(JLorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MQAm7B7f(JLjava/lang/Object;)V

    return-void
.end method

.method public destroy(JLorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MJj9v_ba(JLjava/lang/Object;)V

    return-void
.end method

.method public getCompositorOffset(JLorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;Lorg/chromium/gfx/mojom/Rect;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MAd6qeVr(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public init(Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;JJZ)J
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MqPi0d6D(Ljava/lang/Object;JJZ)J

    move-result-wide p0

    return-wide p0
.end method

.method public notifyDestroyedSynchronously(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MFq0hOYg(J)V

    return-void
.end method

.method public registerSurface(Landroid/view/Surface;)I
    .locals 0

    invoke-static {p1}, LJ/N;->MpcpmTlm(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public unregisterSurface(I)V
    .locals 0

    invoke-static {p1}, LJ/N;->M1e4GdYZ(I)V

    return-void
.end method
