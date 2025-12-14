.class public Lorg/chromium/content_public/browser/WebContentsStatics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# direct methods
.method public static fromRenderFrameHost(Lorg/chromium/content_public/browser/RenderFrameHost;)Lorg/chromium/content_public/browser/WebContents;
    .locals 1

    check-cast p0, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;

    invoke-virtual {p0}, Lorg/chromium/content/browser/framehost/RenderFrameHostImpl;->getRenderFrameHostDelegate()Lorg/chromium/content/browser/framehost/RenderFrameHostDelegate;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, Lorg/chromium/content_public/browser/WebContents;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lorg/chromium/content_public/browser/WebContents;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
