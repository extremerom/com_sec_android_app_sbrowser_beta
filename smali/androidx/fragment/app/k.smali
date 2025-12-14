.class public final Landroidx/fragment/app/k;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/l;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/l;Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/fragment/app/k;->a:I

    iput-object p1, p0, Landroidx/fragment/app/k;->b:Landroidx/fragment/app/l;

    iput-object p2, p0, Landroidx/fragment/app/k;->d:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroidx/fragment/app/k;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/l;Ljava/lang/Object;Landroid/view/ViewGroup;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/fragment/app/k;->a:I

    iput-object p1, p0, Landroidx/fragment/app/k;->b:Landroidx/fragment/app/l;

    iput-object p2, p0, Landroidx/fragment/app/k;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/k;->d:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Landroidx/fragment/app/k;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/fragment/app/k;->b:Landroidx/fragment/app/l;

    iget-object v1, v0, Landroidx/fragment/app/l;->c:Ljava/util/ArrayList;

    iget-object v2, v0, Landroidx/fragment/app/l;->f:Landroidx/fragment/app/x0;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v4, 0x2

    const-string v5, "FragmentManager"

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/m;

    iget-object v3, v3, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/F0;

    iget-boolean v3, v3, Landroidx/fragment/app/F0;->g:Z

    if-nez v3, :cond_1

    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Completing animating immediately"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v1, Lb1/b;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v3, v0, Landroidx/fragment/app/l;->c:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/m;

    iget-object v3, v3, Landroidx/fragment/app/h;->a:Landroidx/fragment/app/F0;

    iget-object v3, v3, Landroidx/fragment/app/F0;->c:Landroidx/fragment/app/Fragment;

    new-instance v4, Landroidx/fragment/app/v;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v0}, Landroidx/fragment/app/v;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Landroidx/fragment/app/k;->c:Ljava/lang/Object;

    invoke-virtual {v2, v3, p0, v1, v4}, Landroidx/fragment/app/x0;->u(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Lb1/b;Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lb1/b;->a()V

    goto :goto_1

    :cond_3
    :goto_0
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Animating to start"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, v0, Landroidx/fragment/app/l;->q:Ljava/lang/Object;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    new-instance v3, Landroidx/fragment/app/j;

    iget-object p0, p0, Landroidx/fragment/app/k;->d:Landroid/view/ViewGroup;

    invoke-direct {v3, v0, p0}, Landroidx/fragment/app/j;-><init>(Landroidx/fragment/app/l;Landroid/view/ViewGroup;)V

    invoke-virtual {v2, v1, v3}, Landroidx/fragment/app/x0;->d(Ljava/lang/Object;Landroidx/fragment/app/j;)V

    :goto_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/k;->b:Landroidx/fragment/app/l;

    iget-object v0, v0, Landroidx/fragment/app/l;->f:Landroidx/fragment/app/x0;

    iget-object v1, p0, Landroidx/fragment/app/k;->d:Landroid/view/ViewGroup;

    iget-object p0, p0, Landroidx/fragment/app/k;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Landroidx/fragment/app/x0;->e(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
