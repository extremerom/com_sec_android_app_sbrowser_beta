.class public final LJ0/h;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LJ0/q;


# direct methods
.method public synthetic constructor <init>(LJ0/q;I)V
    .locals 0

    iput p2, p0, LJ0/h;->a:I

    iput-object p1, p0, LJ0/h;->b:LJ0/q;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, LJ0/h;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LJ0/h;->b:LJ0/q;

    iget-object v0, p0, LJ0/q;->s:Landroid/view/View;

    invoke-virtual {p0}, LJ0/q;->getUpdateBlock()Lsb/k;

    move-result-object p0

    invoke-interface {p0, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LJ0/h;->b:LJ0/q;

    iget-object v0, p0, LJ0/q;->s:Landroid/view/View;

    invoke-virtual {p0}, LJ0/q;->getResetBlock()Lsb/k;

    move-result-object p0

    invoke-interface {p0, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    iget-object p0, p0, LJ0/h;->b:LJ0/q;

    iget-object v0, p0, LJ0/q;->s:Landroid/view/View;

    invoke-virtual {p0}, LJ0/q;->getReleaseBlock()Lsb/k;

    move-result-object v1

    invoke-interface {v1, v0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, LJ0/q;->f(LJ0/q;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object p0, p0, LJ0/h;->b:LJ0/q;

    iget-object p0, p0, LJ0/q;->s:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    return-object v0

    :pswitch_3
    iget-object p0, p0, LJ0/h;->b:LJ0/q;

    iget-boolean v0, p0, LJ0/i;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, LJ0/i;->d(LJ0/q;)V

    invoke-virtual {p0}, LJ0/i;->getUpdate()Lsb/a;

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_4
    iget-object p0, p0, LJ0/h;->b:LJ0/q;

    invoke-virtual {p0}, LJ0/i;->getLayoutNode()Landroidx/compose/ui/node/a;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/a;->n()V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
