.class public final Lz1/Y0;
.super Ltb/m;
.source "SourceFile"

# interfaces
.implements Lsb/n;


# instance fields
.field public final synthetic a:Lsb/n;

.field public final synthetic b:J

.field public final synthetic c:Lz1/b1;


# direct methods
.method public constructor <init>(Lsb/n;JLz1/b1;)V
    .locals 0

    iput-object p1, p0, Lz1/Y0;->a:Lsb/n;

    iput-wide p2, p0, Lz1/Y0;->b:J

    iput-object p4, p0, Lz1/Y0;->c:Lz1/b1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ltb/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, La0/m;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    move-object p2, p1

    check-cast p2, La0/q;

    invoke-virtual {p2}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, La0/q;->K()V

    goto :goto_2

    :cond_1
    :goto_0
    sget-object p2, Lz1/X0;->a:Lz1/X0;

    check-cast p1, La0/q;

    const v0, 0x227c4e56

    invoke-virtual {p1, v0}, La0/q;->R(I)V

    const v0, -0x20ad3f64

    invoke-virtual {p1, v0}, La0/q;->R(I)V

    iget-object v0, p1, La0/q;->a:LJ2/i0;

    instance-of v0, v0, Lx1/b;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, La0/q;->O()V

    iget-boolean v0, p1, La0/q;->O:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, La0/q;->k(Lsb/a;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, La0/q;->d0()V

    :goto_1
    new-instance p2, LH0/g;

    iget-wide v0, p0, Lz1/Y0;->b:J

    invoke-direct {p2, v0, v1}, LH0/g;-><init>(J)V

    sget-object v0, Lz1/y0;->v:Lz1/y0;

    invoke-static {p1, p2, v0}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object p2, Lz1/y0;->w:Lz1/y0;

    iget-object v0, p0, Lz1/Y0;->c:Lz1/b1;

    invoke-static {p1, v0, p2}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lz1/Y0;->a:Lsb/n;

    invoke-interface {p0, p1, v0}, Lsb/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, La0/q;->p(Z)V

    invoke-virtual {p1, p2}, La0/q;->p(Z)V

    invoke-virtual {p1, p2}, La0/q;->p(Z)V

    :goto_2
    sget-object p0, Ldb/r;->a:Ldb/r;

    return-object p0

    :cond_3
    invoke-static {}, La0/d;->B()V

    const/4 p0, 0x0

    throw p0
.end method
