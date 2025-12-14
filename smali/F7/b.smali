.class public final LF7/b;
.super LF7/g;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/Long;

.field public c:LF7/h;


# virtual methods
.method public final a()LF7/c;
    .locals 4

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, LF7/c;

    iget-object v1, p0, LF7/b;->a:Ljava/lang/String;

    iget-object v2, p0, LF7/b;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p0, p0, LF7/b;->c:LF7/h;

    invoke-direct {v0, v1, v2, v3, p0}, LF7/c;-><init>(Ljava/lang/String;JLF7/h;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
