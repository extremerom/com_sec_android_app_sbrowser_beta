.class public abstract Lz0/J;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lz0/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lz0/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lz0/g;-><init>(I)V

    sput-object v0, Lz0/J;->a:Lz0/g;

    return-void
.end method

.method public static final a(Lz0/L;Lm0/m;Lsb/n;La0/m;I)V
    .locals 7

    check-cast p3, La0/q;

    const v0, -0x1e845847

    invoke-virtual {p3, v0}, La0/q;->S(I)La0/q;

    iget v0, p3, La0/q;->P:I

    invoke-static {p3}, La0/d;->H(La0/m;)La0/o;

    move-result-object v1

    invoke-static {p3, p1}, La/a;->f(La0/m;Lm0/m;)Lm0/m;

    move-result-object v2

    invoke-virtual {p3}, La0/q;->l()La0/e0;

    move-result-object v3

    const v4, 0x53ca7ea5

    invoke-virtual {p3, v4}, La0/q;->R(I)V

    invoke-virtual {p3}, La0/q;->U()V

    iget-boolean v4, p3, La0/q;->O:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    new-instance v4, Lz0/c;

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lz0/c;-><init>(II)V

    invoke-virtual {p3, v4}, La0/q;->k(Lsb/a;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, La0/q;->d0()V

    :goto_0
    iget-object v4, p0, Lz0/L;->c:Lz0/K;

    invoke-static {p3, p0, v4}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    iget-object v4, p0, Lz0/L;->d:Lz0/K;

    invoke-static {p3, v1, v4}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    iget-object v1, p0, Lz0/L;->e:Lz0/K;

    invoke-static {p3, p2, v1}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v1, LB0/h;->K:LB0/g;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LB0/g;->e:LB0/f;

    invoke-static {p3, v3, v1}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v1, LB0/g;->c:LB0/f;

    invoke-static {p3, v2, v1}, La0/d;->M(La0/m;Ljava/lang/Object;Lsb/n;)V

    sget-object v1, LB0/g;->i:LB0/f;

    iget-boolean v2, p3, La0/q;->O:Z

    if-nez v2, :cond_1

    invoke-virtual {p3}, La0/q;->G()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, La0/q;->a0(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p3, v0, v1}, La0/q;->b(Ljava/lang/Object;Lsb/n;)V

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, La0/q;->p(Z)V

    invoke-virtual {p3, v5}, La0/q;->p(Z)V

    invoke-virtual {p3}, La0/q;->x()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, LA4/a;

    const/16 v1, 0x1d

    invoke-direct {v0, v1, p0}, LA4/a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0, p3}, La0/d;->e(Lsb/a;La0/m;)V

    :cond_3
    invoke-virtual {p3}, La0/q;->r()La0/i0;

    move-result-object p3

    if-eqz p3, :cond_4

    new-instance v6, LJ0/l;

    const/4 v5, 0x5

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, LJ0/l;-><init>(Ljava/lang/Object;Lm0/m;Ldb/b;II)V

    iput-object v6, p3, La0/i0;->d:Lsb/n;

    :cond_4
    return-void
.end method

.method public static final b(Lm0/m;)Li0/a;
    .locals 3

    new-instance v0, LPc/f;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, LPc/f;-><init>(ILjava/lang/Object;)V

    new-instance p0, Li0/a;

    const v1, -0x352954e

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Li0/a;-><init>(IZLdb/b;)V

    return-object p0
.end method
