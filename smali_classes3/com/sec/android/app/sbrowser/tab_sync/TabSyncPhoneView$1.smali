.class Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/tab_sync/TabSyncActionMode$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$1;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteTabs()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$1;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getTabSyncListData()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->deleteTabs(Ljava/util/List;)V

    return-void
.end method

.method public getActivityStatus()Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$1;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->getActivityStatus()Lcom/sec/android/app/sbrowser/tab_sync/TabSyncConstants$ActivityStatus;

    move-result-object p0

    return-object p0
.end method

.method public getGroupCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$1;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getGroupCount()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getSelectedCount()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$1;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getSelectedCount()I

    move-result p0

    :goto_0
    return p0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$1;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onCancelBtnClicked()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$1;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->handleDestroyActionMode()V

    return-void
.end method

.method public resetContentHeightWithDelay()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$1;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->z(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)V

    return-void
.end method

.method public selectAll(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$1;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->selectAll(Z)V

    return-void
.end method

.method public setCollapsingToolbarTitle(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$1;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->p(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
