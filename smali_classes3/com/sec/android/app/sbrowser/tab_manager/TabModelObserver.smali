.class interface abstract Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;->EMPTY:Lcom/sec/android/app/sbrowser/tab_manager/TabModelObserver;

    return-void
.end method


# virtual methods
.method public onAllTabsInGroupRemoved(Ljava/lang/String;)V
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

.method public onBackgroundTabOpened(I)V
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

.method public onOtherTabRemoved(IZ)V
    .locals 0

    return-void
.end method

.method public onOtherTabsInGroupRemoved(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 0

    return-void
.end method

.method public onTabGroupOrderChanged(Ljava/lang/String;IZ)V
    .locals 0

    return-void
.end method

.method public onTabMoved(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 0

    return-void
.end method

.method public onTabOrderChanged(II)V
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
