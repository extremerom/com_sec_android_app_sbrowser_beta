.class public final Lorg/jsoup/parser/M;
.super Lorg/jsoup/parser/N;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/jsoup/parser/N;-><init>()V

    sget-object v0, Lorg/jsoup/parser/O;->StartTag:Lorg/jsoup/parser/O;

    iput-object v0, p0, LF3/f;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final bridge synthetic P0()V
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/parser/M;->a1()Lorg/jsoup/parser/N;

    return-void
.end method

.method public final a1()Lorg/jsoup/parser/N;
    .locals 1

    invoke-super {p0}, Lorg/jsoup/parser/N;->a1()Lorg/jsoup/parser/N;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/N;->m:LQd/c;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/jsoup/parser/N;->W0()Z

    move-result v0

    const-string v1, "[unset]"

    const-string v2, ">"

    const-string v3, "<"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jsoup/parser/N;->m:LQd/c;

    iget v0, v0, LQd/c;->a:I

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jsoup/parser/N;->c:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v1, v3

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/jsoup/parser/N;->m:LQd/c;

    invoke-virtual {p0}, LQd/c;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/jsoup/parser/N;->c:Ljava/lang/String;

    if-eqz p0, :cond_2

    move-object v1, p0

    :cond_2
    invoke-static {v0, v1, v2}, Lt/b;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
