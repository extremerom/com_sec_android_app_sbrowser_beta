.class public interface abstract Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;->EMPTY:Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    return-void
.end method


# virtual methods
.method public onAllTabsInGroupRemoved(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAllTabsRemoved(Z)V
    .locals 0

    return-void
.end method

.method public onAllUnlockedTabsInGroupRemoved(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAllUnlockedTabsRemoved()V
    .locals 0

    return-void
.end method

.method public onBackgroundTabOpened()V
    .locals 0

    return-void
.end method

.method public onBeforeTabHidden(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    return-void
.end method

.method public onCurrentTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    return-void
.end method

.method public onFocusedTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    return-void
.end method

.method public onInstantTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    return-void
.end method

.method public onInstantTabRemoved(Z)V
    .locals 0

    return-void
.end method

.method public onInstantTabRemoving(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    return-void
.end method

.method public onLaunchNewTab(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onOtherTabsInGroupRemoved(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onOtherTabsRemoved(IZ)V
    .locals 0

    return-void
.end method

.method public onTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 0

    return-void
.end method

.method public onTabDetailsLoaded(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onTabGroupChanged(ZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onTabGroupColorChanged(ZLjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onTabGroupNameChanged(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTabGroupOrderChanged(Ljava/lang/String;IZ)V
    .locals 0

    return-void
.end method

.method public onTabGroupUngrouped(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTabGrouped(ZILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTabMoved(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 0

    return-void
.end method

.method public onTabOrderChanged(ZII)V
    .locals 0

    return-void
.end method

.method public onTabRemoved(Z)V
    .locals 0

    return-void
.end method

.method public onTabRemoving(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    return-void
.end method

.method public onTabRestoreSkipped(I)V
    .locals 0

    return-void
.end method

.method public onTabStateLoaded()V
    .locals 0

    return-void
.end method

.method public onTabTearingFinished()V
    .locals 0

    return-void
.end method

.method public onTabUngrouped(ZILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onUnusedTabsClosed()V
    .locals 0

    return-void
.end method
