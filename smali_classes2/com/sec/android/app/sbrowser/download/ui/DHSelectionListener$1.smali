.class Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/Z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->setSeslMultiSelectedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->h(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->r(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->s(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->z(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->e(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->s(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V

    :cond_0
    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->d(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->z(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->e(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->r(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V

    :cond_1
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->i(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->g(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)I

    move-result p2

    if-eq p2, v1, :cond_6

    :cond_2
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->i(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)I

    move-result p2

    if-ne p2, v1, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->d(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {p2, v2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->s(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->i(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)I

    move-result p2

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->g(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)I

    move-result v2

    if-ne v2, v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->d(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->r(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->g(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->i(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->g(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)I

    move-result v3

    if-le v2, v3, :cond_5

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->g(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)I

    move-result p2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->i(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)I

    move-result v1

    :cond_5
    :goto_0
    if-gt p2, v1, :cond_6

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->h(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->h(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    move v2, v1

    :cond_7
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v4}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->d(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    goto :goto_2

    :cond_8
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    :goto_2
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDownloading()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {v3}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isChecked()Z

    move-result v2

    xor-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->setChecked(Z)V

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->d(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_a
    iget-object v2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->d(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getSelectedItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_3
    move v2, v0

    goto :goto_1

    :cond_b
    if-eqz v2, :cond_d

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->f(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    move-result-object p2

    invoke-interface {p2, v1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->setTouchActionDowned(Z)V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->d(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->y(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->x(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;Landroid/view/View;)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sec/android/app/sbrowser/download/ui/DHAnimationHelper;->setHeightToShift(I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->d(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->isActionModeShown()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->f(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    move-result-object p0

    const/4 p1, 0x3

    invoke-interface {p0, p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->startActionMode(I)V

    goto :goto_4

    :cond_c
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->c(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->f(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->isSelectAllDownloadList()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->checkSelectAllCheckbox(Z)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->c(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->updateSelectAllText()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->f(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->updateAppBarInfo()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$1;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->C(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)V

    :cond_d
    :goto_4
    return-void
.end method
