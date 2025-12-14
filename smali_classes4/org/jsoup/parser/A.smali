.class public final enum Lorg/jsoup/parser/A;
.super Lorg/jsoup/parser/C;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InTable"

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(LF3/f;Lorg/jsoup/parser/b;)Z
    .locals 8

    iget-object v0, p1, LF3/f;->b:Ljava/lang/Object;

    check-cast v0, Lorg/jsoup/parser/O;

    sget-object v1, Lorg/jsoup/parser/O;->Character:Lorg/jsoup/parser/O;

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->f()LQd/n;

    move-result-object v0

    iget-object v0, v0, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object v0, v0, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    sget-object v1, Lorg/jsoup/parser/B;->B:[Ljava/lang/String;

    invoke-static {v0, v1}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, p2, Lorg/jsoup/parser/b;->s:Ljava/util/ArrayList;

    iget-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->m:Lorg/jsoup/parser/C;

    sget-object p0, Lorg/jsoup/parser/C;->InTableText:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, LF3/f;->I0()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    check-cast p1, Lorg/jsoup/parser/I;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->u(Lorg/jsoup/parser/I;)V

    return v1

    :cond_1
    invoke-virtual {p1}, LF3/f;->J0()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v2

    :cond_2
    invoke-virtual {p1}, LF3/f;->M0()Z

    move-result v0

    const-string v3, "template"

    const-string v4, "table"

    if-eqz v0, :cond_12

    move-object v0, p1

    check-cast v0, Lorg/jsoup/parser/M;

    iget-object v5, v0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    const-string v6, "caption"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->e()V

    iget-object p0, p2, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    sget-object p0, Lorg/jsoup/parser/C;->InCaption:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    goto/16 :goto_1

    :cond_3
    const-string v6, "colgroup"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->e()V

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    sget-object p0, Lorg/jsoup/parser/C;->InColumnGroup:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    goto/16 :goto_1

    :cond_4
    const-string v7, "col"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->e()V

    invoke-virtual {p2, v6}, Lorg/jsoup/parser/b;->J(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0

    :cond_5
    sget-object v6, Lorg/jsoup/parser/B;->t:[Ljava/lang/String;

    invoke-static {v5, v6}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->e()V

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    sget-object p0, Lorg/jsoup/parser/C;->InTableBody:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    goto/16 :goto_1

    :cond_6
    sget-object v6, Lorg/jsoup/parser/B;->u:[Ljava/lang/String;

    invoke-static {v5, v6}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->e()V

    const-string p0, "tbody"

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->J(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0

    :cond_7
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/b;->q(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    return v2

    :cond_8
    invoke-virtual {p2, v5}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->O()Z

    move-result p0

    if-nez p0, :cond_9

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    return v1

    :cond_9
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0

    :cond_a
    sget-object v4, Lorg/jsoup/parser/B;->v:[Ljava/lang/String;

    invoke-static {v5, v4}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    sget-object p0, Lorg/jsoup/parser/C;->InHead:Lorg/jsoup/parser/C;

    iput-object p1, p2, Lorg/jsoup/parser/b;->g:LF3/f;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/C;->e(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0

    :cond_b
    const-string v4, "input"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v0}, Lorg/jsoup/parser/N;->W0()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v0, Lorg/jsoup/parser/N;->m:LQd/c;

    const-string v3, "type"

    invoke-virtual {v2, v3}, LQd/c;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hidden"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    :cond_c
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->v(Lorg/jsoup/parser/M;)LQd/n;

    goto :goto_1

    :cond_d
    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/A;->f(LF3/f;Lorg/jsoup/parser/b;)V

    return v1

    :cond_e
    const-string v4, "form"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    iget-object p0, p2, Lorg/jsoup/parser/b;->p:LQd/s;

    if-nez p0, :cond_10

    invoke-virtual {p2, v3}, Lorg/jsoup/parser/b;->z(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_2

    :cond_f
    invoke-virtual {p2, v0, v2, v2}, Lorg/jsoup/parser/b;->w(Lorg/jsoup/parser/M;ZZ)V

    :goto_1
    return v1

    :cond_10
    :goto_2
    return v2

    :cond_11
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/A;->f(LF3/f;Lorg/jsoup/parser/b;)V

    return v1

    :cond_12
    invoke-virtual {p1}, LF3/f;->L0()Z

    move-result v0

    if-eqz v0, :cond_17

    move-object v0, p1

    check-cast v0, Lorg/jsoup/parser/L;

    iget-object v0, v0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->q(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_13

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v2

    :cond_13
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->O()Z

    goto :goto_3

    :cond_14
    sget-object v4, Lorg/jsoup/parser/B;->A:[Ljava/lang/String;

    invoke-static {v0, v4}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v2

    :cond_15
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p0, Lorg/jsoup/parser/C;->InHead:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/b;->H(LF3/f;Lorg/jsoup/parser/C;)Z

    :goto_3
    return v1

    :cond_16
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/A;->f(LF3/f;Lorg/jsoup/parser/b;)V

    return v1

    :cond_17
    invoke-virtual {p1}, LF3/f;->K0()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string p1, "html"

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_18

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :cond_18
    return v1

    :cond_19
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/A;->f(LF3/f;Lorg/jsoup/parser/b;)V

    return v1
.end method

.method public final f(LF3/f;Lorg/jsoup/parser/b;)V
    .locals 0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    const/4 p0, 0x1

    iput-boolean p0, p2, Lorg/jsoup/parser/b;->v:Z

    sget-object p0, Lorg/jsoup/parser/C;->InBody:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/b;->H(LF3/f;Lorg/jsoup/parser/C;)Z

    const/4 p0, 0x0

    iput-boolean p0, p2, Lorg/jsoup/parser/b;->v:Z

    return-void
.end method
