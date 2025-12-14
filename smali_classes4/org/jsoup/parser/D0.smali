.class public final enum Lorg/jsoup/parser/D0;
.super Lorg/jsoup/parser/i1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "BogusComment"

    const/16 v1, 0x2a

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V
    .locals 2

    iget-object p0, p1, Lorg/jsoup/parser/S;->n:Lorg/jsoup/parser/I;

    const/16 v0, 0x3e

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/a;->i(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jsoup/parser/I;->T0(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->l()C

    move-result p0

    if-eq p0, v0, :cond_0

    const v0, 0xffff

    if-ne p0, v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->e()C

    invoke-virtual {p1}, Lorg/jsoup/parser/S;->j()V

    sget-object p0, Lorg/jsoup/parser/i1;->Data:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    :cond_1
    return-void
.end method
