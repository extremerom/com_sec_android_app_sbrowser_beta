.class interface abstract Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView$TabViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TabViewDelegate"
.end annotation


# virtual methods
.method public abstract closeAllTabs()V
.end method

.method public abstract closeUnlockedMember(I)V
.end method

.method public abstract getCurrentTabId()I
.end method

.method public abstract getFavicon(I)Landroid/graphics/Bitmap;
.end method

.method public abstract getFilter()Ljava/lang/String;
.end method

.method public abstract getGroupColor(Ljava/lang/String;)I
.end method

.method public abstract getOriginalTabList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTabLoader()Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/TabLoader;
.end method

.method public abstract getTabPosition(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)I
.end method

.method public abstract isCardView()Z
.end method

.method public abstract isMultiTabAnimating()Z
.end method

.method public abstract isSearchBarShowing()Z
.end method

.method public abstract onLongClick(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)V
.end method

.method public abstract onUnlockTab(I)V
.end method

.method public abstract setCloseDialog(Lm/l;)V
.end method

.method public abstract shouldIgnoreClicked()Z
.end method

.method public abstract showNoTabViewIfRequired()V
.end method

.method public abstract startCloseTabAnimation(IZZ)V
.end method
