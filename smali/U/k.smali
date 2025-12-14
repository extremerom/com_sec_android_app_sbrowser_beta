.class public abstract LU/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LU/u;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, LU/q;->Vertical:LU/q;

    sget-object v1, LU/e;->a:LU/a;

    const/4 v1, 0x0

    int-to-float v1, v1

    new-instance v2, LU/l;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sget-object v3, LU/A;->Wrap:LU/A;

    sget-object v4, LU/j;->b:LU/j;

    invoke-static {v0, v4, v1, v3, v2}, LG5/z2;->f(LU/q;Lsb/q;FLU/A;LG5/x2;)LU/u;

    move-result-object v0

    sput-object v0, LU/k;->a:LU/u;

    return-void
.end method

.method public static final a(La0/m;)Lz0/x;
    .locals 8

    sget-object v0, LU/e;->b:LU/a;

    sget-object v1, Lm0/a;->g:Lm0/b;

    check-cast p0, La0/q;

    const v2, 0x40f63170

    invoke-virtual {p0, v2}, La0/q;->R(I)V

    invoke-virtual {v0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v1, v1}, Lm0/b;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, LU/k;->a:LU/u;

    goto :goto_0

    :cond_0
    const v2, 0x1e7b2b64

    invoke-virtual {p0, v2}, La0/q;->R(I)V

    invoke-virtual {p0, v0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0, v1}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0}, La0/q;->G()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1

    sget-object v0, La0/l;->a:La0/V;

    if-ne v1, v0, :cond_2

    :cond_1
    sget-object v0, LU/q;->Vertical:LU/q;

    int-to-float v1, v3

    new-instance v2, LU/l;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sget-object v4, LU/A;->Wrap:LU/A;

    new-instance v5, LU/j;

    const/4 v6, 0x5

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, LU/j;-><init>(II)V

    invoke-static {v0, v5, v1, v4, v2}, LG5/z2;->f(LU/q;Lsb/q;FLU/A;LG5/x2;)LU/u;

    move-result-object v1

    invoke-virtual {p0, v1}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0, v3}, La0/q;->p(Z)V

    move-object v0, v1

    check-cast v0, Lz0/x;

    :goto_0
    invoke-virtual {p0, v3}, La0/q;->p(Z)V

    return-object v0
.end method
