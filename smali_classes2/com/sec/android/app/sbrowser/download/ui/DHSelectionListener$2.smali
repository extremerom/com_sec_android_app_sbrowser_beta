.class Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->setSeslLongPressMultiSelectionListener()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->d(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->getItem(I)Landroid/util/Pair;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isDownloading()Z

    move-result p4

    if-eqz p4, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->j(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)I

    move-result p4

    if-ne p3, p4, :cond_2

    return-void

    :cond_2
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->d(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->isActionModeShown()Z

    move-result p4

    if-eqz p4, :cond_4

    const p4, 0x7f0b0441

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/CheckBox;

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->d(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;

    move-result-object p5

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;->isChecked()Z

    move-result v0

    invoke-virtual {p5, v0, p1, p4, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHRecyclerViewAdapter;->setCheckItem(ZLcom/sec/android/app/sbrowser/download/ui/DownloadHistoryItemWrapper;Landroid/widget/CheckBox;Landroid/view/View;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->h(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->h(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->h(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->h(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p4}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->c(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->isSelectAllDownloadList()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->checkSelectAllCheckbox(Z)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->C(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->c(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->updateSelectAllText()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->f(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->updateAppBarInfo()V

    :cond_4
    :goto_2
    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->u(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->t(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->c(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/IDHAppBarView;->updateSelectAllText()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->f(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->updateAppBarInfo()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->h(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->f(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DownloadHistoryUiController;->setTouchActionDowned(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->C(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)V

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->u(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener$2;->this$0:Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;->h(Lcom/sec/android/app/sbrowser/download/ui/DHSelectionListener;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
