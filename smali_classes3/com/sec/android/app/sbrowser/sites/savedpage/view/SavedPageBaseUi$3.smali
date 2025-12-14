.class Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->setLongPressMultiSelectionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->n(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->access$1000(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Z

    move-result p4

    if-nez p4, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :cond_0
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->o(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->isChecked()Z

    move-result p5

    const/4 v0, 0x1

    if-eqz p5, :cond_1

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->q(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p5, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;I)V

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->p(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageDeleteList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p5

    invoke-virtual {p5, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p5, 0x0

    invoke-virtual {p4, p5}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object p5, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->q(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p5, v1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->v(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;I)V

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->p(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;

    move-result-object p5

    invoke-interface {p5}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageControllerDelegate;->getSavedPageDeleteList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p5

    invoke-virtual {p5, p4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p4, v0}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->setChecked(Z)V

    :goto_0
    iget-object p5, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->n(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    iget-object p5, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->n(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p5, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p5}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->n(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Ljava/util/ArrayList;

    move-result-object p5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz p2, :cond_3

    const p5, 0x7f0b0b66

    invoke-virtual {p2, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/sites/savedpage/model/SavedPageItem;->isChecked()Z

    move-result p4

    invoke-virtual {p2, p4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p2}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->k(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)I

    move-result p2

    const/4 p4, -0x1

    if-ne p2, p4, :cond_4

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p2, p3}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->r(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;I)V

    :cond_4
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->j(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->getSelectAllCheckBox()Landroid/widget/CheckBox;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-virtual {p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->isSelectAllSavedPageList()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->j(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->updateSelectAllTextWithoutContentDescription()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->updateInformativeAppBarInfo()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->s(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->r(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->n(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->j(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageHelper;->updateSelectAllText()V

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->s(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi$3;->this$0:Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;->n(Lcom/sec/android/app/sbrowser/sites/savedpage/view/SavedPageBaseUi;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
