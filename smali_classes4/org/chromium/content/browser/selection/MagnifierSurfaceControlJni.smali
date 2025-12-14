.class Lorg/chromium/content/browser/selection/MagnifierSurfaceControlJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/selection/MagnifierSurfaceControl$Natives;


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

.method public static get()Lorg/chromium/content/browser/selection/MagnifierSurfaceControl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/selection/MagnifierSurfaceControlJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/selection/MagnifierSurfaceControlJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public childLocalSurfaceIdChanged(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MSMhJ61i(J)V

    return-void
.end method

.method public create(Lorg/chromium/content/browser/webcontents/WebContentsImpl;Landroid/view/SurfaceControl;FIIFFIII)J
    .locals 0

    invoke-static/range {p1 .. p10}, LJ/N;->MKu0H5eV(Ljava/lang/Object;Ljava/lang/Object;FIIFFIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public destroy(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MzQ$LFUC(J)V

    return-void
.end method

.method public setReadbackOrigin(JFF)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MKpQUZC1(JFF)V

    return-void
.end method
