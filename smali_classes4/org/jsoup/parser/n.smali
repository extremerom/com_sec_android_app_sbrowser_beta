.class public final enum Lorg/jsoup/parser/n;
.super Lorg/jsoup/parser/C;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InFrameset"

    const/16 v1, 0x13

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(LF3/f;Lorg/jsoup/parser/b;)Z
    .locals 7

    const-string v0, "html"

    const-string v1, "frameset"

    const/4 v2, 0x0

    invoke-static {p1}, Lorg/jsoup/parser/C;->a(LF3/f;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    check-cast p1, Lorg/jsoup/parser/H;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->s(Lorg/jsoup/parser/H;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, LF3/f;->I0()Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast p1, Lorg/jsoup/parser/I;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->u(Lorg/jsoup/parser/I;)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, LF3/f;->J0()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v2

    :cond_2
    invoke-virtual {p1}, LF3/f;->M0()Z

    move-result v3

    if-eqz v3, :cond_7

    check-cast p1, Lorg/jsoup/parser/M;

    iget-object v3, p1, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "noframes"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v5, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "frame"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_2
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    move v5, v4

    goto :goto_0

    :sswitch_3
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v5, v2

    :goto_0
    packed-switch v5, :pswitch_data_0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v2

    :pswitch_0
    sget-object p0, Lorg/jsoup/parser/C;->InHead:Lorg/jsoup/parser/C;

    iput-object p1, p2, Lorg/jsoup/parser/b;->g:LF3/f;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/C;->e(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0

    :pswitch_1
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->v(Lorg/jsoup/parser/M;)LQd/n;

    goto :goto_1

    :pswitch_2
    sget-object p0, Lorg/jsoup/parser/C;->InBody:Lorg/jsoup/parser/C;

    iput-object p1, p2, Lorg/jsoup/parser/b;->g:LF3/f;

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/parser/C;->e(LF3/f;Lorg/jsoup/parser/b;)Z

    move-result p0

    return p0

    :pswitch_3
    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->r(Lorg/jsoup/parser/M;)LQd/n;

    goto :goto_1

    :cond_7
    invoke-virtual {p1}, LF3/f;->L0()Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v3, p1

    check-cast v3, Lorg/jsoup/parser/L;

    iget-object v3, v3, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v2

    :cond_8
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->D()V

    invoke-virtual {p2, v1}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_a

    sget-object p0, Lorg/jsoup/parser/C;->AfterFrameset:Lorg/jsoup/parser/C;

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, LF3/f;->K0()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/b;->g(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    :cond_a
    :goto_1
    return v4

    :cond_b
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x620c002b -> :sswitch_3
        0x3107ab -> :sswitch_2
        0x5d2a96d -> :sswitch_1
        0x47177da7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
