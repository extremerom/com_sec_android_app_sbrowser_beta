.class public abstract Lorg/jsoup/parser/N;
.super LF3/f;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public final e:Ljava/lang/StringBuilder;

.field public f:Ljava/lang/String;

.field public g:Z

.field public final h:Ljava/lang/StringBuilder;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:LQd/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, LF3/f;-><init>(IZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/N;->e:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/N;->g:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lorg/jsoup/parser/N;->h:Ljava/lang/StringBuilder;

    iput-boolean v0, p0, Lorg/jsoup/parser/N;->j:Z

    iput-boolean v0, p0, Lorg/jsoup/parser/N;->k:Z

    iput-boolean v0, p0, Lorg/jsoup/parser/N;->l:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic P0()V
    .locals 0

    invoke-virtual {p0}, Lorg/jsoup/parser/N;->a1()Lorg/jsoup/parser/N;

    return-void
.end method

.method public final S0(C)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/N;->j:Z

    iget-object v0, p0, Lorg/jsoup/parser/N;->i:Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/N;->h:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/N;->i:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final T0(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/N;->j:Z

    iget-object v0, p0, Lorg/jsoup/parser/N;->i:Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/N;->h:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/N;->i:Ljava/lang/String;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lorg/jsoup/parser/N;->i:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method public final U0([I)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/N;->j:Z

    iget-object v0, p0, Lorg/jsoup/parser/N;->i:Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/N;->h:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/N;->i:Ljava/lang/String;

    :cond_0
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final V0(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0xfffd

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/jsoup/parser/N;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/jsoup/parser/N;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LG5/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    return-void
.end method

.method public final W0()Z
    .locals 0

    iget-object p0, p0, Lorg/jsoup/parser/N;->m:LQd/c;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final X0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jsoup/parser/N;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/jsoup/parser/N;->c:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, LOd/c;

    const-string v0, "Must be false"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final Y0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/jsoup/parser/N;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LG5/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    return-void
.end method

.method public final Z0()V
    .locals 6

    iget-object v0, p0, Lorg/jsoup/parser/N;->m:LQd/c;

    if-nez v0, :cond_0

    new-instance v0, LQd/c;

    invoke-direct {v0}, LQd/c;-><init>()V

    iput-object v0, p0, Lorg/jsoup/parser/N;->m:LQd/c;

    :cond_0
    iget-boolean v0, p0, Lorg/jsoup/parser/N;->g:Z

    iget-object v1, p0, Lorg/jsoup/parser/N;->h:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/jsoup/parser/N;->e:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/jsoup/parser/N;->m:LQd/c;

    iget v0, v0, LQd/c;->a:I

    const/16 v4, 0x200

    if-ge v0, v4, :cond_5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/jsoup/parser/N;->f:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    iget-boolean v4, p0, Lorg/jsoup/parser/N;->j:Z

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lorg/jsoup/parser/N;->i:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-boolean v4, p0, Lorg/jsoup/parser/N;->k:Z

    if-eqz v4, :cond_4

    const-string v4, ""

    goto :goto_1

    :cond_4
    move-object v4, v3

    :goto_1
    iget-object v5, p0, Lorg/jsoup/parser/N;->m:LQd/c;

    invoke-virtual {v5, v0, v4}, LQd/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-static {v2}, LF3/f;->Q0(Ljava/lang/StringBuilder;)V

    iput-object v3, p0, Lorg/jsoup/parser/N;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/N;->g:Z

    invoke-static {v1}, LF3/f;->Q0(Ljava/lang/StringBuilder;)V

    iput-object v3, p0, Lorg/jsoup/parser/N;->i:Ljava/lang/String;

    iput-boolean v0, p0, Lorg/jsoup/parser/N;->j:Z

    iput-boolean v0, p0, Lorg/jsoup/parser/N;->k:Z

    return-void
.end method

.method public a1()Lorg/jsoup/parser/N;
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jsoup/parser/N;->c:Ljava/lang/String;

    iput-object v0, p0, Lorg/jsoup/parser/N;->d:Ljava/lang/String;

    iget-object v1, p0, Lorg/jsoup/parser/N;->e:Ljava/lang/StringBuilder;

    invoke-static {v1}, LF3/f;->Q0(Ljava/lang/StringBuilder;)V

    iput-object v0, p0, Lorg/jsoup/parser/N;->f:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jsoup/parser/N;->g:Z

    iget-object v2, p0, Lorg/jsoup/parser/N;->h:Ljava/lang/StringBuilder;

    invoke-static {v2}, LF3/f;->Q0(Ljava/lang/StringBuilder;)V

    iput-object v0, p0, Lorg/jsoup/parser/N;->i:Ljava/lang/String;

    iput-boolean v1, p0, Lorg/jsoup/parser/N;->k:Z

    iput-boolean v1, p0, Lorg/jsoup/parser/N;->j:Z

    iput-boolean v1, p0, Lorg/jsoup/parser/N;->l:Z

    iput-object v0, p0, Lorg/jsoup/parser/N;->m:LQd/c;

    return-object p0
.end method
