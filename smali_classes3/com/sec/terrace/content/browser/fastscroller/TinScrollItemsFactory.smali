.class Lcom/sec/terrace/content/browser/fastscroller/TinScrollItemsFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static create(ILandroid/content/Context;Lorg/chromium/content_public/browser/RenderCoordinates;Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;)Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    invoke-static {}, Lcom/sec/terrace/base/AssertUtil;->assertNotReached()V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lcom/sec/terrace/content/browser/fastscroller/TinGoToBottomScroller;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/terrace/content/browser/fastscroller/TinGoToBottomScroller;-><init>(Landroid/content/Context;Lorg/chromium/content_public/browser/RenderCoordinates;Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/sec/terrace/content/browser/fastscroller/TinGoToTopScroller;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/terrace/content/browser/fastscroller/TinGoToTopScroller;-><init>(Landroid/content/Context;Lorg/chromium/content_public/browser/RenderCoordinates;Lcom/sec/terrace/content/browser/fastscroller/TinBaseScroller$Delegate;)V

    return-object p0
.end method
