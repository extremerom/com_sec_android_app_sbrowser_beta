.class public final Lh7/b;
.super LG5/v3;
.source "SourceFile"


# static fields
.field public static final a:Lh7/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh7/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lh7/b;->a:Lh7/b;

    return-void
.end method


# virtual methods
.method public final d()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final i(Lg7/k;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, LG5/v3;->c(Lg7/k;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final j(Lg7/k;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, LG5/v3;->a(Lg7/k;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final k(Lg7/g;)Z
    .locals 0

    instance-of p0, p1, Lg7/v;

    if-eqz p0, :cond_1

    iget-object p0, p1, Lg7/g;->d:Lk7/l;

    iget-object p0, p0, Ln7/e;->b:[Ljava/lang/Object;

    array-length p0, p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final w(Ln7/b;Lg7/k;)V
    .locals 1

    move-object p0, p2

    check-cast p0, Lg7/v;

    invoke-virtual {p0}, Lg7/v;->l()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p2, v0}, LG5/v3;->p(Lg7/g;I)S

    move-result p2

    int-to-short v0, p0

    shr-int/lit8 p0, p0, 0x10

    int-to-short p0, p0

    invoke-virtual {p1, p2}, Ln7/b;->k(I)V

    invoke-virtual {p1, v0}, Ln7/b;->k(I)V

    invoke-virtual {p1, p0}, Ln7/b;->k(I)V

    return-void
.end method
