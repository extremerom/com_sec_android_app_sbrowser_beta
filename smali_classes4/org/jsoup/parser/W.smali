.class public final enum Lorg/jsoup/parser/W;
.super Lorg/jsoup/parser/i1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "RCDATAEndTagName"

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static g(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V
    .locals 1

    const-string v0, "</"

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/S;->h(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jsoup/parser/S;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/S;->i(Ljava/lang/StringBuilder;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/a;->y()V

    sget-object p1, Lorg/jsoup/parser/i1;->Rcdata:Lorg/jsoup/parser/i1;

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V
    .locals 1

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->t()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->h()Ljava/lang/String;

    move-result-object p0

    iget-object p2, p1, Lorg/jsoup/parser/S;->k:Lorg/jsoup/parser/N;

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/N;->V0(Ljava/lang/String;)V

    iget-object p1, p1, Lorg/jsoup/parser/S;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->e()C

    move-result p0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_5

    const/16 v0, 0xa

    if-eq p0, v0, :cond_5

    const/16 v0, 0xc

    if-eq p0, v0, :cond_5

    const/16 v0, 0xd

    if-eq p0, v0, :cond_5

    const/16 v0, 0x20

    if-eq p0, v0, :cond_5

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_1

    invoke-static {p1, p2}, Lorg/jsoup/parser/W;->g(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/jsoup/parser/S;->o()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Lorg/jsoup/parser/S;->l()V

    sget-object p0, Lorg/jsoup/parser/i1;->Data:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_2
    invoke-static {p1, p2}, Lorg/jsoup/parser/W;->g(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/jsoup/parser/S;->o()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lorg/jsoup/parser/i1;->SelfClosingStartTag:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_4
    invoke-static {p1, p2}, Lorg/jsoup/parser/W;->g(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lorg/jsoup/parser/S;->o()Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lorg/jsoup/parser/i1;->BeforeAttributeName:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_6
    invoke-static {p1, p2}, Lorg/jsoup/parser/W;->g(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V

    :goto_0
    return-void
.end method
