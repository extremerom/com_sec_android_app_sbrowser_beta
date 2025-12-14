.class public final enum Lorg/jsoup/parser/H0;
.super Lorg/jsoup/parser/i1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "Comment"

    const/16 v1, 0x2e

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V
    .locals 2

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->l()C

    move-result v0

    if-eqz v0, :cond_2

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    iget-object p0, p1, Lorg/jsoup/parser/S;->n:Lorg/jsoup/parser/I;

    const/4 p1, 0x2

    new-array p1, p1, [C

    fill-array-data p1, :array_0

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/a;->j([C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/I;->T0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->m(Lorg/jsoup/parser/i1;)V

    invoke-virtual {p1}, Lorg/jsoup/parser/S;->j()V

    sget-object p0, Lorg/jsoup/parser/i1;->Data:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/jsoup/parser/i1;->CommentEndDash:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->a(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->n(Lorg/jsoup/parser/i1;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->a()V

    iget-object p0, p1, Lorg/jsoup/parser/S;->n:Lorg/jsoup/parser/I;

    const p1, 0xfffd

    invoke-virtual {p0, p1}, Lorg/jsoup/parser/I;->S0(C)V

    :goto_0
    return-void

    :array_0
    .array-data 2
        0x2ds
        0x0s
    .end array-data
.end method
