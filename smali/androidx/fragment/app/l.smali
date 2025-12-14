.class public final Landroidx/fragment/app/l;
.super Landroidx/fragment/app/E0;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/ArrayList;

.field public final d:Landroidx/fragment/app/F0;

.field public final e:Landroidx/fragment/app/F0;

.field public final f:Landroidx/fragment/app/x0;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public final j:LN/f;

.field public final k:Ljava/util/ArrayList;

.field public final l:Ljava/util/ArrayList;

.field public final m:LN/f;

.field public final n:LN/f;

.field public final o:Z

.field public final p:Lb1/b;

.field public q:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Landroidx/fragment/app/F0;Landroidx/fragment/app/F0;Landroidx/fragment/app/x0;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;LN/f;Ljava/util/ArrayList;Ljava/util/ArrayList;LN/f;LN/f;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/l;->c:Ljava/util/ArrayList;

    iput-object p2, p0, Landroidx/fragment/app/l;->d:Landroidx/fragment/app/F0;

    iput-object p3, p0, Landroidx/fragment/app/l;->e:Landroidx/fragment/app/F0;

    iput-object p4, p0, Landroidx/fragment/app/l;->f:Landroidx/fragment/app/x0;

    iput-object p5, p0, Landroidx/fragment/app/l;->g:Ljava/lang/Object;

    iput-object p6, p0, Landroidx/fragment/app/l;->h:Ljava/util/ArrayList;

    iput-object p7, p0, Landroidx/fragment/app/l;->i:Ljava/util/ArrayList;

    iput-object p8, p0, Landroidx/fragment/app/l;->j:LN/f;

    iput-object p9, p0, Landroidx/fragment/app/l;->k:Ljava/util/ArrayList;

    iput-object p10, p0, Landroidx/fragment/app/l;->l:Ljava/util/ArrayList;

    iput-object p11, p0, Landroidx/fragment/app/l;->m:LN/f;

    iput-object p12, p0, Landroidx/fragment/app/l;->n:LN/f;

    iput-boolean p13, p0, Landroidx/fragment/app/l;->o:Z

    new-instance p1, Lb1/b;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/l;->p:Lb1/b;

    return-void
.end method

