.class interface abstract Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl$Natives;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Natives"
.end annotation


# virtual methods
.method public abstract completeInit(JLorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;)V
.end method

.method public abstract destroy(JLorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;)V
.end method

.method public abstract getCompositorOffset(JLorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;Lorg/chromium/gfx/mojom/Rect;)V
.end method

.method public abstract init(Lorg/chromium/content/browser/androidoverlay/DialogOverlayImpl;JJZ)J
.end method

.method public abstract notifyDestroyedSynchronously(J)V
.end method

.method public abstract registerSurface(Landroid/view/Surface;)I
.end method

.method public abstract unregisterSurface(I)V
.end method
