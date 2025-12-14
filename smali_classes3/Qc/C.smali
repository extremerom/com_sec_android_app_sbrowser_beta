.class public final LQc/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQc/h;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:LQc/h;


# direct methods
.method public synthetic constructor <init>(LQc/h;II)V
    .locals 0

    iput p3, p0, LQc/C;->a:I

    iput-object p1, p0, LQc/C;->c:LQc/h;

    iput p2, p0, LQc/C;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final collect(LQc/i;Lib/c;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, LQc/C;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LRc/r;

    iget v1, p0, LQc/C;->b:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, LRc/r;-><init>(IILjava/lang/Object;)V

    iget-object p0, p0, LQc/C;->c:LQc/h;

    check-cast p0, LQc/C;

    invoke-virtual {p0, v0, p2}, LQc/C;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_0
    return-object p0

    :pswitch_0
    new-instance v0, Ltb/u;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, LQc/E;

    iget v2, p0, LQc/C;->b:I

    invoke-direct {v1, v0, v2, p1}, LQc/E;-><init>(Ltb/u;ILQc/i;)V

    iget-object p0, p0, LQc/C;->c:LQc/h;

    check-cast p0, LQc/m0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v1, p2}, LQc/m0;->k(LQc/m0;LQc/i;Lib/c;)Ljb/a;

    move-result-object p0

    sget-object p1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
