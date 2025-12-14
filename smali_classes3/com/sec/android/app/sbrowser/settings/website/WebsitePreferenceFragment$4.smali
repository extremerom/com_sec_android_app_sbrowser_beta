.class Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapterListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->lambda$onChildClick$0(I)V

    return-void
.end method

.method private synthetic lambda$onChildClick$0(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->u(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    return-void
.end method


# virtual methods
.method public isInActionMode()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->E(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Z

    move-result p0

    return p0
.end method

.method public isSearchViewVisible()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->W(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Z

    move-result p0

    return p0
.end method

.method public onChildClick(Landroid/view/View;I)Z
    .locals 8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->F(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->u(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->getItemViewType(I)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->u(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->isSearchViewVisible()Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->E(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->x(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)[Z

    move-result-object v0

    aget-boolean v0, v0, p2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->G(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_3

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->I(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result p1

    if-ne p1, v4, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->z(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->S(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;I)V

    :cond_2
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->V(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;I)V

    goto/16 :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->x(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)[Z

    move-result-object v3

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->x(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)[Z

    move-result-object v5

    aget-boolean v5, v5, p2

    xor-int/2addr v5, v2

    aput-boolean v5, v3, p2

    const v3, 0x7f0b0e4f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/view/View;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    xor-int/2addr v5, v2

    invoke-virtual {v3, v5}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->K(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->K(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v6}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->K(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->z(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result v6

    sub-int/2addr v6, v2

    invoke-static {v5, v6}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->O(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;I)V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->K(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->z(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result v6

    add-int/2addr v6, v2

    invoke-static {v5, v6}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->O(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;I)V

    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v5, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->Y(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;Landroid/view/View;)V

    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v5}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->u(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    move-result-object v5

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-virtual {v5, p1, v3, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->setContentDescription(Landroid/view/View;ZI)V

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->isSearchViewVisible()Z

    move-result p1

    xor-int/2addr p1, v2

    add-int/2addr p1, p2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->D(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Landroid/os/Handler;

    move-result-object v3

    new-instance v5, Lcom/sec/android/app/sbrowser/settings/website/k;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v6, p0}, Lcom/sec/android/app/sbrowser/settings/website/k;-><init>(IILjava/lang/Object;)V

    const-wide/16 v6, 0x64

    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    if-eqz v0, :cond_6

    move p2, v4

    :cond_6
    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->S(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->z(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result p2

    if-lez p2, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {p1, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->setDeleteVisibility(Z)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->b0(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)V

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->G(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1, v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->S(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->V(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->S(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;I)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->createDeleteMode()V

    :cond_9
    :goto_2
    return v2

    :cond_a
    :goto_3
    return v1
.end method

.method public onItemLongClick(Landroid/view/View;I)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->F(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->u(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->getItemViewType(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->u(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->isSearchViewVisible()Z

    move-result v0

    if-nez v0, :cond_1

    add-int/lit8 p2, p2, -0x1

    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->getScreenID()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    const v3, 0x7f140cf5

    invoke-virtual {v2, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/common/logging/SALogging;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->E(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Z

    move-result v0

    const v2, 0x7f0b0e4f

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->isSearchViewVisible()Z

    move-result v0

    xor-int/2addr v0, v1

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->u(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    move-result-object v3

    add-int/2addr v0, p2

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/u0;->notifyItemChanged(I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->M(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WDRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->x(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)[Z

    move-result-object v0

    aget-boolean v0, v0, p2

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->x(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)[Z

    move-result-object v0

    aput-boolean v1, v0, p2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->toggle()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->M(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WDRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->K(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->z(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->O(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->Y(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->u(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->x(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)[Z

    move-result-object v2

    aget-boolean v2, v2, p2

    invoke-virtual {v0, p1, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->setSelectedItemBackgroundHighlight(Landroid/view/View;Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->b0(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->createDeleteMode()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->M(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WDRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->seslStartLongPressMultiSelection()V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->K(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->z(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v0, v3}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->O(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;I)V

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0, p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->Y(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;Landroid/view/View;)V

    if-eqz p1, :cond_4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->x(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)[Z

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v3}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->x(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)[Z

    move-result-object v3

    aget-boolean v3, v3, p2

    xor-int/2addr v3, v1

    aput-boolean v3, v2, p2

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->u(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {v2}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->x(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)[Z

    move-result-object v2

    aget-boolean v2, v2, p2

    invoke-virtual {v0, p1, v2}, Lcom/sec/android/app/sbrowser/settings/website/WebsiteListAdapter;->setSelectedItemBackgroundHighlight(Landroid/view/View;Z)V

    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->b0(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)V

    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p0, p2}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->S(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;I)V

    return v1

    :cond_6
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public setBottombarFocus()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment$4;->this$0:Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;->A(Lcom/sec/android/app/sbrowser/settings/website/WebsitePreferenceFragment;)Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
