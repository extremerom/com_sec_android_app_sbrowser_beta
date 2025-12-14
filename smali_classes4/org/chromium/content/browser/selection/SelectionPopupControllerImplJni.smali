.class public Lorg/chromium/content/browser/selection/SelectionPopupControllerImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$Natives;


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

.method public static get()Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/content/browser/selection/SelectionPopupControllerImplJni;

    invoke-direct {v0}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getTouchHandleRects(JLorg/chromium/content/browser/selection/SelectionPopupControllerImpl;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MEQBfFCb(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0
.end method

.method public init(Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;Lorg/chromium/content_public/browser/WebContents;)J
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MJHXNa8U(Ljava/lang/Object;Ljava/lang/Object;)J

    move-result-wide p0

    return-wide p0
.end method

.method public isMagnifierWithSurfaceControlSupported()Z
    .locals 0

    invoke-static {}, LJ/N;->MAdhDiCp()Z

    move-result p0

    return p0
.end method

.method public setTextHandlesHiddenForDropdownMenu(JLorg/chromium/content/browser/selection/SelectionPopupControllerImpl;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M_b3xvNv(JLjava/lang/Object;Z)V

    return-void
.end method

.method public setTextHandlesTemporarilyHidden(JLorg/chromium/content/browser/selection/SelectionPopupControllerImpl;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M01adZlM(JLjava/lang/Object;Z)V

    return-void
.end method
