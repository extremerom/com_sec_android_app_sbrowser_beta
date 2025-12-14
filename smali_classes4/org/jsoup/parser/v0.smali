.class public final enum Lorg/jsoup/parser/v0;
.super Lorg/jsoup/parser/i1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "AfterAttributeName"

    const/16 v1, 0x23

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V
    .locals 4

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->e()C

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    const/16 v3, 0x20

    if-eq v0, v3, :cond_6

    const/16 v3, 0x22

    if-eq v0, v3, :cond_2

    const/16 v3, 0x27

    if-eq v0, v3, :cond_2

    const/16 v3, 0x2f

    if-eq v0, v3, :cond_1

    const v3, 0xffff

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_6

    const/16 v3, 0xa

    if-eq v0, v3, :cond_6

    const/16 v3, 0xc

    if-eq v0, v3, :cond_6

    const/16 v3, 0xd

    if-eq v0, v3, :cond_6

    packed-switch v0, :pswitch_data_0

    iget-object p0, p1, Lorg/jsoup/parser/S;->k:Lorg/jsoup/parser/N;

    invoke-virtual {p0}, Lorg/jsoup/parser/N;->Z0()V

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->y()V

    sget-object p0, Lorg/jsoup/parser/i1;->AttributeName:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/parser/S;->l()V

    sget-object p0, Lorg/jsoup/parser/i1;->Data:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :pswitch_1
    sget-object p0, Lorg/jsoup/parser/i1;->BeforeAttributeValue:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->m(Lorg/jsoup/parser/i1;)V

    sget-object p0, Lorg/jsoup/parser/i1;->Data:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/jsoup/parser/i1;->SelfClosingStartTag:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_2
    :pswitch_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->n(Lorg/jsoup/parser/i1;)V

    iget-object p0, p1, Lorg/jsoup/parser/S;->k:Lorg/jsoup/parser/N;

    invoke-virtual {p0}, Lorg/jsoup/parser/N;->Z0()V

    iget-object p0, p1, Lorg/jsoup/parser/S;->k:Lorg/jsoup/parser/N;

    iput-boolean v2, p0, Lorg/jsoup/parser/N;->g:Z

    iget-object p2, p0, Lorg/jsoup/parser/N;->f:Ljava/lang/String;

    iget-object v2, p0, Lorg/jsoup/parser/N;->e:Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v1, p0, Lorg/jsoup/parser/N;->f:Ljava/lang/String;

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p0, Lorg/jsoup/parser/i1;->AttributeName:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->n(Lorg/jsoup/parser/i1;)V

    iget-object p0, p1, Lorg/jsoup/parser/S;->k:Lorg/jsoup/parser/N;

    iput-boolean v2, p0, Lorg/jsoup/parser/N;->g:Z

    iget-object p2, p0, Lorg/jsoup/parser/N;->f:Ljava/lang/String;

    iget-object v0, p0, Lorg/jsoup/parser/N;->e:Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v1, p0, Lorg/jsoup/parser/N;->f:Ljava/lang/String;

    :cond_5
    const p0, 0xfffd

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p0, Lorg/jsoup/parser/i1;->AttributeName:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    :cond_6
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
