.class public final enum Lorg/jsoup/parser/i;
.super Lorg/jsoup/parser/C;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InSelect"

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(LF3/f;Lorg/jsoup/parser/b;)Z
    .locals 9

    const-string v0, "select"

    const/4 v1, 0x1

    const-string v2, "template"

    sget-object v3, Lorg/jsoup/parser/s;->a:[I

    iget-object v4, p1, LF3/f;->b:Ljava/lang/Object;

    check-cast v4, Lorg/jsoup/parser/O;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const-string v4, "html"

    const-string v5, "optgroup"

    const/4 v6, 0x0

    const-string v7, "option"

    packed-switch v3, :pswitch_data_0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v6

    :pswitch_0
    invoke-virtual {p2, v4}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_14

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    goto/16 :goto_2

    :pswitch_1
    check-cast p1, Lorg/jsoup/parser/H;

    iget-object v0, p1, Lorg/jsoup/parser/H;->c:Ljava/lang/String;

    invoke-static {}, Lorg/jsoup/parser/C;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v6

    :cond_0
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->s(Lorg/jsoup/parser/H;)V

    goto/16 :goto_2

    :pswitch_2
    move-object v3, p1

    check-cast v3, Lorg/jsoup/parser/L;

    iget-object v3, v3, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v1

    goto :goto_0

    :sswitch_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move v4, v6

    :goto_0
    packed-switch v4, :pswitch_data_1

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v6

    :pswitch_3
    invoke-virtual {p2, v7}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->f()LQd/n;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->a(LQd/n;)LQd/n;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->f()LQd/n;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->a(LQd/n;)LQd/n;

    move-result-object p1

    iget-object p1, p1, LQd/n;->d:Lorg/jsoup/parser/F;

    iget-object p1, p1, Lorg/jsoup/parser/F;->b:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p2, v7}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    :cond_5
    invoke-virtual {p2, v5}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->D()V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/b;->o(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v6

    :cond_7
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->O()Z

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {p2, v7}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->D()V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    goto/16 :goto_2

    :pswitch_6
    sget-object p0, Lorg/jsoup/parser/C;->InHead:Lorg/jsoup/parser/C;

    iput-object p1, p2, Lorg/jsoup/parser/b;->g:LF3/f;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/C;->e(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0

    :pswitch_7
    move-object v3, p1

    check-cast v3, Lorg/jsoup/parser/M;

    iget-object v8, v3, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object p0, Lorg/jsoup/parser/C;->InBody:Lorg/jsoup/parser/C;

    iput-object v3, p2, Lorg/jsoup/parser/b;->g:LF3/f;

    invoke-virtual {p0, v3, p2}, Lorg/jsoup/parser/C;->e(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0

    :cond_9
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p2, v7}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {p2, v7}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    :cond_a
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    goto :goto_2

    :cond_b
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p2, v7}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-virtual {p2, v7}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    :cond_c
    invoke-virtual {p2, v5}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-virtual {p2, v5}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    :cond_d
    invoke-virtual {p2, v3}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    goto :goto_2

    :cond_e
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_f
    sget-object v1, Lorg/jsoup/parser/B;->G:[Ljava/lang/String;

    invoke-static {v8, v1}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->o(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_10

    return v6

    :cond_10
    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->I(Ljava/lang/String;)Z

    invoke-virtual {p2, v3}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0

    :cond_11
    const-string v0, "script"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_1

    :cond_12
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v6

    :cond_13
    :goto_1
    sget-object p0, Lorg/jsoup/parser/C;->InHead:Lorg/jsoup/parser/C;

    iput-object p1, p2, Lorg/jsoup/parser/b;->g:LF3/f;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/C;->e(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0

    :pswitch_8
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v6

    :pswitch_9
    check-cast p1, Lorg/jsoup/parser/I;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->u(Lorg/jsoup/parser/I;)V

    :cond_14
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x4ec53386 -> :sswitch_3
        -0x3c35778b -> :sswitch_2
        -0x3600cb04 -> :sswitch_1
        -0x4d08054 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
