.class public interface abstract Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener$1;

    invoke-direct {v0}, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener$1;-><init>()V

    sput-object v0, Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;->EMPTY:Lcom/sec/android/app/sbrowser/common/tab_bar/TabBarListener;

    return-void
.end method


# virtual methods
.method public addNewTabToGroup(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bringToFront()V
    .locals 0

    return-void
.end method

.method public captureBitmap()V
    .locals 0

    return-void
.end method

.method public changeGroupColor(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public closeAllTabs()V
    .locals 0

    return-void
.end method

.method public closeAllTabsInGroup(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public closeOtherTabs(I)V
    .locals 0

    return-void
.end method

.method public closeOtherTabsInGroup(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public closeTab(I)V
    .locals 0

    return-void
.end method

.method public createTab()V
    .locals 0

    return-void
.end method

.method public createTabGroupWithTab(ILjava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public focusOutBottom()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public focusOutLeft()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public focusOutRight()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public focusOutTop()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public groupTab(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public lockTab(I)V
    .locals 0

    return-void
.end method

.method public moveTabGroup(Ljava/lang/String;IZ)V
    .locals 0

    return-void
.end method

.method public moveToOtherGroup(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPopupMenuShown()V
    .locals 0

    return-void
.end method

.method public openInNewTab(I)V
    .locals 0

    return-void
.end method

.method public openInNewTabInGroup(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public openInNewWindow(I)V
    .locals 0

    return-void
.end method

.method public openInOtherWindow(I)V
    .locals 0

    return-void
.end method

.method public renameGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public reopenClosedTab()V
    .locals 0

    return-void
.end method

.method public setCurrentTab(I)V
    .locals 0

    return-void
.end method

.method public swapTab(II)V
    .locals 0

    return-void
.end method

.method public ungroup(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public ungroupTab(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unlockTab(I)V
    .locals 0

    return-void
.end method
