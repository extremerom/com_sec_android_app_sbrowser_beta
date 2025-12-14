.class public interface abstract Lorg/chromium/components/stylus_handwriting/StylusApiOption;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/stylus_handwriting/StylusApiOption$Api;
    }
.end annotation

.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static recordStylusHandwritingTriggered(I)V
    .locals 2

    const-string v0, "InputMethod.StylusHandwriting.Triggered"

    const/4 v1, 0x2

    invoke-static {v0, p0, v1}, Lorg/chromium/base/metrics/RecordHistogram;->recordEnumeratedHistogram(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public abstract getStylusPointerIcon()I
.end method

.method public hideHandwritingToolbar()V
    .locals 0

    return-void
.end method

.method public abstract onWebContentsChanged(Landroid/content/Context;Lorg/chromium/content_public/browser/WebContents;)V
.end method

.method public updateHandlerState(Landroid/content/Context;Z)V
    .locals 0

    return-void
.end method
