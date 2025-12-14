.class public final enum Lorg/jsoup/parser/t;
.super Lorg/jsoup/parser/C;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "BeforeHtml"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(LF3/f;Lorg/jsoup/parser/b;)Z
    .locals 5

    invoke-virtual {p1}, LF3/f;->J0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v1

    :cond_0
    invoke-virtual {p1}, LF3/f;->I0()Z

    move-result v0

    if-eqz v0, :cond_1

    check-cast p1, Lorg/jsoup/parser/I;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->u(Lorg/jsoup/parser/I;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/jsoup/parser/C;->a(LF3/f;)Z

    move-result v0

    if-eqz v0, :cond_2

    check-cast p1, Lorg/jsoup/parser/H;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->s(Lorg/jsoup/parser/H;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LF3/f;->M0()Z

    move-result v0

    const-string v2, "html"

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/jsoup/parser/M;

    iget-object v3, v0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    sget-object p0, Lorg/jsoup/parser/C;->BeforeHead:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-virtual {p1}, LF3/f;->L0()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lorg/jsoup/parser/L;

    iget-object v0, v0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    sget-object v4, Lorg/jsoup/parser/B;->e:[Ljava/lang/String;

    invoke-static {v0, v4}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, LQd/n;

    iget-object v0, p2, Lorg/jsoup/parser/b;->h:Lorg/jsoup/parser/E;

    invoke-virtual {p2, v2, v0}, Lorg/jsoup/parser/b;->P(Ljava/lang/String;Lorg/jsoup/parser/E;)Lorg/jsoup/parser/F;

    move-result-object v0

    invoke-direct {p0, v0, v3, v3}, LQd/n;-><init>(Lorg/jsoup/parser/F;Ljava/lang/String;LQd/c;)V

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->y(LQd/u;)V

    iget-object v0, p2, Lorg/jsoup/parser/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lorg/jsoup/parser/C;->BeforeHead:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p1}, LF3/f;->L0()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v1

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, LQd/n;

    iget-object v0, p2, Lorg/jsoup/parser/b;->h:Lorg/jsoup/parser/E;

    invoke-virtual {p2, v2, v0}, Lorg/jsoup/parser/b;->P(Ljava/lang/String;Lorg/jsoup/parser/E;)Lorg/jsoup/parser/F;

    move-result-object v0

    invoke-direct {p0, v0, v3, v3}, LQd/n;-><init>(Lorg/jsoup/parser/F;Ljava/lang/String;LQd/c;)V

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->y(LQd/u;)V

    iget-object v0, p2, Lorg/jsoup/parser/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lorg/jsoup/parser/C;->BeforeHead:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0
.end method
