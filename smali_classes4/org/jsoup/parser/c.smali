.class public final enum Lorg/jsoup/parser/c;
.super Lorg/jsoup/parser/C;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InTableText"

    const/16 v1, 0x9

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(LF3/f;Lorg/jsoup/parser/b;)Z
    .locals 6

    iget-object v0, p1, LF3/f;->b:Ljava/lang/Object;

    check-cast v0, Lorg/jsoup/parser/O;

    sget-object v1, Lorg/jsoup/parser/O;->Character:Lorg/jsoup/parser/O;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    check-cast p1, Lorg/jsoup/parser/H;

    iget-object v0, p1, Lorg/jsoup/parser/H;->c:Ljava/lang/String;

    invoke-static {}, Lorg/jsoup/parser/C;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v3

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lorg/jsoup/parser/H;->S0()Lorg/jsoup/parser/H;

    move-result-object p0

    iget-object p1, p2, Lorg/jsoup/parser/b;->s:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return v2

    :cond_1
    iget-object v0, p2, Lorg/jsoup/parser/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p2, Lorg/jsoup/parser/b;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/parser/H;

    invoke-static {v1}, Lorg/jsoup/parser/C;->a(LF3/f;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->f()LQd/n;

    move-result-object v4

    iget-object v4, v4, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object v4, v4, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    sget-object v5, Lorg/jsoup/parser/B;->B:[Ljava/lang/String;

    invoke-static {v4, v5}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-boolean v2, p2, Lorg/jsoup/parser/b;->v:Z

    sget-object v4, Lorg/jsoup/parser/C;->InBody:Lorg/jsoup/parser/C;

    invoke-virtual {p2, v1, v4}, Lorg/jsoup/parser/b;->H(LF3/f;Lorg/jsoup/parser/C;)Z

    iput-boolean v3, p2, Lorg/jsoup/parser/b;->v:Z

    goto :goto_0

    :cond_2
    sget-object v4, Lorg/jsoup/parser/C;->InBody:Lorg/jsoup/parser/C;

    invoke-virtual {p2, v1, v4}, Lorg/jsoup/parser/b;->H(LF3/f;Lorg/jsoup/parser/C;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->s(Lorg/jsoup/parser/H;)V

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, p2, Lorg/jsoup/parser/b;->s:Ljava/util/ArrayList;

    :cond_5
    iget-object p0, p2, Lorg/jsoup/parser/b;->m:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0
.end method
