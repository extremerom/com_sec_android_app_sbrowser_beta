.class public Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;
.super Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;
.source "SourceFile"


# instance fields
.field private final mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

.field private final mTabEventListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab/TabObserver;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;-><init>(Lcom/sec/android/app/sbrowser/tab/TabObserver;)V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V
    .locals 1

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public notifyActivateContents()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->activateContents(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyBackForwardUpdated()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onBackForwardUpdated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyBitmapReceived()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onBitmapReceived(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyBookmarkStatusChanged()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onBookmarkStatusChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyBottomOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;FF)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onBottomOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyBottombarShadowVisibilityChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onBottombarShadowVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyBottombarVisibilityChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onBottombarVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyClearDisplay()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onNotifyClearDisplay(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyCloseTab()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onCloseTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyClosed()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onClosed(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyContentViewIMEVisibilityChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onContentViewIMEVisibilityChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyContentViewSizeChanged()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onContentViewSizeChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyContentViewTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onContentViewTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyContextMenuShown()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onContextMenuShown()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyDeepLinkStatusChanged()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onDeepLinkStatusChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyDidAccessInitialDocument()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onDidAccessInitialDocument()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyDidChangeThemeColor(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onDidChangeThemeColor(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyDidCommitProvisionalLoadForFrame(JZLjava/lang/String;I)V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-wide v4, p1

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onDidCommitProvisionalLoadForFrame(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;JZLjava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyDidEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onDidEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyDidNavigateMainFrame(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onDidNavigateMainFrame(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyDidStartProvisionalLoadForFrame()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onDidStartProvisionalLoadForFrame(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyDragEntered()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onDragEntered()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyExtractTextSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onExtractionSuccess(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyFaviconUpdated()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onUpdatedFavicon(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyFindOnPage(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onFindOnPage(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyFindOnPageResult(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onFindOnPageResult(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyHidden()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onHidden(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyHoverExit()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onHoverExit()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyLoadFailed(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onLoadFailed(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyLoadFinished(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onLoadFinished(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyLoadStarted(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onLoadStarted(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyNativePageEditModeChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onNativePageEditModeChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyNativePageIsReady()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onNativePageIsReady(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyNativePageVisibilityChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onNativePageVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;FF)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onOffsetsForFullscreenChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyOnSaveWebPage()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onSaveWebPage()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyOpenInNewTab(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyOpenInNewTab(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    return-void
.end method

.method public notifyOpenInNewTab(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onOpenInNewTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyPWAStatusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onPWAStatusChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyPageReload(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onNotifyPageReload(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyPageSavedAs(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onPageSavedAs(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyProgressChanged(D)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onProgressChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;D)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyReaderModeFailed()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onReaderModeFailed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyReaderPageVisibilityChanged(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onReaderPageVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyRecognizeArticleResult(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onRecognizeArticleResult(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyRefresh()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onRefresh()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyScrollEnded()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onScrollEnded()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyScrollStarted()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onScrollStarted()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyShow()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onShow(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyShowTabGroupList(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onShowTabGroupList(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyStartContentIntent(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onStartContentIntent(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifySurfaceCreated()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onSurfaceCreated()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyTabChanged(Ljava/lang/String;Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onCurrentTabChanged(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyTabCreated(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onTabCreated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyTabGroupChanged(I)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onTabGroupChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyTabIsLocked(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onTabIsLocked(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyTabThumbnailCreated(ILandroid/graphics/Bitmap;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onTabThumbnailCreated(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyTakeFocus(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onTakeFocus(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyTargetUrlChanged(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onUpdateTargetUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyTitleUpdated(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onTitleUpdated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyToggleFullscreenModeForTab(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onToggleFullscreenModeForTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;ZZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyToolbarShadowVisibilityChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onToolbarShadowVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyToolbarVisibilityChanged(Z)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onToolbarVisibilityChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyUrlChangedWithPreviousUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onUrlChangedWithPrevUrl(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyUrlUpdated(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onUrlUpdated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyWebContentsCreated(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v2, v3, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onWebContentsCreated(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public notifyZoomValueChanged(DZ)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onZoomValueChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;DZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivateContents()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onActivateContents()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyActivateContents()V

    return-void
.end method

.method public onBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyBitmapCompositedLayersConsumeEvent(Landroid/view/MotionEvent;Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;)V

    return-void
.end method

.method public onClearDisplayedGraphics()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onClearDisplayedGraphics()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyClearDisplay()V

    return-void
.end method

.method public onContentHeightChanged()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onContentHeightChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onContentHeightChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onContentViewIMEVisibilityChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onContentViewIMEVisibilityChanged(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyContentViewIMEVisibilityChanged(Z)V

    return-void
.end method

.method public onContentViewSizeChanged()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onContentViewSizeChanged()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyContentViewSizeChanged()V

    return-void
.end method

.method public onContentViewTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onContentViewTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyContentViewTouchEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onContentsZoomChange(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onContentsZoomChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDidAccessInitialDocument()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onDidAccessInitialDocument()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyDidAccessInitialDocument()V

    return-void
.end method

.method public onDidEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onDidEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyDidEnableBitmapCompositionForLayer(Lcom/sec/terrace/content/browser/TerraceBitmapLayer$BitmapLayer;ZZ)V

    return-void
.end method

.method public onDragEntered()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onDragEntered()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyDragEntered()V

    return-void
.end method

.method public onEnableUiControl(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onEnableUiControl(IZ)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyBackForwardUpdated()V

    return-void
.end method

.method public onFindOnPage(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onFindOnPage(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyFindOnPage(Ljava/lang/String;)V

    return-void
.end method

.method public onFindResult(Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onFindResult(Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;)V

    invoke-virtual {p1}, Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;->isFinalUpdate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "TabEventNotifier"

    const-string v1, "onFindResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;->getNumberOfMatches()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/terrace/browser/findinpage/TerraceFindNotificationDetails;->getActiveMatchOrdinal()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyFindOnPageResult(II)V

    return-void
.end method

.method public onHidden()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserver;->onHidden()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;->getRedirectHandler()Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/RedirectHandler;->clear()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onHoverExit()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onHoverExit()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyHoverExit()V

    return-void
.end method

.method public onNavigationStateChangedUpdateUrl()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onNavigationStateChangedUpdateUrl()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTab:Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/common/model/sbrowser_tab/SBrowserTabDelegate;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyUrlUpdated(Ljava/lang/String;)V

    return-void
.end method

.method public onPageSavedAs(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onPageSavedAs(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyPageSavedAs(Ljava/lang/String;)V

    return-void
.end method

.method public onPullToRefresh()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onPullToRefresh()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyRefresh()V

    return-void
.end method

.method public onRenderFrameHostChanged()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onRenderFrameHostChanged()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onRenderFrameHostChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRequestContext(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceRequestPageContextCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->onRequestContext(Landroid/os/Bundle;Lcom/sec/terrace/TerraceRequestPageContextCallback;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onScrollEnded(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onScrollEnded(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyScrollEnded()V

    return-void
.end method

.method public onScrollStarted(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onScrollStarted(II)V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyScrollStarted()V

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onSurfaceCreated()V

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifySurfaceCreated()V

    return-void
.end method

.method public onTakeFocus(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onTakeFocus(Z)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyTakeFocus(Z)V

    return-void
.end method

.method public onUpdateTargetUrl(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sec/android/app/sbrowser/tab/TabObserverDecorator;->onUpdateTargetUrl(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->notifyTargetUrlChanged(Ljava/lang/String;)V

    return-void
.end method

.method public removeEventListener(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;)V
    .locals 1

    invoke-static {p1}, Lcom/sec/terrace/base/AssertUtil;->assertNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestUrlEditMode(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->requestUrlEditMode(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTranslationBottomBarY(FZ)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->setTranslationBottomBarY(FZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTranslationToolBarY(FZ)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0, p1, p2}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->setTranslationToolBarY(FZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setZoomButtonVisibility(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->setZoomButtonVisibility(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public showReloadTipCardIfNeeded()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sbrowser_tab/TabEventNotifier;->mTabEventListenerList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;

    invoke-interface {v0}, Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTabEventListener;->showReloadTipCardIfNeeded()V

    goto :goto_0

    :cond_0
    return-void
.end method
