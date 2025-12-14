.class Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/Z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->getSPenMultiSelectedListener()Landroidx/recyclerview/widget/Z0;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->s(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->v(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;I)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->w(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->y(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->u(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->w(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;I)V

    :cond_0
    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->y(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->u(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->v(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->t(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->r(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)I

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->t(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->r(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->r(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->t(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)I

    move-result p2

    :cond_1
    :goto_0
    if-gt p1, p2, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->s(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->s(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->u(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->startActionModeForDelete(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->x(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)V

    return-void

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->s(Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;->getTabSyncListData()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget-boolean v1, v0, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->isSelected:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/sec/android/app/sbrowser/common/model/tab_sync/TabSyncDataVO;->isSelected:Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    iget-object v0, v0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncBaseView;->mTabSyncListAdapter:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncListAdapter;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    goto :goto_1

    :cond_7
    :goto_2
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView$2;->this$0:Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/tab_sync/TabSyncPhoneView;->updateSelectAllLayoutNoDelay()V

    :cond_8
    :goto_3
    return-void
.end method
