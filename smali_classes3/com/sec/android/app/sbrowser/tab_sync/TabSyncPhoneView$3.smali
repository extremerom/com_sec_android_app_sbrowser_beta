.class Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->getLongPressMultiSelectionListener()Landroidx/recyclerview/widget/X0;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->u(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getItemViewType(I)I

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getTabSyncListData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->q(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    const/4 p4, 0x0

    iput-boolean p4, p1, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->isSelected:Z

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->q(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Ljava/util/ArrayList;

    move-result-object p4

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->q(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 p4, 0x1

    iput-boolean p4, p1, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->isSelected:Z

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->q(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    iget-object p4, p4, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    iget-boolean p5, p1, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->isSelected:Z

    if-eqz p5, :cond_4

    goto :goto_1

    :cond_4
    const/4 p3, -0x1

    :goto_1
    invoke-virtual {p4, p3}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->setLastSelectedItem(I)V

    iget-object p3, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    iget-object p3, p3, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    iget-boolean p1, p1, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->isSelected:Z

    invoke-virtual {p3, p2, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->selectListItem(Landroid/view/View;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->handleSelectAll()V

    :cond_5
    :goto_2
    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->q(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->u(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->y(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;II)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->u(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildPosition(Landroid/view/View;)I

    move-result v4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->u(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildItemId(Landroid/view/View;)J

    move-result-wide v5

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$3;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->u(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$3;->onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V

    return-void
.end method
