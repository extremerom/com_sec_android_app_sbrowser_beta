.class public final enum Lorg/jsoup/parser/p;
.super Lorg/jsoup/parser/C;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "AfterAfterBody"

    const/16 v1, 0x15

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(LF3/f;Lorg/jsoup/parser/b;)Z
    .locals 2

    invoke-virtual {p1}, LF3/f;->I0()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jsoup/parser/I;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->u(Lorg/jsoup/parser/I;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, LF3/f;->J0()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, LF3/f;->M0()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/jsoup/parser/M;

    iget-object v0, v0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lorg/jsoup/parser/C;->a(LF3/f;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p2, Lorg/jsoup/parser/b;->d:LQd/j;

    check-cast p1, Lorg/jsoup/parser/H;

    invoke-static {p1, p0}, Lorg/jsoup/parser/b;->t(Lorg/jsoup/parser/H;LQd/n;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LF3/f;->K0()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    const-string p0, "body"

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->z(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, p2, Lorg/jsoup/parser/b;->e:Ljava/util/ArrayList;

    iget-object v0, p2, Lorg/jsoup/parser/b;->d:LQd/j;

    invoke-virtual {v0}, LQd/j;->N()LQd/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object p0, Lorg/jsoup/parser/C;->InBody:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0

    :cond_5
    :goto_1
    sget-object p0, Lorg/jsoup/parser/C;->InBody:Lorg/jsoup/parser/C;

    iput-object p1, p2, Lorg/jsoup/parser/b;->g:LF3/f;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/C;->e(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0
.end method
