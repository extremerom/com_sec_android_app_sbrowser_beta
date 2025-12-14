.class public final enum Lorg/jsoup/parser/n0;
.super Lorg/jsoup/parser/i1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "ScriptDataDoubleEscaped"

    const/16 v1, 0x1c

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V
    .locals 2

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->l()C

    move-result v0

    if-eqz v0, :cond_3

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    const/4 p0, 0x3

    new-array p0, p0, [C

    fill-array-data p0, :array_0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->j([C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->m(Lorg/jsoup/parser/i1;)V

    sget-object p0, Lorg/jsoup/parser/i1;->Data:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/S;->f(C)V

    sget-object p0, Lorg/jsoup/parser/i1;->ScriptDataDoubleEscapedLessthanSign:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->a(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lorg/jsoup/parser/S;->f(C)V

    sget-object p0, Lorg/jsoup/parser/i1;->ScriptDataDoubleEscapedDash:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->a(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->n(Lorg/jsoup/parser/i1;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->a()V

    const p0, 0xfffd

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->f(C)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 2
        0x2ds
        0x3cs
        0x0s
    .end array-data
.end method
