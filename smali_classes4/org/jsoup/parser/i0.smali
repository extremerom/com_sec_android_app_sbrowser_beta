.class public final enum Lorg/jsoup/parser/i0;
.super Lorg/jsoup/parser/i1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "ScriptDataEscapedDashDash"

    const/16 v1, 0x17

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V
    .locals 1

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->m(Lorg/jsoup/parser/i1;)V

    sget-object p0, Lorg/jsoup/parser/i1;->Data:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/jsoup/parser/a;->e()C

    move-result p2

    if-eqz p2, :cond_4

    const/16 p0, 0x2d

    if-eq p2, p0, :cond_3

    const/16 p0, 0x3c

    if-eq p2, p0, :cond_2

    const/16 p0, 0x3e

    if-eq p2, p0, :cond_1

    invoke-virtual {p1, p2}, Lorg/jsoup/parser/S;->f(C)V

    sget-object p0, Lorg/jsoup/parser/i1;->ScriptDataEscaped:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/S;->f(C)V

    sget-object p0, Lorg/jsoup/parser/i1;->ScriptData:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_2
    sget-object p0, Lorg/jsoup/parser/i1;->ScriptDataEscapedLessthanSign:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2}, Lorg/jsoup/parser/S;->f(C)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->n(Lorg/jsoup/parser/i1;)V

    const p0, 0xfffd

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->f(C)V

    sget-object p0, Lorg/jsoup/parser/i1;->ScriptDataEscaped:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    :goto_0
    return-void
.end method
