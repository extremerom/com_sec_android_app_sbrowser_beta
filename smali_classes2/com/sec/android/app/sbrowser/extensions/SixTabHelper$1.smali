.class Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->registerTabManagerListener(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field instanceId:I

.field final synthetic this$0:Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

.field final synthetic val$currentInstanceId:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    iput p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->val$currentInstanceId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->instanceId:I

    return-void
.end method


# virtual methods
.method public onAllTabsInGroupRemoved(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAllTabsRemoved(Z)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->b(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onAllTabsRemoved(ZI)V

    return-void
.end method

.method public onAllUnlockedTabsInGroupRemoved(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onAllUnlockedTabsRemoved()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->b(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onAllUnlockedTabsRemoved(I)V

    return-void
.end method

.method public onBackgroundTabOpened()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->b(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onBackgroundTabOpened(I)V

    return-void
.end method

.method public onCurrentTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    iget p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->instanceId:I

    invoke-static {v0, p1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->c(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    return-void
.end method

.method public onFocusedTabChanged(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    iget p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->instanceId:I

    invoke-static {v0, p1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->c(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    return-void
.end method

.method public onInstantTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    iget p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->instanceId:I

    invoke-static {v0, p1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->d(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    return-void
.end method

.method public onInstantTabRemoved(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->b(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onTabRemoved(ZI)V

    return-void
.end method

.method public onInstantTabRemoving(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->g(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public onLaunchNewTab(ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->b(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onLaunchNewTab(ZI)V

    return-void
.end method

.method public onOtherTabsInGroupRemoved(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onOtherTabsRemoved(IZ)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->b(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onOtherTabsRemoved(IZI)V

    return-void
.end method

.method public onTabAdded(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;Z)V
    .locals 0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    iget p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->instanceId:I

    invoke-static {p2, p1, p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->d(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    return-void
.end method

.method public onTabDetailsLoaded(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->b(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onTabDetailsLoaded(ILjava/lang/String;I)V

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

.method public onTabMoved(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->e(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;I)V

    return-void
.end method

.method public onTabOrderChanged(ZII)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    invoke-static {p0, p2, p3}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->f(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;II)V

    return-void
.end method

.method public onTabRemoved(Z)V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->b(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onTabRemoved(ZI)V

    return-void
.end method

.method public onTabRemoving(Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->g(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;Lcom/sec/android/app/sbrowser/sbrowser_tab/SBrowserTab;)V

    return-void
.end method

.method public onTabStateLoaded()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper$1;->this$0:Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->b(Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/extensions/SixTabHelper;->onTabStateLoaded(I)V

    return-void
.end method