.method public static f(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isTransitionGroup()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2, p1}, Landroidx/fragment/app/l;->f(Landroid/view/View;Ljava/util/ArrayList;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    iget-object v0, p0, Landroidx/fragment/app/l;->f:Landroidx/fragment/app/x0;

    invoke-virtual {v0}, Landroidx/fragment/app/x0;->l()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroidx/fragment/app/l;->c:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/m;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-lt v3, v4, :cond_3

    iget-object v2, v2, Landroidx/fragment/app/m;->b:Ljava/lang/Object;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Landroidx/fragment/app/x0;->m(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p0, p0, Landroidx/fragment/app/l;->g:Ljava/lang/Object;

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Landroidx/fragment/app/x0;->m(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public final b(Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "container"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/fragment/app/l;->p:Lb1/b;

    invoke-virtual {p0}, Lb1/b;->a()V

    return-void
.end method

.method public final c(Landroid/view/ViewGroup;)V
    .locals 14

    const-string v0, "container"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/l;->c:Ljava/util/ArrayList;

    const/4 v2, 0x2

    const-string v3, "FragmentManager"

    if-nez v0, :cond_2

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/m;

    iget-object v4, v1, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/F0;

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SpecialEffectsController: Container "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " has not been laid out. Completing operation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, v1, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/F0;

    invoke-virtual {v1, p0}, Landroidx/fragment/app/F0;->c(Landroidx/fragment/app/E0;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Landroidx/fragment/app/l;->q:Ljava/lang/Object;

    iget-object v4, p0, Landroidx/fragment/app/l;->f:Landroidx/fragment/app/x0;

    const-string v5, " to "

    iget-object v6, p0, Landroidx/fragment/app/l;->e:Landroidx/fragment/app/F0;

    iget-object v7, p0, Landroidx/fragment/app/l;->d:Landroidx/fragment/app/F0;

    if-eqz v0, :cond_3

    invoke-virtual {v4, v0}, Landroidx/fragment/app/x0;->c(Ljava/lang/Object;)V

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Ending execution of operations from "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p1, v6, v7}, Landroidx/fragment/app/l;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/F0;Landroidx/fragment/app/F0;)Ldb/j;

    move-result-object v0

    iget-object v8, v0, Ldb/j;->a:Ljava/lang/Object;

    check-cast v8, Ljava/util/ArrayList;

    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v1, v10}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/fragment/app/m;

    iget-object v10, v10, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/F0;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    iget-object v10, v0, Ldb/j;->b:Ljava/lang/Object;

    if-eqz v9, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/fragment/app/F0;

    iget-object v11, v9, Landroidx/fragment/app/F0;->c:Landroidx/fragment/app/Fragment;

    new-instance v12, Landroidx/fragment/app/i;

    const/4 v13, 0x1

    invoke-direct {v12, v9, p0, v13}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/F0;Landroidx/fragment/app/l;I)V

    iget-object v9, p0, Landroidx/fragment/app/l;->p:Lb1/b;

    invoke-virtual {v4, v11, v10, v9, v12}, Landroidx/fragment/app/x0;->u(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Lb1/b;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    new-instance v0, Landroidx/fragment/app/k;

    invoke-direct {v0, p0, p1, v10}, Landroidx/fragment/app/k;-><init>(Landroidx/fragment/app/l;Landroid/view/ViewGroup;Ljava/lang/Object;)V

    invoke-virtual {p0, v8, p1, v0}, Landroidx/fragment/app/l;->i(Ljava/util/ArrayList;Landroid/view/ViewGroup;Lsb/a;)V

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Completed executing operations from "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    return-void
.end method

.method public final d(Landroidx/activity/b;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Landroidx/fragment/app/l;->q:Ljava/lang/Object;

    if-eqz p2, :cond_0

    iget-object p0, p0, Landroidx/fragment/app/l;->f:Landroidx/fragment/app/x0;

    iget p1, p1, Landroidx/activity/b;->c:F

    invoke-virtual {p0, p2, p1}, Landroidx/fragment/app/x0;->r(Ljava/lang/Object;F)V

    :cond_0
    return-void
.end method

.method public final e(Landroid/view/ViewGroup;)V
    .locals 11

    const-string v0, "container"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    iget-object v1, p0, Landroidx/fragment/app/l;->c:Ljava/util/ArrayList;

    const-string v2, "FragmentManager"

    if-nez v0, :cond_2

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/m;

    iget-object v0, v0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/F0;

    const/4 v1, 0x2

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "SpecialEffectsController: Container "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has not been laid out. Skipping onStart for operation "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/l;->h()Z

    move-result v0

    iget-object v3, p0, Landroidx/fragment/app/l;->e:Landroidx/fragment/app/F0;

    iget-object v4, p0, Landroidx/fragment/app/l;->d:Landroidx/fragment/app/F0;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/fragment/app/l;->g:Ljava/lang/Object;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/l;->a()Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Ignoring shared elements transition "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " between "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " as neither fragment has set a Transition. In order to run a SharedElementTransition, you must also set either an enter or exit transition on a fragment involved in the transaction. The sharedElementTransition will run after the back gesture has been committed."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/l;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/l;->h()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v9, Ltb/w;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, v3, v4}, Landroidx/fragment/app/l;->g(Landroid/view/ViewGroup;Landroidx/fragment/app/F0;Landroidx/fragment/app/F0;)Ldb/j;

    move-result-object v0

    iget-object v2, v0, Ldb/j;->a:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lfb/p;->m(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/m;

    iget-object v4, v4, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/F0;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v8, v0, Ldb/j;->b:Ljava/lang/Object;

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/F0;

    new-instance v4, Landroidx/fragment/app/v;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v9}, Landroidx/fragment/app/v;-><init>(ILjava/lang/Object;)V

    iget-object v5, v3, Landroidx/fragment/app/F0;->c:Landroidx/fragment/app/Fragment;

    new-instance v5, Landroidx/fragment/app/i;

    const/4 v6, 0x0

    invoke-direct {v5, v3, p0, v6}, Landroidx/fragment/app/i;-><init>(Landroidx/fragment/app/F0;Landroidx/fragment/app/l;I)V

    iget-object v3, p0, Landroidx/fragment/app/l;->f:Landroidx/fragment/app/x0;

    iget-object v6, p0, Landroidx/fragment/app/l;->p:Lb1/b;

    invoke-virtual {v3, v8, v6, v4, v5}, Landroidx/fragment/app/x0;->v(Ljava/lang/Object;Lb1/b;Landroidx/fragment/app/v;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_5
    new-instance v0, LA1/d;

    const/4 v10, 0x2

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v5 .. v10}, LA1/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, v2, p1, v0}, Landroidx/fragment/app/l;->i(Ljava/util/ArrayList;Landroid/view/ViewGroup;Lsb/a;)V

    :cond_6
    return-void
.end method

.method public final g(Landroid/view/ViewGroup;Landroidx/fragment/app/F0;Landroidx/fragment/app/F0;)Ldb/j;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v5, Landroid/view/View;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, v0, Landroidx/fragment/app/l;->c:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    iget-object v15, v0, Landroidx/fragment/app/l;->i:Ljava/util/ArrayList;

    iget-object v14, v0, Landroidx/fragment/app/l;->h:Ljava/util/ArrayList;

    iget-object v9, v0, Landroidx/fragment/app/l;->f:Landroidx/fragment/app/x0;

    iget-object v4, v0, Landroidx/fragment/app/l;->g:Ljava/lang/Object;

    if-eqz v13, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/fragment/app/m;

    iget-object v13, v13, Landroidx/fragment/app/m;->d:Ljava/lang/Object;

    if-eqz v13, :cond_3

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    iget-object v13, v0, Landroidx/fragment/app/l;->j:LN/f;

    invoke-virtual {v13}, LN/A;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    if-eqz v4, :cond_3

    iget-object v13, v0, Landroidx/fragment/app/l;->m:LN/f;

    sget-object v16, Landroidx/fragment/app/q0;->a:Landroidx/fragment/app/v0;

    const-string v10, "inFragment"

    move-object/from16 v21, v8

    iget-object v8, v2, Landroidx/fragment/app/F0;->c:Landroidx/fragment/app/Fragment;

    invoke-static {v8, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "outFragment"

    move-object/from16 v22, v11

    iget-object v11, v3, Landroidx/fragment/app/F0;->c:Landroidx/fragment/app/Fragment;

    invoke-static {v11, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v10, v0, Landroidx/fragment/app/l;->o:Z

    if-eqz v10, :cond_0

    invoke-virtual {v11}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()LU0/z;

    goto :goto_1

    :cond_0
    invoke-virtual {v8}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()LU0/z;

    :goto_1
    new-instance v8, LJ8/d;

    const/4 v10, 0x5

    invoke-direct {v8, v2, v10, v3, v0}, LJ8/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v8}, Lf1/w;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v13}, LN/f;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v8, v0, Landroidx/fragment/app/l;->l:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    const-string v10, "exitingNames[0]"

    invoke-static {v8, v10}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v13, v8}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v9, v8, v4}, Landroidx/fragment/app/x0;->s(Landroid/view/View;Ljava/lang/Object;)V

    move-object v11, v8

    goto :goto_2

    :cond_1
    move-object/from16 v11, v22

    :goto_2
    iget-object v8, v0, Landroidx/fragment/app/l;->n:LN/f;

    invoke-virtual {v8}, LN/f;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v10, v0, Landroidx/fragment/app/l;->k:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_2

    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    const-string v13, "enteringNames[0]"

    invoke-static {v10, v13}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v8, v10}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    if-eqz v8, :cond_2

    new-instance v10, Landroidx/fragment/app/j;

    invoke-direct {v10, v9, v8, v6}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/x0;Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {v1, v10}, Lf1/w;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v8, 0x1

    move v12, v8

    :cond_2
    invoke-virtual {v9, v4, v5, v14}, Landroidx/fragment/app/x0;->w(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    iget-object v4, v0, Landroidx/fragment/app/l;->g:Ljava/lang/Object;

    move-object v14, v9

    move-object v8, v15

    move-object v15, v4

    move-object/from16 v18, v4

    move-object/from16 v19, v8

    invoke-virtual/range {v14 .. v19}, Landroidx/fragment/app/x0;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    move-object/from16 v8, v21

    goto/16 :goto_0

    :cond_3
    move-object/from16 v21, v8

    move-object/from16 v22, v11

    move-object/from16 v8, v21

    move-object/from16 v11, v22

    goto/16 :goto_0

    :cond_4
    move-object/from16 v22, v11

    move-object v8, v15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const-string v15, "FragmentManager"

    if-eqz v13, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/fragment/app/m;

    move-object/from16 p0, v7

    iget-object v7, v13, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/F0;

    move-object/from16 v23, v11

    iget-object v11, v13, Landroidx/fragment/app/m;->b:Ljava/lang/Object;

    invoke-virtual {v9, v11}, Landroidx/fragment/app/x0;->h(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_f

    move-object/from16 v24, v10

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v25, v13

    iget-object v13, v7, Landroidx/fragment/app/F0;->c:Landroidx/fragment/app/Fragment;

    iget-object v13, v13, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    move-object/from16 v26, v15

    const-string v15, "operation.fragment.mView"

    invoke-static {v13, v15}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v10}, Landroidx/fragment/app/l;->f(Landroid/view/View;Ljava/util/ArrayList;)V

    if-eqz v4, :cond_7

    if-eq v7, v3, :cond_5

    if-ne v7, v2, :cond_7

    :cond_5
    if-ne v7, v3, :cond_6

    invoke-static {v14}, Lfb/n;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_6
    invoke-static {v8}, Lfb/n;->l0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v13

    check-cast v13, Ljava/util/Collection;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_7
    :goto_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v9, v5, v11}, Landroidx/fragment/app/x0;->a(Landroid/view/View;Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v9, v11, v10}, Landroidx/fragment/app/x0;->b(Ljava/lang/Object;Ljava/util/ArrayList;)V

    const/16 v21, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v9

    move-object/from16 v17, v11

    move-object/from16 v18, v11

    move-object/from16 v19, v10

    invoke-virtual/range {v16 .. v21}, Landroidx/fragment/app/x0;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    iget-object v13, v7, Landroidx/fragment/app/F0;->a:Landroidx/fragment/app/J0;

    sget-object v15, Landroidx/fragment/app/J0;->GONE:Landroidx/fragment/app/J0;

    if-ne v13, v15, :cond_9

    const/4 v13, 0x0

    iput-boolean v13, v7, Landroidx/fragment/app/F0;->i:Z

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v13, v7, Landroidx/fragment/app/F0;->c:Landroidx/fragment/app/Fragment;

    iget-object v2, v13, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v13, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v9, v11, v2, v15}, Landroidx/fragment/app/x0;->p(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    new-instance v2, Landroidx/fragment/app/v;

    const/4 v13, 0x2

    invoke-direct {v2, v13, v10}, Landroidx/fragment/app/v;-><init>(ILjava/lang/Object;)V

    invoke-static {v1, v2}, Lf1/w;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_9
    :goto_5
    iget-object v2, v7, Landroidx/fragment/app/F0;->a:Landroidx/fragment/app/J0;

    sget-object v7, Landroidx/fragment/app/J0;->VISIBLE:Landroidx/fragment/app/J0;

    const-string v13, "View: "

    const-string v15, "transitioningViews"

    if-ne v2, v7, :cond_c

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v12, :cond_a

    invoke-virtual {v9, v11, v6}, Landroidx/fragment/app/x0;->t(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_a
    move-object/from16 v2, v26

    const/4 v7, 0x2

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v1, "Entering Transition: "

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ">>>>> EnteringViews <<<<<"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v15}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/View;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_b
    :goto_7
    move-object/from16 v13, v25

    goto :goto_9

    :cond_c
    move-object/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v9, v1, v11}, Landroidx/fragment/app/x0;->s(Landroid/view/View;Ljava/lang/Object;)V

    const/4 v7, 0x2

    invoke-static {v2, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v16

    if-eqz v16, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    move-object/from16 v22, v1

    const-string v1, "Exiting Transition: "

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ">>>>> ExitingViews <<<<<"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v15}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/View;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_d
    move-object/from16 v22, v1

    goto :goto_7

    :goto_9
    iget-boolean v1, v13, Landroidx/fragment/app/m;->c:Z

    if-eqz v1, :cond_e

    move-object/from16 v1, v24

    invoke-virtual {v9, v1, v11}, Landroidx/fragment/app/x0;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v11, v23

    goto/16 :goto_3

    :cond_e
    move-object/from16 v7, v23

    move-object/from16 v1, v24

    invoke-virtual {v9, v7, v11}, Landroidx/fragment/app/x0;->o(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v7, p0

    move-object/from16 v2, p2

    move-object v10, v1

    :goto_a
    move-object/from16 v1, p1

    goto/16 :goto_3

    :cond_f
    move-object v1, v10

    move-object/from16 v7, v23

    move-object/from16 v2, p2

    move-object v11, v7

    move-object/from16 v7, p0

    goto :goto_a

    :cond_10
    move-object v1, v10

    move-object v7, v11

    move-object v2, v15

    invoke-virtual {v9, v1, v7, v4}, Landroidx/fragment/app/x0;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_11

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Final merged transition: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    new-instance v2, Ldb/j;

    invoke-direct {v2, v0, v1}, Ldb/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public final h()Z
    .locals 2

    iget-object p0, p0, Landroidx/fragment/app/l;->c:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/m;

    iget-object v0, v0, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/F0;

    iget-object v0, v0, Landroidx/fragment/app/F0;->c:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mTransitioning:Z

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final i(Ljava/util/ArrayList;Landroid/view/ViewGroup;Lsb/a;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x4

    invoke-static {v2, v1}, Landroidx/fragment/app/q0;->a(ILjava/util/ArrayList;)V

    iget-object v2, v0, Landroidx/fragment/app/l;->f:Landroidx/fragment/app/x0;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, v0, Landroidx/fragment/app/l;->i:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v10, 0x0

    move v4, v10

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v3, :cond_0

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    sget-object v8, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {v7}, Lf1/O;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v7, v5}, Lf1/O;->n(Landroid/view/View;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    const-string v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    iget-object v11, v0, Landroidx/fragment/app/l;->h:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    const-string v3, ">>>>> Beginning transition <<<<<"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ">>>>> SharedElementFirstOutViews <<<<<"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, " Name: "

    const-string v12, "View: "

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    const-string v13, "sharedElementFirstOutViews"

    invoke-static {v7, v13}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/View;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {v7}, Lf1/O;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v3, ">>>>> SharedElementLastInViews <<<<<"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    const-string v13, "sharedElementLastInViews"

    invoke-static {v7, v13}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroid/view/View;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {v7}, Lf1/O;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    invoke-interface/range {p3 .. p3}, Lsb/a;->invoke()Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v3, v10

    :goto_3
    if-ge v3, v4, :cond_6

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    sget-object v12, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {v7}, Lf1/O;->f(Landroid/view/View;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-nez v12, :cond_3

    goto :goto_5

    :cond_3
    invoke-static {v7, v5}, Lf1/O;->n(Landroid/view/View;Ljava/lang/String;)V

    iget-object v7, v0, Landroidx/fragment/app/l;->j:LN/f;

    invoke-virtual {v7, v12}, LN/A;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move v13, v10

    :goto_4
    if-ge v13, v4, :cond_5

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-static {v7, v12}, Lf1/O;->n(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    new-instance v12, Landroidx/fragment/app/w0;

    move-object v3, v12

    move-object v5, v9

    move-object v7, v11

    invoke-direct/range {v3 .. v8}, Landroidx/fragment/app/w0;-><init>(ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object/from16 v3, p2

    invoke-static {v3, v12}, Lf1/w;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-static {v10, v1}, Landroidx/fragment/app/q0;->a(ILjava/util/ArrayList;)V

    iget-object v0, v0, Landroidx/fragment/app/l;->g:Ljava/lang/Object;

    invoke-virtual {v2, v0, v11, v9}, Landroidx/fragment/app/x0;->x(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method
