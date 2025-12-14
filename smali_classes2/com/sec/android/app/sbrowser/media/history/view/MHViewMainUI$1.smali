.class Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/Z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->setSeslSPenMultiSelectedListener()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->q(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;I)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->r(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->s(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->m(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->r(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;I)V

    :cond_0
    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->s(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->m(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->q(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->o(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->p(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)I

    move-result p1

    if-eq p1, p2, :cond_8

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->p(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->n(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->r(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;I)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->p(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->o(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)I

    move-result v1

    if-ne v1, p2, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->n(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->q(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;I)V

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->o(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)I

    move-result p2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->p(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->o(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)I

    move-result v2

    if-le v1, v2, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->o(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->p(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)I

    move-result p2

    :cond_4
    :goto_0
    if-gt p1, p2, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->n(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;->updateItemSelectedList(I)V

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->m(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/h1;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v1, v1, Landroidx/recyclerview/widget/h1;->itemView:Landroid/view/View;

    const v2, 0x7f0b0742

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->l(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->startActionMode()V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->n(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->j(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewAppBar;->updateActionBarText()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI$1;->this$0:Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;->k(Lcom/sec/android/app/sbrowser/media/history/view/MHViewMainUI;)Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/media/history/view/MHViewBottomBar;->updateBottomBar()V

    :cond_8
    return-void
.end method
