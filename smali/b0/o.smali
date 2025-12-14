.class public final Lb0/o;
.super Lb0/C;
.source "SourceFile"


# static fields
.field public static final c:Lb0/o;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb0/o;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lb0/C;-><init>(III)V

    sput-object v0, Lb0/o;->c:Lb0/o;

    return-void
.end method


# virtual methods
.method public final a(LN/h;LJ2/i0;La0/y0;LB0/M;)V
    .locals 5

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, LN/h;->d(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La0/w0;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, LN/h;->d(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La0/c;

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, LN/h;->d(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb0/c;

    invoke-virtual {v0}, La0/w0;->m()La0/y0;

    move-result-object v3

    :try_start_0
    iget-object v4, p1, Lb0/c;->c:Lb0/D;

    invoke-virtual {v4}, Lb0/D;->h()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object p1, p1, Lb0/c;->b:Lb0/D;

    invoke-virtual {p1, p2, v3, p4}, Lb0/D;->g(LJ2/i0;La0/y0;LB0/M;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3, p0}, La0/y0;->e(Z)V

    invoke-virtual {p3}, La0/y0;->d()V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v2}, La0/w0;->g(La0/c;)I

    move-result p0

    invoke-virtual {p3, v0, p0}, La0/y0;->t(La0/w0;I)V

    invoke-virtual {p3}, La0/y0;->j()V

    return-void

    :cond_0
    :try_start_1
    const-string p0, "FixupList has pending fixup operations that were not realized. Were there mismatched insertNode() and endNodeInsert() calls?"

    invoke-static {p0}, La0/d;->t(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    invoke-virtual {v3, v1}, La0/y0;->e(Z)V

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

    const-string p0, "from"

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-static {p1, v0}, LAb/E;->f(II)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "fixups"

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Lb0/C;->c(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
