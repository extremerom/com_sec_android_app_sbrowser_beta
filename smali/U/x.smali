.class public abstract LU/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LU/u;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, LU/q;->Horizontal:LU/q;

    sget-object v1, LU/e;->a:LU/a;

    const/4 v1, 0x0

    int-to-float v1, v1

    sget-object v2, Lm0/a;->d:Lm0/c;

    new-instance v3, LU/m;

    invoke-direct {v3, v2}, LU/m;-><init>(Lm0/c;)V

    sget-object v2, LU/A;->Wrap:LU/A;

    sget-object v4, LU/j;->c:LU/j;

    invoke-static {v0, v4, v1, v2, v3}, LG5/z2;->f(LU/q;Lsb/q;FLU/A;LG5/x2;)LU/u;

    move-result-object v0

    sput-object v0, LU/x;->a:LU/u;

    return-void
.end method

.method public static final a(Lm0/c;La0/m;)Lz0/x;
    .locals 7

    sget-object v0, LU/e;->a:LU/a;

    check-cast p1, La0/q;

    const v1, -0x31efee4e

    invoke-virtual {p1, v1}, La0/q;->R(I)V

    invoke-virtual {v0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lm0/a;->d:Lm0/c;

    invoke-virtual {p0, v1}, Lm0/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p0, LU/x;->a:LU/u;

    goto :goto_0

    :cond_0
    const v1, 0x1e7b2b64

    invoke-virtual {p1, v1}, La0/q;->R(I)V

    invoke-virtual {p1, v0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1}, La0/q;->G()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1

    sget-object v0, La0/l;->a:La0/V;

    if-ne v1, v0, :cond_2

    :cond_1
    sget-object v0, LU/q;->Horizontal:LU/q;

    int-to-float v1, v2

    new-instance v3, LU/m;

    invoke-direct {v3, p0}, LU/m;-><init>(Lm0/c;)V

    sget-object p0, LU/A;->Wrap:LU/A;

    new-instance v4, LU/j;

    const/4 v5, 0x5

    const/4 v6, 0x3

    invoke-direct {v4, v5, v6}, LU/j;-><init>(II)V

    invoke-static {v0, v4, v1, p0, v3}, LG5/z2;->f(LU/q;Lsb/q;FLU/A;LG5/x2;)LU/u;

    move-result-object v1

    invoke-virtual {p1, v1}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1, v2}, La0/q;->p(Z)V

    move-object p0, v1

    check-cast p0, Lz0/x;

    :goto_0
    invoke-virtual {p1, v2}, La0/q;->p(Z)V

    return-object p0
.end method
