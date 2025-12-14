.class public final enum Lorg/jsoup/parser/V;
.super Lorg/jsoup/parser/i1;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "RCDATAEndTagOpen"

    const/16 v1, 0xb

    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final f(Lorg/jsoup/parser/S;Lorg/jsoup/parser/a;)V
    .locals 1

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->t()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->d(Z)Lorg/jsoup/parser/N;

    iget-object p0, p1, Lorg/jsoup/parser/S;->k:Lorg/jsoup/parser/N;

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->l()C

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/parser/N;->V0(Ljava/lang/String;)V

    iget-object p0, p1, Lorg/jsoup/parser/S;->h:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/jsoup/parser/a;->l()C

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p0, Lorg/jsoup/parser/i1;->RCDATAEndTagName:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->a(Lorg/jsoup/parser/i1;)V

    goto :goto_0

    :cond_0
    const-string p0, "</"

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->h(Ljava/lang/String;)V

    sget-object p0, Lorg/jsoup/parser/i1;->Rcdata:Lorg/jsoup/parser/i1;

    invoke-virtual {p1, p0}, Lorg/jsoup/parser/S;->p(Lorg/jsoup/parser/i1;)V

    :goto_0
    return-void
.end method
