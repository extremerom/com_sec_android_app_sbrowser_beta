.class Lorg/chromium/content/browser/GpuProcessCallbackJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/GpuProcessCallback$Natives;


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

.method public static get()Lorg/chromium/content/browser/GpuProcessCallback$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/GpuProcessCallbackJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/GpuProcessCallbackJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public completeScopedSurfaceRequest(Lorg/chromium/base/UnguessableToken;Landroid/view/Surface;)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M$O7xE3y(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public getViewSurface(I)Lorg/chromium/content/common/SurfaceWrapper;
    .locals 0

    invoke-static {p1}, LJ/N;->Mm9rCM0m(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/chromium/content/common/SurfaceWrapper;

    return-object p0
.end method
