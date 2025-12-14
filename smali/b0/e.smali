.class public final Lb0/e;
.super Lb0/C;
.source "SourceFile"


# static fields
.field public static final c:Lb0/e;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb0/e;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lb0/C;-><init>(III)V

    sput-object v0, Lb0/e;->c:Lb0/e;

    return-void
.end method


# virtual methods
.method public final a(LN/h;LJ2/i0;La0/y0;LB0/M;)V
    .locals 3

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, LN/h;->d(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La0/c;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, LN/h;->d(I)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, La0/r0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, La0/r0;

    iget-object v0, v0, La0/r0;->a:La0/q0;

    iget-object p4, p4, LB0/M;->c:Ljava/lang/Object;

    check-cast p4, Ljava/util/ArrayList;

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget p4, p3, La0/y0;->n:I

    if-nez p4, :cond_2

    iget p4, p3, La0/y0;->i:I

    iget v0, p3, La0/y0;->j:I

    invoke-virtual {p3, p0}, La0/y0;->c(La0/c;)I

    move-result p0

    iget-object v1, p3, La0/y0;->b:[I

    add-int/lit8 v2, p0, 0x1

    invoke-virtual {p3, v2}, La0/y0;->p(I)I

    move-result v2

    invoke-virtual {p3, v2, v1}, La0/y0;->f(I[I)I

    move-result v1

    iput v1, p3, La0/y0;->i:I

    iput v1, p3, La0/y0;->j:I

    invoke-virtual {p3, p2, p0}, La0/y0;->s(II)V

    if-lt p4, v1, :cond_1

    add-int/lit8 p4, p4, 0x1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object p0, p3, La0/y0;->c:[Ljava/lang/Object;

    aput-object p1, p0, v1

    iput p4, p3, La0/y0;->i:I

    iput v0, p3, La0/y0;->j:I

    return-void

    :cond_2
    const-string p0, "Can only append a slot if not current inserting"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final c(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, LAb/E;->f(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "anchor"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, LAb/E;->f(II)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "value"

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lb0/C;->c(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
