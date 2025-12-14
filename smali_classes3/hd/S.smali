.class public final Lhd/S;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lhd/M;

.field public b:Lhd/K;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lhd/w;

.field public f:Lhd/x;

.field public g:Lhd/X;

.field public h:Lhd/T;

.field public i:Lhd/T;

.field public j:Lhd/T;

.field public k:J

.field public l:J

.field public m:LU0/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lhd/S;->c:I

    new-instance v0, Lhd/x;

    invoke-direct {v0}, Lhd/x;-><init>()V

    iput-object v0, p0, Lhd/S;->f:Lhd/x;

    return-void
.end method

.method public static b(Lhd/T;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_4

    iget-object v0, p0, Lhd/T;->g:Lhd/X;

    if-nez v0, :cond_3

    iget-object v0, p0, Lhd/T;->h:Lhd/T;

    if-nez v0, :cond_2

    iget-object v0, p0, Lhd/T;->i:Lhd/T;

    if-nez v0, :cond_1

    iget-object p0, p0, Lhd/T;->j:Lhd/T;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ".priorResponse != null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p0, ".cacheResponse != null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p0, ".networkResponse != null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string p0, ".body != null"

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()Lhd/T;
    .locals 17

    move-object/from16 v0, p0

    iget v4, v0, Lhd/S;->c:I

    if-ltz v4, :cond_3

    iget-object v1, v0, Lhd/S;->a:Lhd/M;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lhd/S;->b:Lhd/K;

    if-eqz v2, :cond_1

    iget-object v3, v0, Lhd/S;->d:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v5, v0, Lhd/S;->e:Lhd/w;

    iget-object v6, v0, Lhd/S;->f:Lhd/x;

    invoke-virtual {v6}, Lhd/x;->d()Lhd/y;

    move-result-object v6

    iget-object v7, v0, Lhd/S;->g:Lhd/X;

    iget-object v8, v0, Lhd/S;->h:Lhd/T;

    iget-object v9, v0, Lhd/S;->i:Lhd/T;

    iget-object v10, v0, Lhd/S;->j:Lhd/T;

    iget-wide v11, v0, Lhd/S;->k:J

    iget-wide v13, v0, Lhd/S;->l:J

    iget-object v15, v0, Lhd/S;->m:LU0/h;

    new-instance v16, Lhd/T;

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v15}, Lhd/T;-><init>(Lhd/M;Lhd/K;Ljava/lang/String;ILhd/w;Lhd/y;Lhd/X;Lhd/T;Lhd/T;Lhd/T;JJLU0/h;)V

    return-object v16

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "message == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "protocol == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "code < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lhd/S;->c:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final c(Lhd/y;)V
    .locals 1

    const-string v0, "headers"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lhd/y;->m()Lhd/x;

    move-result-object p1

    iput-object p1, p0, Lhd/S;->f:Lhd/x;

    return-void
.end method
