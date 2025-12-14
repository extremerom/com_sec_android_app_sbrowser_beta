.class public final enum Lorg/jsoup/parser/f;
.super Lorg/jsoup/parser/C;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InTableBody"

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(LF3/f;Lorg/jsoup/parser/b;)Z
    .locals 8

    sget-object v0, Lorg/jsoup/parser/s;->a:[I

    iget-object v1, p1, LF3/f;->b:Ljava/lang/Object;

    check-cast v1, Lorg/jsoup/parser/O;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    const-string v2, "tfoot"

    const-string v3, "tbody"

    const-string v4, "template"

    const-string v5, "thead"

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget-object p0, Lorg/jsoup/parser/C;->InTable:Lorg/jsoup/parser/C;

    iput-object p1, p2, Lorg/jsoup/parser/b;->g:LF3/f;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/C;->e(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/jsoup/parser/L;

    iget-object v0, v0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    sget-object v1, Lorg/jsoup/parser/B;->I:[Ljava/lang/String;

    invoke-static {v0, v1}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->q(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v6

    :cond_1
    filled-new-array {v3, v2, v5, v4}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->d([Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->D()V

    sget-object p0, Lorg/jsoup/parser/C;->InTable:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    goto :goto_0

    :cond_2
    const-string v1, "table"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/f;->f(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0

    :cond_3
    sget-object v1, Lorg/jsoup/parser/B;->D:[Ljava/lang/String;

    invoke-static {v0, v1}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v6

    :cond_4
    sget-object p0, Lorg/jsoup/parser/C;->InTable:Lorg/jsoup/parser/C;

    iput-object p1, p2, Lorg/jsoup/parser/b;->g:LF3/f;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/C;->e(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0

    :cond_5
    move-object v0, p1

    check-cast v0, Lorg/jsoup/parser/M;

    iget-object v1, v0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    const-string v6, "tr"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    filled-new-array {v3, v2, v5, v4}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->d([Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    sget-object p0, Lorg/jsoup/parser/C;->InRow:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_6
    sget-object v2, Lorg/jsoup/parser/B;->w:[Ljava/lang/String;

    invoke-static {v1, v2}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    invoke-virtual {p2, v6}, Lorg/jsoup/parser/b;->J(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0

    :cond_7
    sget-object v0, Lorg/jsoup/parser/B;->C:[Ljava/lang/String;

    invoke-static {v1, v0}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/f;->f(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0

    :cond_8
    sget-object p0, Lorg/jsoup/parser/C;->InTable:Lorg/jsoup/parser/C;

    iput-object p1, p2, Lorg/jsoup/parser/b;->g:LF3/f;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/C;->e(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0
.end method

.method public final f(LF3/f;Lorg/jsoup/parser/b;)Z
    .locals 4

    const-string v0, "tbody"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->q(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "tfoot"

    const-string v3, "thead"

    if-nez v1, :cond_0

    invoke-virtual {p2, v3}, Lorg/jsoup/parser/b;->q(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/b;->n(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "template"

    filled-new-array {v0, v2, v3, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->d([Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->f()LQd/n;

    move-result-object p0

    iget-object p0, p0, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object p0, p0, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0
.end method
