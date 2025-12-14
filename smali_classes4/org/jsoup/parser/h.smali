.class public final enum Lorg/jsoup/parser/h;
.super Lorg/jsoup/parser/C;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InCell"

    const/16 v1, 0xe

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(LF3/f;Lorg/jsoup/parser/b;)Z
    .locals 5

    invoke-virtual {p1}, LF3/f;->L0()Z

    move-result v0

    const-string v1, "th"

    const-string v2, "td"

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lorg/jsoup/parser/L;

    iget-object v0, v0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    sget-object v4, Lorg/jsoup/parser/B;->w:[Ljava/lang/String;

    invoke-static {v0, v4}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->q(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    sget-object p0, Lorg/jsoup/parser/C;->InRow:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    return v3

    :cond_0
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/b;->j(Z)V

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :cond_1
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->c()V

    sget-object p0, Lorg/jsoup/parser/C;->InRow:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    const/4 p0, 0x1

    return p0

    :cond_2
    sget-object v4, Lorg/jsoup/parser/B;->x:[Ljava/lang/String;

    invoke-static {v0, v4}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v3

    :cond_3
    sget-object v4, Lorg/jsoup/parser/B;->y:[Ljava/lang/String;

    invoke-static {v0, v4}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v3

    :cond_4
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/b;->q(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    :goto_0
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0

    :cond_6
    sget-object p0, Lorg/jsoup/parser/C;->InBody:Lorg/jsoup/parser/C;

    iput-object p1, p2, Lorg/jsoup/parser/b;->g:LF3/f;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/C;->e(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0

    :cond_7
    invoke-virtual {p1}, LF3/f;->M0()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p1

    check-cast v0, Lorg/jsoup/parser/M;

    iget-object v0, v0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    sget-object v4, Lorg/jsoup/parser/B;->z:[Ljava/lang/String;

    invoke-static {v0, v4}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/b;->q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->q(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v3

    :cond_8
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/b;->q(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    goto :goto_1

    :cond_9
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    :goto_1
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0

    :cond_a
    sget-object p0, Lorg/jsoup/parser/C;->InBody:Lorg/jsoup/parser/C;

    iput-object p1, p2, Lorg/jsoup/parser/b;->g:LF3/f;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/C;->e(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0
.end method
