.class public interface abstract Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createFrozenTab(Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;Lcom/sec/terrace/TerraceState;ZZZ)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
    .param p1    # Lcom/sec/android/app/sbrowser/tab_saver/model/TabState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/TerraceState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract moveTab(II)V
.end method

.method public abstract moveTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end method

.method public abstract onDetailsRead(ILjava/lang/String;ZLjava/lang/String;I)V
.end method

.method public abstract onRestoreSkipped(IZ)V
.end method

.method public abstract onStateLoaded()V
.end method

.method public abstract setCurrentIndex(ZI)V
.end method

.method public abstract setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end method
