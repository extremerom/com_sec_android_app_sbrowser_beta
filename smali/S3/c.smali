.class public final LS3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LS3/f;
.implements Lcom/bumptech/glide/load/data/d;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:LS3/g;

.field public final c:LS3/e;

.field public d:I

.field public e:LQ3/g;

.field public f:Ljava/util/List;

.field public g:I

.field public volatile h:LW3/s;

.field public i:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/util/List;LS3/g;LS3/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LS3/c;->d:I

    iput-object p1, p0, LS3/c;->a:Ljava/util/List;

    iput-object p2, p0, LS3/c;->b:LS3/g;

    iput-object p3, p0, LS3/c;->c:LS3/e;

    return-void
.end method


# virtual methods
.method public final b()Z
    .locals 7

    :cond_0
    :goto_0
    iget-object v0, p0, LS3/c;->f:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget v3, p0, LS3/c;->g:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, LS3/c;->h:LW3/s;

    :cond_1
    :goto_1
    if-nez v2, :cond_2

    iget v0, p0, LS3/c;->g:I

    iget-object v3, p0, LS3/c;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v0, p0, LS3/c;->f:Ljava/util/List;

    iget v3, p0, LS3/c;->g:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, LS3/c;->g:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW3/t;

    iget-object v3, p0, LS3/c;->i:Ljava/io/File;

    iget-object v4, p0, LS3/c;->b:LS3/g;

    iget v5, v4, LS3/g;->e:I

    iget v6, v4, LS3/g;->f:I

    iget-object v4, v4, LS3/g;->i:LQ3/k;

    invoke-interface {v0, v3, v5, v6, v4}, LW3/t;->a(Ljava/lang/Object;IILQ3/k;)LW3/s;

    move-result-object v0

    iput-object v0, p0, LS3/c;->h:LW3/s;

    iget-object v0, p0, LS3/c;->h:LW3/s;

    if-eqz v0, :cond_1

    iget-object v0, p0, LS3/c;->b:LS3/g;

    iget-object v3, p0, LS3/c;->h:LW3/s;

    iget-object v3, v3, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {v3}, Lcom/bumptech/glide/load/data/e;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, LS3/g;->c(Ljava/lang/Class;)LS3/A;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LS3/c;->h:LW3/s;

    iget-object v0, v0, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    iget-object v2, p0, LS3/c;->b:LS3/g;

    iget-object v2, v2, LS3/g;->o:Lcom/bumptech/glide/f;

    invoke-interface {v0, v2, p0}, Lcom/bumptech/glide/load/data/e;->d(Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/data/d;)V

    move v2, v1

    goto :goto_1

    :cond_2
    return v2

    :cond_3
    iget v0, p0, LS3/c;->d:I

    add-int/2addr v0, v1

    iput v0, p0, LS3/c;->d:I

    iget-object v1, p0, LS3/c;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, LS3/c;->a:Ljava/util/List;

    iget v1, p0, LS3/c;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQ3/g;

    new-instance v1, LS3/d;

    iget-object v3, p0, LS3/c;->b:LS3/g;

    iget-object v4, v3, LS3/g;->n:LQ3/g;

    invoke-direct {v1, v0, v4}, LS3/d;-><init>(LQ3/g;LQ3/g;)V

    iget-object v3, v3, LS3/g;->h:LS3/o;

    invoke-virtual {v3}, LS3/o;->a()LU3/a;

    move-result-object v3

    invoke-interface {v3, v1}, LU3/a;->d(LQ3/g;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, LS3/c;->i:Ljava/io/File;

    if-eqz v1, :cond_0

    iput-object v0, p0, LS3/c;->e:LQ3/g;

    iget-object v0, p0, LS3/c;->b:LS3/g;

    iget-object v0, v0, LS3/g;->c:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->a()Lcom/bumptech/glide/h;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/h;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, LS3/c;->f:Ljava/util/List;

    iput v2, p0, LS3/c;->g:I

    goto/16 :goto_0
.end method

.method public final cancel()V
    .locals 0

    iget-object p0, p0, LS3/c;->h:LW3/s;

    if-eqz p0, :cond_0

    iget-object p0, p0, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    invoke-interface {p0}, Lcom/bumptech/glide/load/data/e;->cancel()V

    :cond_0
    return-void
.end method

.method public final g(Ljava/lang/Exception;)V
    .locals 3

    iget-object v0, p0, LS3/c;->c:LS3/e;

    iget-object v1, p0, LS3/c;->e:LQ3/g;

    iget-object p0, p0, LS3/c;->h:LW3/s;

    iget-object p0, p0, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    sget-object v2, LQ3/a;->DATA_DISK_CACHE:LQ3/a;

    invoke-interface {v0, v1, p1, p0, v2}, LS3/e;->c(LQ3/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/e;LQ3/a;)V

    return-void
.end method

.method public final p0(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, LS3/c;->c:LS3/e;

    iget-object v1, p0, LS3/c;->e:LQ3/g;

    iget-object v2, p0, LS3/c;->h:LW3/s;

    iget-object v3, v2, LW3/s;->c:Lcom/bumptech/glide/load/data/e;

    sget-object v4, LQ3/a;->DATA_DISK_CACHE:LQ3/a;

    iget-object v5, p0, LS3/c;->e:LQ3/g;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, LS3/e;->a(LQ3/g;Ljava/lang/Object;Lcom/bumptech/glide/load/data/e;LQ3/a;LQ3/g;)V

    return-void
.end method
