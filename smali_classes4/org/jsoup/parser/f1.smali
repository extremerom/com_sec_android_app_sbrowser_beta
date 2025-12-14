.class public final enum Lorg/jsoup/parser/f1;
.super Lorg/jsoup/parser/i1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "PLAINTEXT"

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V
    .locals 1

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->l()C

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0xffff

    if-eq v0, p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->i(C)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/jsoup/parser/K;

    invoke-direct {p0}, Lorg/jsoup/parser/K;-><init>()V

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->g(LF3/f;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->n(Lorg/jsoup/parser/i1;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->a()V

    const p0, 0xfffd

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->f(C)V

    :goto_0
    return-void
.end method
