.class Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapterListner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/view/View;I)Z
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->D(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->C(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->w(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)[Z

    move-result-object v0

    aget-boolean v0, v0, p2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->E(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->G(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I

    move-result p1

    if-ne p1, v4, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->y(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->P(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->U(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->w(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)[Z

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->w(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)[Z

    move-result-object v5

    aget-boolean v5, v5, p2

    xor-int/2addr v5, v2

    aput-boolean v5, v3, p2

    const v3, 0x7f0b0d2a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    xor-int/2addr v5, v2

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->H(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->H(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->H(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->y(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {p1, v3}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->L(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->H(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->y(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v3, v5}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->L(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v3, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->W(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Landroid/view/View;)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    if-eqz v0, :cond_5

    move p2, v4

    :cond_5
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->P(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->y(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I

    move-result p2

    if-lez p2, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->setDeleteVisibility(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->Y(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->E(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->P(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->U(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->P(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->createDeleteMode()V

    :cond_8
    :goto_1
    return v2
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->D(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->C(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Z

    move-result v0

    const v1, 0x7f0b0d2a

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->s(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->J(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->w(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)[Z

    move-result-object v0

    aget-boolean v0, v0, p2

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->w(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)[Z

    move-result-object v0

    aput-boolean v2, v0, p2

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->J(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->H(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->y(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->L(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->W(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->s(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->w(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)[Z

    move-result-object v1

    aget-boolean v1, v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->setSelectedItemBackgroundHighlight(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->Y(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->createDeleteMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->J(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->H(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->y(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->L(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->W(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;Landroid/view/View;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->w(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)[Z

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->w(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)[Z

    move-result-object v3

    aget-boolean v3, v3, p2

    xor-int/2addr v3, v2

    aput-boolean v3, v1, p2

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->s(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->w(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)[Z

    move-result-object v1

    aget-boolean v1, v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesAdapter;->setSelectedItemBackgroundHighlight(Landroid/view/View;Z)V

    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->Y(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)V

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->P(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;I)V

    return v2
.end method

.method public setBottombarFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData$5;->this$0:Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;->z(Lcom/sec/android/app/sbrowser/settings/TemporarilySiteCookiesData;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
