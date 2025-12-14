.class Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/Z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->setSeslOnMultiSelectedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->M(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->N(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->T(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->J(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->N(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    :cond_0
    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->T(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->J(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->M(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->B(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->A(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I

    move-result p1

    if-eq p1, p2, :cond_a

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->B(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->s(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->N(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->B(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->A(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I

    move-result v1

    if-ne v1, p2, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->s(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->M(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->A(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I

    move-result p2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->B(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->A(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I

    move-result v2

    if-le v1, v2, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->A(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->B(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I

    move-result p2

    :cond_4
    if-ne p1, p2, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->s(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->isHeader(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    :goto_0
    if-gt p1, p2, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->C(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->createDeleteMode()V

    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->J(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->w(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)[Z

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->w(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)[Z

    move-result-object v3

    aget-boolean v3, v3, p1

    xor-int/2addr v3, v0

    aput-boolean v3, v2, p1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->s(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    if-eqz v1, :cond_9

    const v2, 0x7f0b0d2a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->s(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->w(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)[Z

    move-result-object v3

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->setSelectedItemBackgroundHighlight(Landroid/view/View;Z)V

    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->s(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->getItemViewType(I)I

    move-result v1

    if-ne v1, v0, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->H(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->H(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->y(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->L(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->H(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->y(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->L(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    :cond_9
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$1;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->Y(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method
