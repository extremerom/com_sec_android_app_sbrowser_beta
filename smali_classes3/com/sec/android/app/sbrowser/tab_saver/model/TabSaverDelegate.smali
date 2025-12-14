.class public interface abstract Lcom/sec/android/app/sbrowser/tab_saver/model/TabSaverDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getContentPageTabIndex()I
.end method

.method public abstract getCurrentIndex(Z)I
.end method

.method public abstract getCurrentTab()Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
.end method

.method public abstract getInstanceId()I
.end method

.method public abstract getTabById(I)Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;
.end method

.method public abstract getTabList(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTotalTabCount()I
.end method

.method public abstract isDestroyed()Z
.end method

.method public abstract isSaveInstanceState()Z
.end method

.method public abstract shouldBeClosed(I)I
.end method
