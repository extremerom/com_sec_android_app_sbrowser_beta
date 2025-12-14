.class public interface abstract Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader$TabLoaderDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TabLoaderDelegate"
.end annotation


# virtual methods
.method public abstract closeAllTabs()V
.end method

.method public abstract closeMultipleTabs(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract closeTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end method

.method public abstract findStartEndIndexes(II)Le1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Le1/b;"
        }
    .end annotation
.end method

.method public abstract getCurrentTabId()I
.end method

.method public abstract getCurrentTabIndex()I
.end method

.method public abstract getFullscreenBitmapFromMemcache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)Landroid/graphics/Bitmap;
.end method

.method public abstract getGroupColorId(Ljava/lang/String;)I
.end method

.method public abstract getRemovedTabList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTabList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getThumbnailBitmapFromCache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;
.end method

.method public abstract getThumbnailBitmapFromMemcache(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)Landroid/graphics/Bitmap;
.end method

.method public abstract isCardView()Z
.end method

.method public abstract isFirstIntroAnimation()Z
.end method

.method public abstract isListView()Z
.end method

.method public abstract isMultiTabAnimating()Z
.end method

.method public abstract isScrolling()Z
.end method

.method public abstract setCurrentTab(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
.end method

.method public abstract setGroup(ILjava/lang/String;I)V
.end method

.method public abstract undoCloseTab()I
.end method
