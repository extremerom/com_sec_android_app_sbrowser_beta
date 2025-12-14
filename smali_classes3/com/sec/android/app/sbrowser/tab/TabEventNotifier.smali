.class public Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;
.super Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;
.source "SourceFile"


# instance fields
.field private final mTabObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/tab/TabObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/terrace/TerraceListenerCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;-><init>(Lcom/sec/terrace/TerraceListenerCallback;)V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public activateContents()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onActivateContents()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addObserver(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clear()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearDisplayedGraphics()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onClearDisplayedGraphics()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didAccessInitialDocument()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onDidAccessInitialDocument()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didChangeThemeColor(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->didChangeThemeColor(I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onThemeColorChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onDidEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didFailLoad(ZZILjava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onLoadFailed(ZZILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didFinishLoad(JLjava/lang/String;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->didFinishLoad(JLjava/lang/String;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onLoadFinished(JLjava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didFirstVisuallyNonEmptyPaint()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onFirstVisuallyNonEmptyPaint()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 7

    invoke-super/range {p0 .. p5}, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->didNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onDidNavigateMainFrame(Ljava/lang/String;Ljava/lang/String;ZZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public enableUiControl(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onEnableUiControl(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyFindOnPage(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onFindOnPage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBottomOffsetsForFullscreenChanged(F)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onBottomOffsetsForFullscreenChanged(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCloseContents()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onCloseContents()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onContentHeightChanged()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onContentHeightChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onContentViewIMEVisibilityChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onContentViewIMEVisibilityChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onContentViewSizeChanged()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onContentViewSizeChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onContentsZoomChange(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onContentsZoomChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onContextMenuImageElementBoundsReceived(Landroid/graphics/Rect;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onContextMenuImageElementBoundsReceived(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDidCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V
    .locals 7

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    move-wide v2, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onDidCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDidFinishNavigation(ZZZ)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->onDidFinishNavigation(ZZZ)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onDidFinishNavigation(ZZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDidRetrieveWebState(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onDidRetrieveWebState(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDidStartProvisionalLoadForFrame(ZLjava/lang/String;ZZ)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onDidStartProvisionalLoadForFrame(ZLjava/lang/String;ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDragEntered()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onDragEntered()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFaviconUpdated()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->onFaviconUpdated()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onFaviconUpdated()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFindResult(Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onFindResult(Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onHidden()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onHidden()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onHoverExit()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onHoverExit()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onImageResourceLoadComplete(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onImageResourceLoadComplete(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLoadProgressChanged(D)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onLoadProgressChanged(D)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onMouseWheelScrollStarted()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->onMouseWheelScrollStarted()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onMouseWheelScrollStarted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNavigationStateChangedUpdateTitle()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onNavigationStateChangedUpdateTitle()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNavigationStateChangedUpdateUrl()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onNavigationStateChangedUpdateUrl()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOffsetsForFullscreenChanged(FF)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onOffsetsForFullscreenChanged(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onOpenNewTab(Ljava/lang/String;Ljava/lang/String;IZLcom/sec/terrace/TerraceOrigin;Z)V
    .locals 8

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onOpenNewTab(Ljava/lang/String;Ljava/lang/String;IZLcom/sec/terrace/TerraceOrigin;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPageSavedAs(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onPageSavedAs(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRecognizeArticleResult(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onRecognizeArticleResult(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRenderFrameHostChanged()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onRenderFrameHostChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onReportCrash(ZI)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onReportCrash(ZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onScrollEnded(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->onScrollEnded(II)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onScrollEnded(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onScrollStarted(II)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onScrollStarted(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStartContentIntent(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onStartContentIntent(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTakeFocus(Z)Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onTakeFocus(Z)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onContentViewTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    return v0
.end method

.method public onUpdateTargetUrl(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onUpdateTargetUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateTitle(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onUpdateTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateUrl(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->onUpdateUrl(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onUpdateUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onWebApkFinishedInstalled(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onWebApkFinishedInstalled(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onWebContentsCreated(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v1, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onWebContentsCreated(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->onWebContentsCreated(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public prepareForExtractTextOnImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->prepareForExtractTextOnImage(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public primaryMainDocumentElementAvailable()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onPrimaryMainDocumentElementAvailable()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public processTranslation(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Lcom/sec/terrace/content/common/TerraceImageTranslationRequestType;ZLcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V
    .locals 8
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->processTranslation(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Ljava/lang/String;Lcom/sec/terrace/content/common/TerraceImageTranslationRequestType;ZLcom/sec/terrace/browser/image_text_translation/TerraceImageTextTranslationCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeObserver(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestContext(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceRequestPageContextCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->requestContext(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setIsLoading(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onLoadingStatusChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public shouldBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)Z
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public shouldPerformPullToRefresh()Z
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    instance-of v2, v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/smart_tab_delete/SmartTabDeleteDelegate;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onPullToRefresh()V

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->shouldPerformPullToRefresh()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onPullToRefresh()V

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public surfaceCreated()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onSurfaceCreated()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toggleFullscreenModeForTab(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v1, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onFullscreenModeChanged(ZZ)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TerraceCallbackDecorator;->toggleFullscreenModeForTab(ZZ)V

    return-void
.end method

.method public webSearch(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab/TabEventNotifier;->mTabObservers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/tab/TabObserver;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onWebSearch(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
