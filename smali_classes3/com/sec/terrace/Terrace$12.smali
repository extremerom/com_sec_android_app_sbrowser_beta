.class Lcom/sec/terrace/Terrace$12;
.super Lorg/chromium/ui/base/ViewAndroidDelegate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/terrace/Terrace;->createViewAndroidDelegate()Lorg/chromium/ui/base/ViewAndroidDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/terrace/Terrace;


# direct methods
.method public constructor <init>(Lcom/sec/terrace/Terrace;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/terrace/Terrace$12;->this$0:Lcom/sec/terrace/Terrace;

    invoke-direct {p0, p2}, Lorg/chromium/ui/base/ViewAndroidDelegate;-><init>(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method public getViewportInsetBottom()I
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace$12;->this$0:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getBottomControlsHeight()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/Terrace$12;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->t(Lcom/sec/terrace/Terrace;)F

    move-result v0

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace$12;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/Terrace;->k(Lcom/sec/terrace/Terrace;)I

    move-result p0

    sub-int/2addr p0, v0

    return p0
.end method

.method public onBackgroundColorChanged(I)V
    .locals 1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isNightModeEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sec/terrace/browser/prefs/TerracePrefServiceBridge;->isHighContrastModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/terrace/Terrace$12;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/Terrace;->i(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/Terrace$TerraceClient;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/terrace/Terrace$TerraceClient;->onBackgroundColorChanged(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onControlsChanged(IIIII)V
    .locals 3

    iget-object v0, p0, Lcom/sec/terrace/Terrace$12;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/terrace/Terrace$12;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object v0

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-interface {v0, v1, v2}, Lcom/sec/terrace/TerraceListenerCallback;->onOffsetsForFullscreenChanged(FF)V

    iget-object v0, p0, Lcom/sec/terrace/Terrace$12;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->f(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceListenerCallback;

    move-result-object v0

    int-to-float v1, p4

    invoke-interface {v0, v1}, Lcom/sec/terrace/TerraceListenerCallback;->onBottomOffsetsForFullscreenChanged(F)V

    iget-object v0, p0, Lcom/sec/terrace/Terrace$12;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->j(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/terrace/Terrace$12;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->j(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/terrace/content/browser/TinContentViewCore;->onTopControlsChanged(III)V

    iget-object p0, p0, Lcom/sec/terrace/Terrace$12;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {p0}, Lcom/sec/terrace/Terrace;->j(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/content/browser/TinContentViewCore;

    move-result-object p0

    invoke-virtual {p0, p4, p5}, Lcom/sec/terrace/content/browser/TinContentViewCore;->onBottomControlsChanged(II)V

    :cond_0
    return-void
.end method

.method public onCursorChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/Terrace$12;->this$0:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0, p1}, Lcom/sec/terrace/Terrace;->handleCursorChanged(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lorg/chromium/ui/base/ViewAndroidDelegate;->onCursorChanged(I)V

    :cond_0
    return-void
.end method

.method public startDrag(Landroid/view/ViewGroup;Landroid/graphics/Bitmap;Lorg/chromium/ui/dragdrop/DropDataAndroid;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/terrace/Terrace$12;->this$0:Lcom/sec/terrace/Terrace;

    invoke-virtual {v0}, Lcom/sec/terrace/Terrace;->getDragDropHandler()Lcom/sec/terrace/content/browser/TinDragDropHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/terrace/Terrace$12;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->d(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceContextMenuPopulator;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p3}, Lorg/chromium/ui/dragdrop/DropDataAndroid;->hasLink()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Lorg/chromium/ui/dragdrop/DropDataAndroid;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "Terrace"

    const-string v1, "dismiss ContextMenu BEFORE startDrag()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/terrace/Terrace$12;->this$0:Lcom/sec/terrace/Terrace;

    invoke-static {v0}, Lcom/sec/terrace/Terrace;->d(Lcom/sec/terrace/Terrace;)Lcom/sec/terrace/TerraceContextMenuPopulator;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/terrace/TerraceContextMenuPopulator;->dismiss()V

    :cond_1
    iget-object p0, p0, Lcom/sec/terrace/Terrace$12;->this$0:Lcom/sec/terrace/Terrace;

    invoke-virtual {p0}, Lcom/sec/terrace/Terrace;->getDragDropHandler()Lcom/sec/terrace/content/browser/TinDragDropHandler;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/terrace/content/browser/TinDragDropHandler;->startDrag(Landroid/view/ViewGroup;Landroid/graphics/Bitmap;Lorg/chromium/ui/dragdrop/DropDataAndroid;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
