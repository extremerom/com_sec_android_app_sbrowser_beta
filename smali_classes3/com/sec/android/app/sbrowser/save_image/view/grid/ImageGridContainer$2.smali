.class Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->setLongPressMultiSelectionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$2;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$2;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->j(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Ljava/util/ArrayList;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$2;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->f(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;

    move-result-object p4

    invoke-virtual {p4, p3}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridAdapter;->getItem(I)Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->getState()I

    move-result p5

    if-nez p5, :cond_1

    const p5, 0x7f0b0a34

    invoke-virtual {p2, p5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isChecked()Z

    move-result p5

    xor-int/lit8 p5, p5, 0x1

    invoke-virtual {p2, p5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p4}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->isChecked()Z

    move-result p5

    xor-int/lit8 p5, p5, 0x1

    invoke-virtual {p4, p5}, Lcom/sec/android/app/sbrowser/save_image/model/SaveImageItem;->setChecked(Z)V

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$2;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->j(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$2;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->j(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p4, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$2;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p4}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->j(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$2;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->i(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$ImageGridEventListener;->onItemChecked()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$2;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->n(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$2;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->j(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$2;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->n(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer$2;->this$0:Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;->j(Lcom/sec/android/app/sbrowser/save_image/view/grid/ImageGridContainer;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
