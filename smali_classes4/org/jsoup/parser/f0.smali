.class public final enum Lorg/jsoup/parser/f0;
.super Lorg/jsoup/parser/i1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "ScriptDataEscapeStartDash"

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V
    .locals 0

    const/16 p0, 0x2d

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/a;->r(C)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->f(C)V

    sget-object p0, Lorg/jsoup/parser/i1;->ScriptDataEscapedDashDash:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->a(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lorg/jsoup/parser/i1;->ScriptData:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    :goto_0
    return-void
.end method
