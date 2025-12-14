.class public final enum Lorg/jsoup/parser/X;
.super Lorg/jsoup/parser/i1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "RawtextLessthanSign"

    const/16 v1, 0xd

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V
    .locals 0

    const/16 p0, 0x2f

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->r(C)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lorg/jsoup/parser/S;->e()V

    sget-object p0, Lorg/jsoup/parser/i1;->RawtextEndTagOpen:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->a(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x3c

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->f(C)V

    sget-object p0, Lorg/jsoup/parser/i1;->Rawtext:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    :goto_0
    return-void
.end method
