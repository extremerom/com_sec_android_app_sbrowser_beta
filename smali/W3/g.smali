.class public final LW3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/e;


# instance fields
.field public final a:Landroid/content/res/Resources$Theme;

.field public final b:Landroid/content/res/Resources;

.field public final c:Ljava/lang/Object;

.field public final d:I

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources$Theme;Landroid/content/res/Resources;LW3/h;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW3/g;->a:Landroid/content/res/Resources$Theme;

    iput-object p2, p0, LW3/g;->b:Landroid/content/res/Resources;

    iput-object p3, p0, LW3/g;->c:Ljava/lang/Object;

    iput p4, p0, LW3/g;->d:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, LW3/g;->c:Ljava/lang/Object;

    invoke-interface {p0}, LW3/h;->a()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, LW3/g;->e:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, LW3/g;->c:Ljava/lang/Object;

    invoke-interface {p0, v0}, LW3/h;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final c()LQ3/a;
    .locals 0

    sget-object p0, LQ3/a;->LOCAL:LQ3/a;

    return-object p0
.end method

.method public final cancel()V
    .locals 0

    return-void
.end method

.method public final d(Lcom/bumptech/glide/f;Lcom/bumptech/glide/load/data/d;)V
    .locals 3

    :try_start_0
    iget-object p1, p0, LW3/g;->c:Ljava/lang/Object;

    iget-object v0, p0, LW3/g;->a:Landroid/content/res/Resources$Theme;

    iget-object v1, p0, LW3/g;->b:Landroid/content/res/Resources;

    iget v2, p0, LW3/g;->d:I

    invoke-interface {p1, v2, v0, v1}, LW3/h;->b(ILandroid/content/res/Resources$Theme;Landroid/content/res/Resources;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, LW3/g;->e:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/data/d;->p0(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-interface {p2, p0}, Lcom/bumptech/glide/load/data/d;->g(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
