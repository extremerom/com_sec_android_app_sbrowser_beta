.class Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager$1;
.super Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->initializeScrollbarScroller()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;Landroid/content/Context;Lorg/chromium/content_public/browser/RenderCoordinates;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager$1;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    invoke-direct {p0, p2, p3}, Lcom/sec/terrace/content/browser/fastscroller/TinScrollbarScroller;-><init>(Landroid/content/Context;Lorg/chromium/content_public/browser/RenderCoordinates;)V

    return-void
.end method


# virtual methods
.method public blockTopControlsUpdate()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager$1;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->blockTopControlsUpdate()V

    return-void
.end method

.method public isScrollInProgress()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager$1;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->isScrollInProgress()Z

    move-result p0

    return p0
.end method

.method public notifyFastScrollerEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager$1;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->notifyFastScrollerEnabled(Z)V

    return-void
.end method

.method public restoreTopControlsState()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager$1;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->restoreTopControlsState()V

    return-void
.end method

.method public runScrollbarVibrate()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager$1;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->runScrollbarVibrate()V

    return-void
.end method

.method public scrollBegin()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager$1;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->scrollBegin()V

    return-void
.end method

.method public scrollBy(F)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager$1;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->scrollBy(F)V

    return-void
.end method

.method public scrollEnd()V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager$1;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    invoke-virtual {p0}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->scrollEnd()V

    return-void
.end method

.method public setScrollbarScrollerBitmap(ILandroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager$1;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->setFastScrollBitmap(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public updateLayerAppearance(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager$1;->this$0:Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;

    invoke-virtual {p0, p1, p2}, Lcom/sec/terrace/content/browser/fastscroller/TinFastScrollManager;->updateLayerAppearance(IZ)V

    return-void
.end method
