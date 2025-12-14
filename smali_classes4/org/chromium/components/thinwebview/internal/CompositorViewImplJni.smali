.class Lorg/chromium/components/thinwebview/internal/CompositorViewImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$Natives;


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

.method public static get()Lorg/chromium/components/thinwebview/internal/CompositorViewImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/thinwebview/internal/CompositorViewImplJni;

    invoke-direct {v0}, Lorg/chromium/components/thinwebview/internal/CompositorViewImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public destroy(JLorg/chromium/components/thinwebview/internal/CompositorViewImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M_L66GG1(JLjava/lang/Object;)V

    return-void
.end method

.method public init(Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;Lorg/chromium/ui/base/WindowAndroid;I)J
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MPS$crjv(Ljava/lang/Object;Ljava/lang/Object;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public surfaceChanged(JLorg/chromium/components/thinwebview/internal/CompositorViewImpl;IIIZLandroid/view/Surface;)V
    .locals 0

    invoke-static/range {p1 .. p8}, LJ/N;->M5WiS8XV(JLjava/lang/Object;IIIZLjava/lang/Object;)V

    return-void
.end method

.method public surfaceCreated(JLorg/chromium/components/thinwebview/internal/CompositorViewImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MYFXTzso(JLjava/lang/Object;)V

    return-void
.end method

.method public surfaceDestroyed(JLorg/chromium/components/thinwebview/internal/CompositorViewImpl;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->M3gcibnY(JLjava/lang/Object;)V

    return-void
.end method
