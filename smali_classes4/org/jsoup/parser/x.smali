.class public final enum Lorg/jsoup/parser/x;
.super Lorg/jsoup/parser/C;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "AfterHead"

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(LF3/f;Lorg/jsoup/parser/b;)Z
    .locals 6

    invoke-static {p1}, Lorg/jsoup/parser/C;->a(LF3/f;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jsoup/parser/H;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->s(Lorg/jsoup/parser/H;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, LF3/f;->I0()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/jsoup/parser/I;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->u(Lorg/jsoup/parser/I;)V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p1}, LF3/f;->J0()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, LF3/f;->M0()Z

    move-result v0

    const-string v2, "body"

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lorg/jsoup/parser/M;

    iget-object v4, v0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    const-string v5, "html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    sget-object p0, Lorg/jsoup/parser/C;->InBody:Lorg/jsoup/parser/C;

    iput-object p1, p2, Lorg/jsoup/parser/b;->g:LF3/f;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/C;->e(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    iput-boolean v3, p2, Lorg/jsoup/parser/b;->u:Z

    sget-object p0, Lorg/jsoup/parser/C;->InBody:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    goto/16 :goto_0

    :cond_4
    const-string v5, "frameset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    sget-object p0, Lorg/jsoup/parser/C;->InFrameset:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    goto :goto_0

    :cond_5
    sget-object v0, Lorg/jsoup/parser/B;->g:[Ljava/lang/String;

    invoke-static {v4, v0}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    iget-object p0, p2, Lorg/jsoup/parser/b;->o:LQd/n;

    iget-object v0, p2, Lorg/jsoup/parser/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/jsoup/parser/C;->InHead:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/b;->H(LF3/f;Lorg/jsoup/parser/C;)Z

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->N(LQd/n;)V

    goto :goto_0

    :cond_6
    const-string v0, "head"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v3

    :cond_7
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/b;->J(Ljava/lang/String;)V

    iput-boolean v1, p2, Lorg/jsoup/parser/b;->u:Z

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, LF3/f;->L0()Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lorg/jsoup/parser/L;

    iget-object v0, v0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    sget-object v4, Lorg/jsoup/parser/B;->d:[Ljava/lang/String;

    invoke-static {v0, v4}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/b;->J(Ljava/lang/String;)V

    iput-boolean v1, p2, Lorg/jsoup/parser/b;->u:Z

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    goto :goto_0

    :cond_9
    const-string v2, "template"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p0, Lorg/jsoup/parser/C;->InHead:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/b;->H(LF3/f;Lorg/jsoup/parser/C;)Z

    goto :goto_0

    :cond_a
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v3

    :cond_b
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/b;->J(Ljava/lang/String;)V

    iput-boolean v1, p2, Lorg/jsoup/parser/b;->u:Z

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    :goto_0
    return v1
.end method
