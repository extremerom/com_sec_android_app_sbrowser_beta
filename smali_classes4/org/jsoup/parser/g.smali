.class public final enum Lorg/jsoup/parser/g;
.super Lorg/jsoup/parser/C;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InRow"

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(LF3/f;Lorg/jsoup/parser/b;)Z
    .locals 5

    invoke-virtual {p1}, LF3/f;->M0()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "template"

    const-string v3, "tr"

    if-eqz v0, :cond_3

    move-object p0, p1

    check-cast p0, Lorg/jsoup/parser/M;

    iget-object v0, p0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    sget-object v4, Lorg/jsoup/parser/B;->w:[Ljava/lang/String;

    invoke-static {v0, v4}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->d([Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    sget-object p0, Lorg/jsoup/parser/C;->InCell:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    iget-object p0, p2, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_0
    sget-object p0, Lorg/jsoup/parser/B;->E:[Ljava/lang/String;

    invoke-static {v0, p0}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2, v3}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result v1

    :cond_1
    return v1

    :cond_2
    sget-object p0, Lorg/jsoup/parser/C;->InTable:Lorg/jsoup/parser/C;

    iput-object p1, p2, Lorg/jsoup/parser/b;->g:LF3/f;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/C;->e(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p1}, LF3/f;->L0()Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lorg/jsoup/parser/L;

    iget-object v0, v0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->q(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v1

    :cond_4
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->d([Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->D()V

    sget-object p0, Lorg/jsoup/parser/C;->InTableBody:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    goto :goto_0

    :cond_5
    const-string v4, "table"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p2, v3}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result v1

    :cond_6
    return v1

    :cond_7
    sget-object v4, Lorg/jsoup/parser/B;->t:[Ljava/lang/String;

    invoke-static {v0, v4}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->q(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p2, v3}, Lorg/jsoup/parser/b;->q(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_1

    :cond_8
    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->d([Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->D()V

    sget-object p0, Lorg/jsoup/parser/C;->InTableBody:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_9
    :goto_1
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v1

    :cond_a
    sget-object v2, Lorg/jsoup/parser/B;->F:[Ljava/lang/String;

    invoke-static {v0, v2}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v1

    :cond_b
    sget-object p0, Lorg/jsoup/parser/C;->InTable:Lorg/jsoup/parser/C;

    iput-object p1, p2, Lorg/jsoup/parser/b;->g:LF3/f;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/C;->e(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0

    :cond_c
    sget-object p0, Lorg/jsoup/parser/C;->InTable:Lorg/jsoup/parser/C;

    iput-object p1, p2, Lorg/jsoup/parser/b;->g:LF3/f;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/C;->e(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0
.end method
