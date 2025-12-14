.class public final enum Lorg/jsoup/parser/v;
.super Lorg/jsoup/parser/C;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InHead"

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(LF3/f;Lorg/jsoup/parser/b;)Z
    .locals 7

    invoke-static {p1}, Lorg/jsoup/parser/C;->a(LF3/f;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jsoup/parser/H;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->s(Lorg/jsoup/parser/H;)V

    return v1

    :cond_0
    sget-object v0, Lorg/jsoup/parser/s;->a:[I

    iget-object v2, p1, LF3/f;->b:Ljava/lang/Object;

    check-cast v2, Lorg/jsoup/parser/O;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    if-eq v0, v1, :cond_13

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_12

    const-string v2, "head"

    const/4 v4, 0x3

    const-string v5, "template"

    if-eq v0, v4, :cond_7

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0

    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/jsoup/parser/L;

    iget-object v0, v0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->D()V

    sget-object p0, Lorg/jsoup/parser/C;->AfterHead:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    goto/16 :goto_0

    :cond_2
    sget-object v4, Lorg/jsoup/parser/B;->c:[Ljava/lang/String;

    invoke-static {v0, v4}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0

    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->z(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->j(Z)V

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->f()LQd/n;

    move-result-object p1

    iget-object p1, p1, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object p1, p1, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :cond_5
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->c()V

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->F()V

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->O()Z

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v3

    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/jsoup/parser/M;

    iget-object v4, v0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    const-string v6, "html"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object p0, Lorg/jsoup/parser/C;->InBody:Lorg/jsoup/parser/C;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/C;->e(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0

    :cond_8
    sget-object v6, Lorg/jsoup/parser/B;->a:[Ljava/lang/String;

    invoke-static {v4, v6}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->v(Lorg/jsoup/parser/M;)LQd/n;

    move-result-object p0

    const-string p1, "base"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "href"

    invoke-virtual {p0, p1}, LQd/u;->l(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p2, Lorg/jsoup/parser/b;->n:Z

    if-eqz v0, :cond_9

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, p1}, LQd/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_14

    iput-object p0, p2, Lorg/jsoup/parser/b;->f:Ljava/lang/String;

    iput-boolean v1, p2, Lorg/jsoup/parser/b;->n:Z

    iget-object p1, p2, Lorg/jsoup/parser/b;->d:LQd/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1, p0}, LQd/n;->E(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v6, "meta"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->v(Lorg/jsoup/parser/M;)LQd/n;

    goto/16 :goto_0

    :cond_b
    const-string v6, "title"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object p0, p2, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/S;

    sget-object p1, Lorg/jsoup/parser/i1;->Rcdata:Lorg/jsoup/parser/i1;

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    iget-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->m:Lorg/jsoup/parser/C;

    sget-object p0, Lorg/jsoup/parser/C;->Text:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    goto :goto_0

    :cond_c
    sget-object v6, Lorg/jsoup/parser/B;->b:[Ljava/lang/String;

    invoke-static {v4, v6}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {v0, p2}, Lorg/jsoup/parser/C;->c(Lorg/jsoup/parser/M;Lorg/jsoup/parser/b;)V

    goto :goto_0

    :cond_d
    const-string v6, "noscript"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    sget-object p0, Lorg/jsoup/parser/C;->InHeadNoscript:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    goto :goto_0

    :cond_e
    const-string v6, "script"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object p0, p2, Lorg/jsoup/parser/b;->c:Lorg/jsoup/parser/S;

    sget-object p1, Lorg/jsoup/parser/i1;->ScriptData:Lorg/jsoup/parser/i1;

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    iget-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->m:Lorg/jsoup/parser/C;

    sget-object p0, Lorg/jsoup/parser/C;->Text:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    goto :goto_0

    :cond_f
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v3

    :cond_10
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    iget-object p0, p2, Lorg/jsoup/parser/b;->q:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v3, p2, Lorg/jsoup/parser/b;->u:Z

    sget-object p0, Lorg/jsoup/parser/C;->InTemplate:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->K(Lorg/jsoup/parser/C;)V

    goto :goto_0

    :cond_11
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0

    :cond_12
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v3

    :cond_13
    check-cast p1, Lorg/jsoup/parser/I;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->u(Lorg/jsoup/parser/I;)V

    :cond_14
    :goto_0
    return v1
.end method
