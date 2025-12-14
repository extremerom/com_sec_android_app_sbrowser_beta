.class public final Luc/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsb/a;


# instance fields
.field public final synthetic a:I

.field public final b:Luc/v;

.field public final c:Lcc/I;

.field public final d:Lwc/r;


# direct methods
.method public synthetic constructor <init>(Luc/v;Lcc/I;Lwc/r;I)V
    .locals 0

    iput p4, p0, Luc/r;->a:I

    iput-object p1, p0, Luc/r;->b:Luc/v;

    iput-object p2, p0, Luc/r;->c:Lcc/I;

    iput-object p3, p0, Luc/r;->d:Lwc/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Luc/r;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Luc/r;->b:Luc/v;

    iget-object v1, v0, Luc/v;->a:Luc/m;

    iget-object v1, v1, Luc/m;->c:Ljava/lang/Object;

    check-cast v1, LJb/l;

    invoke-virtual {v0, v1}, Luc/v;->a(LJb/l;)LJ2/i0;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v0, v0, Luc/v;->a:Luc/m;

    iget-object v0, v0, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v0, v0, Luc/k;->e:Luc/c;

    iget-object v2, p0, Luc/r;->d:Lwc/r;

    invoke-virtual {v2}, LMb/J;->p()Lyc/w;

    move-result-object v2

    const-string v3, "getReturnType(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Luc/r;->c:Lcc/I;

    invoke-interface {v0, v1, p0, v2}, Luc/c;->d(LJ2/i0;Lcc/I;Lyc/w;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmc/g;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Luc/r;->b:Luc/v;

    iget-object v1, v0, Luc/v;->a:Luc/m;

    iget-object v1, v1, Luc/m;->c:Ljava/lang/Object;

    check-cast v1, LJb/l;

    invoke-virtual {v0, v1}, Luc/v;->a(LJb/l;)LJ2/i0;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v0, v0, Luc/v;->a:Luc/m;

    iget-object v0, v0, Luc/m;->a:Ljava/lang/Object;

    check-cast v0, Luc/k;

    iget-object v0, v0, Luc/k;->e:Luc/c;

    iget-object v2, p0, Luc/r;->d:Lwc/r;

    invoke-virtual {v2}, LMb/J;->p()Lyc/w;

    move-result-object v2

    const-string v3, "getReturnType(...)"

    invoke-static {v2, v3}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Luc/r;->c:Lcc/I;

    invoke-interface {v0, v1, p0, v2}, Luc/c;->j(LJ2/i0;Lcc/I;Lyc/w;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lmc/g;

    return-object p0

    :pswitch_1
    iget-object v0, p0, Luc/r;->b:Luc/v;

    iget-object v1, v0, Luc/v;->a:Luc/m;

    iget-object v1, v1, Luc/m;->a:Ljava/lang/Object;

    check-cast v1, Luc/k;

    iget-object v1, v1, Luc/k;->a:Lxc/o;

    new-instance v2, Luc/r;

    iget-object v3, p0, Luc/r;->d:Lwc/r;

    iget-object p0, p0, Luc/r;->c:Lcc/I;

    const/4 v4, 0x3

    invoke-direct {v2, v0, p0, v3, v4}, Luc/r;-><init>(Luc/v;Lcc/I;Lwc/r;I)V

    check-cast v1, Lxc/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lxc/h;

    invoke-direct {p0, v1, v2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    return-object p0

    :pswitch_2
    iget-object v0, p0, Luc/r;->b:Luc/v;

    iget-object v1, v0, Luc/v;->a:Luc/m;

    iget-object v1, v1, Luc/m;->a:Ljava/lang/Object;

    check-cast v1, Luc/k;

    iget-object v1, v1, Luc/k;->a:Lxc/o;

    new-instance v2, Luc/r;

    iget-object v3, p0, Luc/r;->d:Lwc/r;

    iget-object p0, p0, Luc/r;->c:Lcc/I;

    const/4 v4, 0x2

    invoke-direct {v2, v0, p0, v3, v4}, Luc/r;-><init>(Luc/v;Lcc/I;Lwc/r;I)V

    check-cast v1, Lxc/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lxc/h;

    invoke-direct {p0, v1, v2}, Lxc/h;-><init>(Lxc/l;Lsb/a;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
