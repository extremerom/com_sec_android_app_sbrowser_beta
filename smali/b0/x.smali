.class public final Lb0/x;
.super Lb0/C;
.source "SourceFile"


# static fields
.field public static final c:Lb0/x;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb0/x;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lb0/C;-><init>(III)V

    sput-object v0, Lb0/x;->c:Lb0/x;

    return-void
.end method


# virtual methods
.method public final a(LN/h;LJ2/i0;La0/y0;LB0/M;)V
    .locals 6

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, LN/h;->c(I)I

    move-result p1

    invoke-virtual {p3}, La0/y0;->o()I

    move-result p2

    iget v0, p3, La0/y0;->u:I

    iget-object v1, p3, La0/y0;->b:[I

    invoke-virtual {p3, v0}, La0/y0;->p(I)I

    move-result v2

    invoke-virtual {p3, v2, v1}, La0/y0;->D(I[I)I

    move-result v1

    iget-object v2, p3, La0/y0;->b:[I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p3, v0}, La0/y0;->p(I)I

    move-result v0

    invoke-virtual {p3, v0, v2}, La0/y0;->f(I[I)I

    move-result v0

    sub-int v2, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p3, La0/y0;->c:[Ljava/lang/Object;

    invoke-virtual {p3, v1}, La0/y0;->g(I)I

    move-result v4

    aget-object v2, v2, v4

    instance-of v4, v2, La0/r0;

    if-eqz v4, :cond_0

    sub-int v4, p2, v1

    check-cast v2, La0/r0;

    iget-object v2, v2, La0/r0;->a:La0/q0;

    const/4 v5, -0x1

    invoke-virtual {p4, v2, v4, v5, v5}, LB0/M;->n(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_0
    instance-of v4, v2, La0/i0;

    if-eqz v4, :cond_1

    check-cast v2, La0/i0;

    invoke-virtual {v2}, La0/i0;->d()V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-lez p1, :cond_3

    move p2, v3

    goto :goto_2

    :cond_3
    move p2, p0

    :goto_2
    invoke-static {p2}, La0/d;->K(Z)V

    iget p2, p3, La0/y0;->u:I

    iget-object p4, p3, La0/y0;->b:[I

    invoke-virtual {p3, p2}, La0/y0;->p(I)I

    move-result v0

    invoke-virtual {p3, v0, p4}, La0/y0;->D(I[I)I

    move-result p4

    iget-object v0, p3, La0/y0;->b:[I

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p3, v1}, La0/y0;->p(I)I

    move-result v1

    invoke-virtual {p3, v1, v0}, La0/y0;->f(I[I)I

    move-result v0

    sub-int/2addr v0, p1

    if-lt v0, p4, :cond_4

    move p0, v3

    :cond_4
    invoke-static {p0}, La0/d;->K(Z)V

    invoke-virtual {p3, v0, p1, p2}, La0/y0;->B(III)V

    iget p0, p3, La0/y0;->i:I

    if-lt p0, p4, :cond_5

    sub-int/2addr p0, p1

    iput p0, p3, La0/y0;->i:I

    :cond_5
    return-void
.end method

.method public final b(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, v0}, LA/b;->c(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "count"

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lb0/C;->b(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
