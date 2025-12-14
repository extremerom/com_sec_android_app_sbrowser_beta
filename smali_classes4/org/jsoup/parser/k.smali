.class public final enum Lorg/jsoup/parser/k;
.super Lorg/jsoup/parser/C;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "InTemplate"

    const/16 v1, 0x11

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final e(LF3/f;Lorg/jsoup/parser/b;)Z
    .locals 3

    sget-object v0, Lorg/jsoup/parser/s;->a:[I

    iget-object v1, p1, LF3/f;->b:Ljava/lang/Object;

    check-cast v1, Lorg/jsoup/parser/O;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const-string v2, "template"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/b;->z(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/b;->E(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->c()V

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->F()V

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->O()Z

    iget-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    sget-object v0, Lorg/jsoup/parser/C;->InTemplate:Lorg/jsoup/parser/C;

    if-eq p0, v0, :cond_1

    iget-object p0, p2, Lorg/jsoup/parser/b;->r:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/16 v0, 0xc

    if-ge p0, v0, :cond_1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0

    :cond_1
    return v1

    :pswitch_1
    move-object v0, p1

    check-cast v0, Lorg/jsoup/parser/L;

    iget-object v0, v0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lorg/jsoup/parser/C;->InHead:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/b;->H(LF3/f;Lorg/jsoup/parser/C;)Z

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->h(Lorg/jsoup/parser/C;)V

    const/4 p0, 0x0

    return p0

    :pswitch_2
    move-object p0, p1

    check-cast p0, Lorg/jsoup/parser/M;

    iget-object p0, p0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    sget-object v0, Lorg/jsoup/parser/B;->L:[Ljava/lang/String;

    invoke-static {p0, v0}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p0, Lorg/jsoup/parser/C;->InHead:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/b;->H(LF3/f;Lorg/jsoup/parser/C;)Z

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lorg/jsoup/parser/B;->M:[Ljava/lang/String;

    invoke-static {p0, v0}, LPd/b;->c(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->F()V

    sget-object p0, Lorg/jsoup/parser/C;->InTable:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->K(Lorg/jsoup/parser/C;)V

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0

    :cond_4
    const-string v0, "col"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->F()V

    sget-object p0, Lorg/jsoup/parser/C;->InColumnGroup:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->K(Lorg/jsoup/parser/C;)V

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0

    :cond_5
    const-string v0, "tr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lorg/jsoup/parser/b;->F()V

    sget-object p0, Lorg/jsoup/parser/C;->InTableBody:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->K(Lorg/jsoup/parser/C;)V

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0

    :cond_6
    const-string v0, "td"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "th"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->F()V

    sget-object p0, Lorg/jsoup/parser/C;->InBody:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->K(Lorg/jsoup/parser/C;)V

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0

    :cond_8
    :goto_0
    invoke-virtual {p2}, Lorg/jsoup/parser/b;->F()V

    sget-object p0, Lorg/jsoup/parser/C;->InRow:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/b;->K(Lorg/jsoup/parser/C;)V

    iput-object p0, p2, Lorg/jsoup/parser/b;->l:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/b;->G(LF3/f;)Z

    move-result p0

    return p0

    :pswitch_3
    sget-object p0, Lorg/jsoup/parser/C;->InBody:Lorg/jsoup/parser/C;

    invoke-virtual {p2, p1, p0}, Lorg/jsoup/parser/b;->H(LF3/f;Lorg/jsoup/parser/C;)Z

    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
