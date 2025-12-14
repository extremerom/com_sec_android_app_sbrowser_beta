.class Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/recyclerview/widget/Z0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->setSeslOnMultiSelectedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMultiSelectStart(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->P(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;I)V

    invoke-static {v0, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->Q(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->M(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WDRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WDRecyclerView;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->M(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WDRecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->Q(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;I)V

    :cond_0
    return-void
.end method

.method public onMultiSelectStop(II)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->M(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WDRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WDRecyclerView;->getChildAt(II)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->M(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WDRecyclerView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->P(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;I)V

    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->C(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->B(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result p1

    if-eq p1, p2, :cond_b

    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->C(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, p2, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->u(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->Q(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;I)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->C(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result p1

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->B(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result v1

    if-ne v1, p2, :cond_3

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->u(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-static {p2, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->P(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;I)V

    :cond_3
    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->B(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result p2

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->C(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->B(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result v2

    if-le v1, v2, :cond_4

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->B(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result p1

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->C(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result p2

    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->W(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    if-nez p1, :cond_5

    move p1, v0

    :cond_5
    move v1, v0

    goto :goto_0

    :cond_6
    move v1, v2

    :goto_0
    if-gt p1, p2, :cond_8

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->x(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)[Z

    move-result-object v3

    sub-int v4, p1, v1

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->x(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)[Z

    move-result-object v5

    aget-boolean v5, v5, v4

    xor-int/2addr v5, v0

    aput-boolean v5, v3, v4

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->u(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->K(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->K(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->z(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result v4

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->O(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;I)V

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->K(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->z(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->O(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;I)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->E(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-virtual {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->createDeleteMode()V

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->z(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result p2

    if-lez p2, :cond_a

    goto :goto_2

    :cond_a
    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->setDeleteVisibility(Z)V

    :goto_3
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$1;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->b0(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)V

    :cond_b
    return-void
.end method
