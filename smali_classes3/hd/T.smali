.class public final Lhd/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Lhd/M;

.field public final b:Lhd/K;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Lhd/w;

.field public final f:Lhd/y;

.field public final g:Lhd/X;

.field public final h:Lhd/T;

.field public final i:Lhd/T;

.field public final j:Lhd/T;

.field public final k:J

.field public final l:J

.field public final m:LU0/h;

.field public n:Lhd/h;


# direct methods
.method public constructor <init>(Lhd/M;Lhd/K;Ljava/lang/String;ILhd/w;Lhd/y;Lhd/X;Lhd/T;Lhd/T;Lhd/T;JJLU0/h;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const-string v4, "request"

    invoke-static {p1, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "protocol"

    invoke-static {p2, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "message"

    invoke-static {p3, v4}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lhd/T;->a:Lhd/M;

    iput-object v2, v0, Lhd/T;->b:Lhd/K;

    iput-object v3, v0, Lhd/T;->c:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Lhd/T;->d:I

    move-object v1, p5

    iput-object v1, v0, Lhd/T;->e:Lhd/w;

    move-object v1, p6

    iput-object v1, v0, Lhd/T;->f:Lhd/y;

    move-object v1, p7

    iput-object v1, v0, Lhd/T;->g:Lhd/X;

    move-object v1, p8

    iput-object v1, v0, Lhd/T;->h:Lhd/T;

    move-object v1, p9

    iput-object v1, v0, Lhd/T;->i:Lhd/T;

    move-object v1, p10

    iput-object v1, v0, Lhd/T;->j:Lhd/T;

    move-wide/from16 v1, p11

    iput-wide v1, v0, Lhd/T;->k:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lhd/T;->l:J

    move-object/from16 v1, p15

    iput-object v1, v0, Lhd/T;->m:LU0/h;

    return-void
.end method

.method public static b(Lhd/T;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lhd/T;->f:Lhd/y;

    invoke-virtual {p0, p1}, Lhd/y;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a()Lhd/h;
    .locals 1

    iget-object v0, p0, Lhd/T;->n:Lhd/h;

    if-nez v0, :cond_0

    sget v0, Lhd/h;->n:I

    iget-object v0, p0, Lhd/T;->f:Lhd/y;

    invoke-static {v0}, LG5/G3;->c(Lhd/y;)Lhd/h;

    move-result-object v0

    iput-object v0, p0, Lhd/T;->n:Lhd/h;

    :cond_0
    return-object v0
.end method

.method public final c()Lhd/S;
    .locals 3

    new-instance v0, Lhd/S;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p0, Lhd/T;->a:Lhd/M;

    iput-object v1, v0, Lhd/S;->a:Lhd/M;

    iget-object v1, p0, Lhd/T;->b:Lhd/K;

    iput-object v1, v0, Lhd/S;->b:Lhd/K;

    iget v1, p0, Lhd/T;->d:I

    iput v1, v0, Lhd/S;->c:I

    iget-object v1, p0, Lhd/T;->c:Ljava/lang/String;

    iput-object v1, v0, Lhd/S;->d:Ljava/lang/String;

    iget-object v1, p0, Lhd/T;->e:Lhd/w;

    iput-object v1, v0, Lhd/S;->e:Lhd/w;

    iget-object v1, p0, Lhd/T;->f:Lhd/y;

    invoke-virtual {v1}, Lhd/y;->m()Lhd/x;

    move-result-object v1

    iput-object v1, v0, Lhd/S;->f:Lhd/x;

    iget-object v1, p0, Lhd/T;->g:Lhd/X;

    iput-object v1, v0, Lhd/S;->g:Lhd/X;

    iget-object v1, p0, Lhd/T;->h:Lhd/T;

    iput-object v1, v0, Lhd/S;->h:Lhd/T;

    iget-object v1, p0, Lhd/T;->i:Lhd/T;

    iput-object v1, v0, Lhd/S;->i:Lhd/T;

    iget-object v1, p0, Lhd/T;->j:Lhd/T;

    iput-object v1, v0, Lhd/S;->j:Lhd/T;

    iget-wide v1, p0, Lhd/T;->k:J

    iput-wide v1, v0, Lhd/S;->k:J

    iget-wide v1, p0, Lhd/T;->l:J

    iput-wide v1, v0, Lhd/S;->l:J

    iget-object p0, p0, Lhd/T;->m:LU0/h;

    iput-object p0, v0, Lhd/S;->m:LU0/h;

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-object p0, p0, Lhd/T;->g:Lhd/X;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lhd/X;->close()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "response is not eligible for a body and must not be closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response{protocol="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lhd/T;->b:Lhd/K;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lhd/T;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lhd/T;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lhd/T;->a:Lhd/M;

    iget-object p0, p0, Lhd/M;->a:Lhd/A;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
