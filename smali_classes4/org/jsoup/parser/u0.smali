.class public final enum Lorg/jsoup/parser/u0;
.super Lorg/jsoup/parser/i1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "AttributeName"

    const/16 v1, 0x22

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V
    .locals 6

    sget-object v0, Lorg/jsoup/parser/i1;->attributeNameCharsSorted:[C

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->k([C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/jsoup/parser/S;->k:Lorg/jsoup/parser/N;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    const v3, 0xfffd

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/jsoup/parser/N;->g:Z

    iget-object v3, v1, Lorg/jsoup/parser/N;->f:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v1, Lorg/jsoup/parser/N;->e:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v4, v1, Lorg/jsoup/parser/N;->f:Ljava/lang/String;

    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_1

    iput-object v0, v1, Lorg/jsoup/parser/N;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->e()C

    move-result p2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_7

    const/16 v0, 0xa

    if-eq p2, v0, :cond_7

    const/16 v0, 0xc

    if-eq p2, v0, :cond_7

    const/16 v0, 0xd

    if-eq p2, v0, :cond_7

    const/16 v0, 0x20

    if-eq p2, v0, :cond_7

    const/16 v0, 0x22

    if-eq p2, v0, :cond_5

    const/16 v0, 0x27

    if-eq p2, v0, :cond_5

    const/16 v0, 0x2f

    if-eq p2, v0, :cond_4

    const v0, 0xffff

    if-eq p2, v0, :cond_3

    packed-switch p2, :pswitch_data_0

    iget-object p0, p1, Lorg/jsoup/parser/S;->k:Lorg/jsoup/parser/N;

    iput-boolean v2, p0, Lorg/jsoup/parser/N;->g:Z

    iget-object p1, p0, Lorg/jsoup/parser/N;->f:Ljava/lang/String;

    iget-object v0, p0, Lorg/jsoup/parser/N;->e:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v4, p0, Lorg/jsoup/parser/N;->f:Ljava/lang/String;

    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    invoke-virtual {p1}, Lorg/jsoup/parser/S;->l()V

    sget-object p0, Lorg/jsoup/parser/i1;->Data:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_1

    :pswitch_1
    sget-object p0, Lorg/jsoup/parser/i1;->BeforeAttributeValue:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->m(Lorg/jsoup/parser/i1;)V

    sget-object p0, Lorg/jsoup/parser/i1;->Data:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_1

    :cond_4
    sget-object p0, Lorg/jsoup/parser/i1;->SelfClosingStartTag:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_1

    :cond_5
    :pswitch_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->n(Lorg/jsoup/parser/i1;)V

    iget-object p0, p1, Lorg/jsoup/parser/S;->k:Lorg/jsoup/parser/N;

    iput-boolean v2, p0, Lorg/jsoup/parser/N;->g:Z

    iget-object p1, p0, Lorg/jsoup/parser/N;->f:Ljava/lang/String;

    iget-object v0, p0, Lorg/jsoup/parser/N;->e:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iput-object v4, p0, Lorg/jsoup/parser/N;->f:Ljava/lang/String;

    :cond_6
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    sget-object p0, Lorg/jsoup/parser/i1;->AfterAttributeName:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
