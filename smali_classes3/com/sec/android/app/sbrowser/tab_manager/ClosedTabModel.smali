.class interface abstract Lcom/sec/android/app/sbrowser/tab_manager/ClosedTabModel;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addToClosedTabList(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end method

.method public abstract clearClosedTabs()V
.end method

.method public abstract getClosedTabList(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLatestReopenedPath()Ljava/lang/String;
.end method

.method public abstract hasClosedTab()Z
.end method

.method public abstract reopenClosedTab()I
.end method

.method public abstract reopenClosedTabExceptForTab(I)I
.end method
