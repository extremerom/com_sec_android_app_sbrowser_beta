.class public final enum Lorg/jsoup/parser/e;
.super Lorg/jsoup/parser/C;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InColumnGroup"

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(LF3/f;Lorg/jsoup/parser/b;)Z
    .locals 9

    const/4 v0, 0x0

    const-string v1, "template"

    const-string v2, "html"

    const/4 v3, 0x2

    invoke-static {p1}, Lorg/jsoup/parser/C;->a(LF3/f;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    check-cast p1, Lorg/jsoup/parser/H;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->s(Lorg/jsoup/parser/H;)V

    return v5

    :cond_0
    sget-object v4, Lorg/jsoup/parser/s;->a:[I

    iget-object v6, p1, LF3/f;->b:Ljava/lang/Object;

    check-cast v6, Lorg/jsoup/parser/O;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v4, v4, v6

    if-eq v4, v5, :cond_c

    if-eq v4, v3, :cond_b

    const/4 v6, 0x3

    if-eq v4, v6, :cond_7

    const/4 v3, 0x4

    if-eq v4, v3, :cond_3

    const/4 v0, 0x6

    if-eq v4, v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/e;->f(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v5

    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/e;->f(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0

    :cond_3
    move-object v2, p1

    check-cast v2, Lorg/jsoup/parser/L;

    iget-object v2, v2, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "colgroup"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/e;->f(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v0

    :cond_5
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->D()V

    sget-object p0, Lorg/jsoup/parser/C;->InTable:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    goto :goto_2

    :cond_6
    sget-object p0, Lorg/jsoup/parser/C;->InHead:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/b;->H(LF3/f;Lorg/jsoup/parser/C;)Z

    goto :goto_2

    :cond_7
    move-object v4, p1

    check-cast v4, Lorg/jsoup/parser/M;

    iget-object v6, v4, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    :goto_0
    move v0, v7

    goto :goto_1

    :sswitch_0
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "col"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    move v0, v5

    goto :goto_1

    :sswitch_2
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_0

    :cond_a
    :goto_1
    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/e;->f(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0

    :pswitch_0
    sget-object p0, Lorg/jsoup/parser/C;->InBody:Lorg/jsoup/parser/C;

    iput-object p1, p2, Lorg/jsoup/parser/b;->g:LF3/f;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/C;->e(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0

    :pswitch_1
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/b;->v(Lorg/jsoup/parser/M;)LQd/n;

    goto :goto_2

    :pswitch_2
    sget-object p0, Lorg/jsoup/parser/C;->InHead:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/b;->H(LF3/f;Lorg/jsoup/parser/C;)Z

    goto :goto_2

    :cond_b
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    goto :goto_2

    :cond_c
    check-cast p1, Lorg/jsoup/parser/I;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->u(Lorg/jsoup/parser/I;)V

    :goto_2
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_2
        0x18180 -> :sswitch_1
        0x3107ab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(LF3/f;Lorg/jsoup/parser/b;)Z
    .locals 1

    const-string v0, "colgroup"

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->D()V

    sget-object p0, Lorg/jsoup/parser/C;->InTable:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    const/4 p0, 0x1

    return p0
.end method
