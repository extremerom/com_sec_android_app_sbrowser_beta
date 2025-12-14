.class public abstract LU/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LU/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lm0/a;->a:Lm0/d;

    new-instance v1, LU/h;

    invoke-direct {v1, v0}, LU/h;-><init>(Lm0/d;)V

    sput-object v1, LU/i;->a:LU/h;

    return-void
.end method

.method public static final a(Lm0/d;La0/m;)Lz0/x;
    .locals 3

    check-cast p1, La0/q;

    const v0, 0x35e7844

    invoke-virtual {p1, v0}, La0/q;->R(I)V

    sget-object v0, Lm0/a;->a:Lm0/d;

    invoke-virtual {p0, v0}, Lm0/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p0, LU/i;->a:LU/h;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v2, 0x1e7b2b64

    invoke-virtual {p1, v2}, La0/q;->R(I)V

    invoke-virtual {p1, p0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p1, v0}, La0/q;->e(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v2

    invoke-virtual {p1}, La0/q;->G()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_1

    sget-object v0, La0/l;->a:La0/V;

    if-ne v2, v0, :cond_2

    :cond_1
    new-instance v2, LU/h;

    invoke-direct {v2, p0}, LU/h;-><init>(Lm0/d;)V

    invoke-virtual {p1, v2}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1, v1}, La0/q;->p(Z)V

    move-object p0, v2

    check-cast p0, Lz0/x;

    :goto_0
    invoke-virtual {p1, v1}, La0/q;->p(Z)V

    return-object p0
.end method
