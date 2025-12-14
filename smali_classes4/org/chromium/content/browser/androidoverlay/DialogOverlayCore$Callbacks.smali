.class Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Callbacks;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Callbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;


# direct methods
.method private constructor <init>(Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Callbacks;->this$0:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Callbacks;-><init>(Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;)V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Callbacks;->this$0:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

    invoke-static {v0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->a(Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Callbacks;->this$0:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

    invoke-static {v0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->b(Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;)Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Host;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Callbacks;->this$0:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

    invoke-static {p0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->b(Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;)Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Host;

    move-result-object p0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Host;->onSurfaceReady(Landroid/view/Surface;)V

    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    iget-object p1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Callbacks;->this$0:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

    invoke-static {p1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->a(Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;)Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Callbacks;->this$0:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

    invoke-static {p1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->b(Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;)Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Host;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Callbacks;->this$0:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

    invoke-static {p1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->b(Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;)Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Host;

    move-result-object p1

    invoke-interface {p1}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Host;->onOverlayDestroyed()V

    iget-object p0, p0, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore$Callbacks;->this$0:Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;

    invoke-static {p0}, Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;->c(Lorg/chromium/content/browser/androidoverlay/DialogOverlayCore;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
