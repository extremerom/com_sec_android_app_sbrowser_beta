.class public final Lz0/K;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lz0/L;


# direct methods
.method public synthetic constructor <init>(Lz0/L;I)V
    .locals 0

    iput p2, p0, Lz0/K;->a:I

    iput-object p1, p0, Lz0/K;->b:Lz0/L;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lz0/K;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/node/a;

    check-cast p2, Lz0/L;

    iget-object p2, p1, Landroidx/compose/ui/node/a;->t:Lz0/t;

    iget-object p0, p0, Lz0/K;->b:Lz0/L;

    if-nez p2, :cond_0

    new-instance p2, Lz0/t;

    iget-object v0, p0, Lz0/L;->a:LA7/h;

    invoke-direct {p2, p1, v0}, Lz0/t;-><init>(Landroidx/compose/ui/node/a;LA7/h;)V

    iput-object p2, p1, Landroidx/compose/ui/node/a;->t:Lz0/t;

    :cond_0
    iput-object p2, p0, Lz0/L;->b:Lz0/t;

    invoke-virtual {p0}, Lz0/L;->a()Lz0/t;

    move-result-object p1

    invoke-virtual {p1}, Lz0/t;->d()V

    invoke-virtual {p0}, Lz0/L;->a()Lz0/t;

    move-result-object p1

    iget-object p2, p1, Lz0/t;->c:LA7/h;

    iget-object p0, p0, Lz0/L;->a:LA7/h;

    if-eq p2, p0, :cond_1

    iput-object p0, p1, Lz0/t;->c:LA7/h;

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lz0/t;->e(Z)V

    iget-object p0, p1, Lz0/t;->a:Landroidx/compose/ui/node/a;

    iget-boolean p0, p0, Landroidx/compose/ui/node/a;->i:Z

    :cond_1
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/node/a;

    check-cast p2, Lsb/n;

    iget-object p0, p0, Lz0/K;->b:Lz0/L;

    invoke-virtual {p0}, Lz0/L;->a()Lz0/t;

    move-result-object p0

    new-instance v0, Lz0/r;

    invoke-direct {v0, p0, p2}, Lz0/r;-><init>(Lz0/t;Lsb/n;)V

    invoke-virtual {p1, v0}, Landroidx/compose/ui/node/a;->A(Lz0/x;)V

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/ui/node/a;

    check-cast p2, La0/s;

    iget-object p0, p0, Lz0/K;->b:Lz0/L;

    invoke-virtual {p0}, Lz0/L;->a()Lz0/t;

    move-result-object p0

    iput-object p2, p0, Lz0/t;->b:La0/s;

    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
