.class public final Landroidx/viewpager2/adapter/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroidx/viewpager2/adapter/d;

.field public b:Landroidx/viewpager2/adapter/e;

.field public c:Landroidx/lifecycle/H;

.field public d:Landroidx/viewpager2/widget/ViewPager2;

.field public e:J

.field public final synthetic f:Landroidx/viewpager2/adapter/FragmentStateAdapter;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/adapter/FragmentStateAdapter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/viewpager2/adapter/f;->f:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroidx/viewpager2/adapter/f;->e:J

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/RecyclerView;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of v0, p0, Landroidx/viewpager2/widget/ViewPager2;

    if-eqz v0, :cond_0

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected ViewPager2 instance. Got: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final b(Z)V
    .locals 11

    iget-object v0, p0, Landroidx/viewpager2/adapter/f;->f:Landroidx/viewpager2/adapter/FragmentStateAdapter;

    invoke-virtual {v0}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->shouldDelayFragmentTransactions()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroidx/viewpager2/adapter/f;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getScrollState()I

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:LN/k;

    invoke-virtual {v1}, LN/k;->g()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->getItemCount()I

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Landroidx/viewpager2/adapter/f;->d:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->getItemCount()I

    move-result v2

    if-lt v1, v2, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0, v1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;->getItemId(I)J

    move-result-wide v1

    iget-wide v3, p0, Landroidx/viewpager2/adapter/f;->e:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_5

    if-nez p1, :cond_5

    return-void

    :cond_5
    iget-object p1, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:LN/k;

    invoke-virtual {p1, v1, v2}, LN/k;->b(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_7

    :cond_6
    iput-wide v1, p0, Landroidx/viewpager2/adapter/f;->e:J

    iget-object p1, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentManager:Landroidx/fragment/app/f0;

    invoke-static {p1, p1}, LV0/c;->d(Landroidx/fragment/app/f0;Landroidx/fragment/app/f0;)Landroidx/fragment/app/a;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    :goto_1
    iget-object v5, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:LN/k;

    invoke-virtual {v5}, LN/k;->g()I

    move-result v5

    if-ge v4, v5, :cond_b

    iget-object v5, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:LN/k;

    invoke-virtual {v5, v4}, LN/k;->d(I)J

    move-result-wide v5

    iget-object v7, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragments:LN/k;

    invoke-virtual {v7, v4}, LN/k;->h(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/fragment/app/Fragment;

    invoke-virtual {v7}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_4

    :cond_7
    iget-wide v8, p0, Landroidx/viewpager2/adapter/f;->e:J

    cmp-long v8, v5, v8

    if-eqz v8, :cond_9

    sget-object v8, Landroidx/lifecycle/C;->STARTED:Landroidx/lifecycle/C;

    invoke-virtual {p1, v7, v8}, Landroidx/fragment/app/a;->l(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/C;)V

    iget-object v8, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentEventDispatcher:Landroidx/viewpager2/adapter/c;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v8, Landroidx/viewpager2/adapter/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-static {v8}, LV0/c;->f(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0

    :cond_9
    move-object v3, v7

    :goto_2
    iget-wide v8, p0, Landroidx/viewpager2/adapter/f;->e:J

    cmp-long v5, v5, v8

    if-nez v5, :cond_a

    const/4 v5, 0x1

    goto :goto_3

    :cond_a
    move v5, v2

    :goto_3
    invoke-virtual {v7, v5}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_b
    if-eqz v3, :cond_d

    sget-object p0, Landroidx/lifecycle/C;->RESUMED:Landroidx/lifecycle/C;

    invoke-virtual {p1, v3, p0}, Landroidx/fragment/app/a;->l(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/C;)V

    iget-object p0, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentEventDispatcher:Landroidx/viewpager2/adapter/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Landroidx/viewpager2/adapter/c;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    invoke-static {p0}, LV0/c;->f(Ljava/util/Iterator;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0

    :cond_d
    :goto_5
    iget-object p0, p1, Landroidx/fragment/app/a;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_f

    iget-boolean p0, p1, Landroidx/fragment/app/a;->g:Z

    if-nez p0, :cond_e

    iput-boolean v2, p1, Landroidx/fragment/app/a;->h:Z

    iget-object p0, p1, Landroidx/fragment/app/a;->r:Landroidx/fragment/app/f0;

    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/f0;->A(Landroidx/fragment/app/a;Z)V

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v1, v0, Landroidx/viewpager2/adapter/FragmentStateAdapter;->mFragmentEventDispatcher:Landroidx/viewpager2/adapter/c;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Landroidx/viewpager2/adapter/c;->a(Ljava/util/List;)V

    goto :goto_6

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This transaction is already being added to the back stack"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_7
    return-void
.end method
