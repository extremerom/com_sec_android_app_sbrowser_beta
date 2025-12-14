.class public abstract Li0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Li0/f;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Li0/b;->a:Ljava/lang/Object;

    new-instance v0, Li0/f;

    const/4 v1, 0x0

    new-array v2, v1, [J

    new-array v3, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Li0/f;-><init>(I[J[Ljava/lang/Object;)V

    sput-object v0, Li0/b;->b:Li0/f;

    return-void
.end method

.method public static final a(II)I
    .locals 0

    rem-int/lit8 p1, p1, 0xa

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    shl-int/2addr p0, p1

    return p0
.end method

.method public static final b(La0/m;ILtb/m;)Li0/a;
    .locals 5

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result v1

    sget-object v2, Li0/b;->a:Ljava/lang/Object;

    check-cast p0, La0/q;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v3, v4}, La0/q;->L(Ljava/lang/Object;ILjava/lang/Object;I)V

    invoke-virtual {p0}, La0/q;->G()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, La0/l;->a:La0/V;

    if-ne v1, v2, :cond_0

    new-instance v1, Li0/a;

    invoke-direct {v1, p1, v0, p2}, Li0/a;-><init>(IZLdb/b;)V

    invoke-virtual {p0, v1}, La0/q;->a0(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "null cannot be cast to non-null type androidx.compose.runtime.internal.ComposableLambdaImpl"

    invoke-static {v1, p1}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Li0/a;

    invoke-virtual {v1, p2}, Li0/a;->h(Ldb/b;)V

    :goto_0
    invoke-virtual {p0, v4}, La0/q;->p(Z)V

    return-object v1
.end method

.method public static final c(ILdb/b;La0/m;)Li0/a;
    .locals 2

    check-cast p2, La0/q;

    invoke-virtual {p2}, La0/q;->G()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, La0/l;->a:La0/V;

    if-ne v0, v1, :cond_0

    new-instance v0, Li0/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Li0/a;-><init>(IZLdb/b;)V

    invoke-virtual {p2, v0}, La0/q;->a0(Ljava/lang/Object;)V

    :cond_0
    check-cast v0, Li0/a;

    invoke-virtual {v0, p1}, Li0/a;->h(Ldb/b;)V

    return-object v0
.end method

.method public static final d(La0/i0;La0/i0;)Z
    .locals 1

    if-eqz p0, :cond_1

    instance-of v0, p0, La0/i0;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, La0/i0;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, La0/i0;->c:La0/c;

    iget-object p1, p1, La0/i0;->c:La0/c;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
