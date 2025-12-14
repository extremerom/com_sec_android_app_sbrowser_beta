.class Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/X0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->setSeslLongPressMultiSelectionListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$2;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$2;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->l(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$2;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->notifyDataSetChangedIfRequired()V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$2;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->n(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->updateItemSelectedList(I)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$2;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->j(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->updateActionBarText()V

    if-eqz p2, :cond_2

    const p1, 0x7f0b0742

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$2;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->n(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getSelectedItemsList()Ljava/util/List;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_2
    return-void
.end method

.method public onLongPressMultiSelectionEnded(II)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$2;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->k(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->updateBottomBar()V

    return-void
.end method

.method public onLongPressMultiSelectionStarted(II)V
    .locals 0

    return-void
.end method
