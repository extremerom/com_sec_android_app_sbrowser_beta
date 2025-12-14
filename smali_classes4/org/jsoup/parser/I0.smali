.class public final enum Lorg/jsoup/parser/I0;
.super Lorg/jsoup/parser/i1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "CommentEndDash"

    const/16 v1, 0x2f

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V
    .locals 2

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->e()C

    move-result p2

    const/16 v0, 0x2d

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    const v1, 0xffff

    if-eq p2, v1, :cond_0

    iget-object p0, p1, Lorg/jsoup/parser/S;->n:Lorg/jsoup/parser/I;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/I;->S0(C)V

    invoke-virtual {p0, p2}, Lorg/jsoup/parser/I;->S0(C)V

    sget-object p0, Lorg/jsoup/parser/i1;->Comment:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->m(Lorg/jsoup/parser/i1;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/S;->j()V

    sget-object p0, Lorg/jsoup/parser/i1;->Data:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/jsoup/parser/i1;->CommentEnd:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->n(Lorg/jsoup/parser/i1;)V

    iget-object p0, p1, Lorg/jsoup/parser/S;->n:Lorg/jsoup/parser/I;

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/I;->S0(C)V

    const p2, 0xfffd

    invoke-virtual {p0, p2}, Lorg/jsoup/parser/I;->S0(C)V

    sget-object p0, Lorg/jsoup/parser/i1;->Comment:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    :goto_0
    return-void
.end method
