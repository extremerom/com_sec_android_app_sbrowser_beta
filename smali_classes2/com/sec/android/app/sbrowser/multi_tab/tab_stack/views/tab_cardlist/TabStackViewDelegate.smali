.class public interface abstract Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/views/tab_cardlist/TabStackViewDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract closeUnlockedMember(I)V
.end method

.method public abstract dismissChild(IF)V
.end method

.method public abstract exitSearchMode()V
.end method

.method public abstract getCurrentGroup()Ljava/lang/String;
.end method

.method public abstract getGroupColor(Ljava/lang/String;)I
.end method

.method public abstract getScrollPosition()I
.end method

.method public abstract getTabIndex(Lcom/sec/android/app/sbrowser/multi_tab/tab_stack/model/Tab;)I
.end method

.method public abstract goToRootIfNoMemberInCurrentGroup()V
.end method

.method public abstract hasLockedTab(Ljava/lang/String;)Z
.end method

.method public abstract isCardView()Z
.end method

.method public abstract isSearchBarShowing()Z
.end method

.method public abstract isSecretMode()Z
.end method

.method public abstract searchTabs()V
.end method

.method public abstract sendSALoggingForTabClick(ZZ)V
.end method

.method public abstract sendSALoggingForTabSwipe()V
.end method

.method public abstract setCloseDialog(Lm/l;)V
.end method

.method public abstract setCurrentTab(Ljava/lang/String;)V
.end method

.method public abstract setScrollPosition(I)V
.end method

.method public abstract shouldIgnoreClicked()Z
.end method

.method public abstract showNoTabViewIfRequired()V
.end method

.method public abstract snapChild(I)V
.end method

.method public abstract startCloseTabAnimation(IZZ)V
.end method

.method public abstract updateTabStacks()V
.end method
