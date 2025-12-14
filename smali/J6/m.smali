.class public final LJ6/m;
.super Landroidx/recyclerview/widget/w0;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LJ6/m;->a:I

    iput-object p2, p0, LJ6/m;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget v0, p0, LJ6/m;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, LJ6/m;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/j0;

    iget-object v0, p0, Landroidx/recyclerview/widget/j0;->c:Landroidx/recyclerview/widget/u0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->getItemCount()I

    move-result v0

    iput v0, p0, Landroidx/recyclerview/widget/j0;->e:I

    iget-object p0, p0, Landroidx/recyclerview/widget/j0;->d:LB0/M;

    iget-object v0, p0, LB0/M;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/n;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/u0;->notifyDataSetChanged()V

    invoke-virtual {p0}, LB0/M;->c()V

    return-void

    :pswitch_1
    iget-object p0, p0, LJ6/m;->b:Ljava/lang/Object;

    check-cast p0, LJ6/o;

    invoke-virtual {p0}, LJ6/o;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(II)V
    .locals 1

    iget v0, p0, LJ6/m;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, LJ6/m;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/j0;

    iget-object v0, p0, Landroidx/recyclerview/widget/j0;->d:LB0/M;

    invoke-virtual {v0, p0}, LB0/M;->d(Landroidx/recyclerview/widget/j0;)I

    move-result p0

    iget-object v0, v0, LB0/M;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/n;

    add-int/2addr p1, p0

    const/4 p0, 0x0

    invoke-virtual {v0, p1, p2, p0}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object p0, p0, LJ6/m;->b:Ljava/lang/Object;

    check-cast p0, LJ6/o;

    invoke-virtual {p0}, LJ6/o;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(IILjava/lang/Object;)V
    .locals 1

    iget v0, p0, LJ6/m;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/w0;->c(IILjava/lang/Object;)V

    return-void

    :pswitch_0
    iget-object p0, p0, LJ6/m;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/j0;

    iget-object v0, p0, Landroidx/recyclerview/widget/j0;->d:LB0/M;

    invoke-virtual {v0, p0}, LB0/M;->d(Landroidx/recyclerview/widget/j0;)I

    move-result p0

    iget-object v0, v0, LB0/M;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/n;

    add-int/2addr p1, p0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/u0;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void

    :pswitch_1
    iget-object p0, p0, LJ6/m;->b:Ljava/lang/Object;

    check-cast p0, LJ6/o;

    invoke-virtual {p0}, LJ6/o;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(II)V
    .locals 2

    iget v0, p0, LJ6/m;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p0, LJ6/m;->b:Ljava/lang/Object;

    check-cast p1, Lcom/sec/android/app/sbrowser/wallpaper/presentation/ui/CategoryThumbnailsAdapter;

    invoke-static {p1}, Lv2/O0;->access$_init_$considerAllowingStateRestoration(Lv2/O0;)V

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/u0;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/w0;)V

    return-void

    :pswitch_0
    iget-object p0, p0, LJ6/m;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/j0;

    iget v0, p0, Landroidx/recyclerview/widget/j0;->e:I

    add-int/2addr v0, p2

    iput v0, p0, Landroidx/recyclerview/widget/j0;->e:I

    iget-object v0, p0, Landroidx/recyclerview/widget/j0;->d:LB0/M;

    invoke-virtual {v0, p0}, LB0/M;->d(Landroidx/recyclerview/widget/j0;)I

    move-result v1

    iget-object v0, v0, LB0/M;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/n;

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/u0;->notifyItemRangeInserted(II)V

    iget p1, p0, Landroidx/recyclerview/widget/j0;->e:I

    if-lez p1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/j0;->c:Landroidx/recyclerview/widget/u0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->getStateRestorationPolicy()Landroidx/recyclerview/widget/t0;

    move-result-object p1

    sget-object p2, Landroidx/recyclerview/widget/t0;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/t0;

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/j0;->d:LB0/M;

    invoke-virtual {p0}, LB0/M;->c()V

    :cond_0
    return-void

    :pswitch_1
    iget-object p0, p0, LJ6/m;->b:Ljava/lang/Object;

    check-cast p0, LJ6/o;

    invoke-virtual {p0}, LJ6/o;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e(II)V
    .locals 1

    iget v0, p0, LJ6/m;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, LJ6/m;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/j0;

    iget-object v0, p0, Landroidx/recyclerview/widget/j0;->d:LB0/M;

    invoke-virtual {v0, p0}, LB0/M;->d(Landroidx/recyclerview/widget/j0;)I

    move-result p0

    add-int/2addr p1, p0

    add-int/2addr p2, p0

    iget-object p0, v0, LB0/M;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/n;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/u0;->notifyItemMoved(II)V

    return-void

    :pswitch_1
    iget-object p0, p0, LJ6/m;->b:Ljava/lang/Object;

    check-cast p0, LJ6/o;

    invoke-virtual {p0}, LJ6/o;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f(II)V
    .locals 2

    iget v0, p0, LJ6/m;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, LJ6/m;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/j0;

    iget v0, p0, Landroidx/recyclerview/widget/j0;->e:I

    sub-int/2addr v0, p2

    iput v0, p0, Landroidx/recyclerview/widget/j0;->e:I

    iget-object v0, p0, Landroidx/recyclerview/widget/j0;->d:LB0/M;

    invoke-virtual {v0, p0}, LB0/M;->d(Landroidx/recyclerview/widget/j0;)I

    move-result v1

    iget-object v0, v0, LB0/M;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/n;

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/u0;->notifyItemRangeRemoved(II)V

    iget p1, p0, Landroidx/recyclerview/widget/j0;->e:I

    const/4 p2, 0x1

    if-ge p1, p2, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/j0;->c:Landroidx/recyclerview/widget/u0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/u0;->getStateRestorationPolicy()Landroidx/recyclerview/widget/t0;

    move-result-object p1

    sget-object p2, Landroidx/recyclerview/widget/t0;->PREVENT_WHEN_EMPTY:Landroidx/recyclerview/widget/t0;

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Landroidx/recyclerview/widget/j0;->d:LB0/M;

    invoke-virtual {p0}, LB0/M;->c()V

    :cond_0
    return-void

    :pswitch_1
    iget-object p0, p0, LJ6/m;->b:Ljava/lang/Object;

    check-cast p0, LJ6/o;

    invoke-virtual {p0}, LJ6/o;->a()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public g()V
    .locals 1

    iget v0, p0, LJ6/m;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, LJ6/m;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/j0;

    iget-object p0, p0, Landroidx/recyclerview/widget/j0;->d:LB0/M;

    invoke-virtual {p0}, LB0/M;->c()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
