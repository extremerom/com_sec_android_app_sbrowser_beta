.class public final Landroidx/lifecycle/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/i;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/lifecycle/n;->a:I

    iput-object p2, p0, Landroidx/lifecycle/n;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lib/c;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/lifecycle/n;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/lifecycle/n;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/U;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/lifecycle/T;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroidx/lifecycle/T;-><init>(Landroidx/lifecycle/U;Ljava/lang/Object;Lib/c;)V

    iget-object p0, p0, Landroidx/lifecycle/U;->b:Lib/h;

    invoke-static {p0, v0, p2}, LNc/E;->K(Lib/h;Lsb/n;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    sget-object p2, Ldb/r;->a:Ldb/r;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    if-ne p0, p1, :cond_1

    move-object p2, p0

    :cond_1
    return-object p2

    :pswitch_0
    iget-object p0, p0, Landroidx/lifecycle/n;->b:Ljava/lang/Object;

    check-cast p0, LPc/y;

    check-cast p0, LPc/x;

    iget-object p0, p0, LPc/x;->d:LPc/i;

    invoke-interface {p0, p2, p1}, LPc/B;->g(Lib/c;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
