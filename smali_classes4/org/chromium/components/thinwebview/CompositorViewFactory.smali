.class public Lorg/chromium/components/thinwebview/CompositorViewFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static create(Landroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/components/thinwebview/ThinWebViewConstraints;)Lorg/chromium/components/thinwebview/CompositorView;
    .locals 1

    new-instance v0, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/components/thinwebview/internal/CompositorViewImpl;-><init>(Landroid/content/Context;Lorg/chromium/ui/base/WindowAndroid;Lorg/chromium/components/thinwebview/ThinWebViewConstraints;)V

    return-object v0
.end method
