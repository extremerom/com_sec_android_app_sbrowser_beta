.class public final Ld4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ3/o;


# instance fields
.field public final b:LQ3/o;


# direct methods
.method public constructor <init>(LQ3/o;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    invoke-static {p1, v0}, Ll4/f;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ld4/c;->b:LQ3/o;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ld4/c;

    if-eqz v0, :cond_0

    check-cast p1, Ld4/c;

    iget-object p0, p0, Ld4/c;->b:LQ3/o;

    iget-object p1, p1, Ld4/c;->b:LQ3/o;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Ld4/c;->b:LQ3/o;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final transform(Landroid/content/Context;LS3/C;II)LS3/C;
    .locals 4

    invoke-interface {p2}, LS3/C;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld4/b;

    invoke-static {p1}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v1

    iget-object v1, v1, Lcom/bumptech/glide/b;->b:LT3/a;

    iget-object v2, v0, Ld4/b;->a:LZ2/f;

    iget-object v2, v2, LZ2/f;->b:Ljava/lang/Object;

    check-cast v2, Ld4/f;

    iget-object v2, v2, Ld4/f;->l:Landroid/graphics/Bitmap;

    new-instance v3, LZ3/d;

    invoke-direct {v3, v1, v2}, LZ3/d;-><init>(LT3/a;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Ld4/c;->b:LQ3/o;

    invoke-interface {p0, p1, v3, p3, p4}, LQ3/o;->transform(Landroid/content/Context;LS3/C;II)LS3/C;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {v3}, LZ3/d;->c()V

    :cond_0
    invoke-interface {p1}, LS3/C;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iget-object p3, v0, Ld4/b;->a:LZ2/f;

    iget-object p3, p3, LZ2/f;->b:Ljava/lang/Object;

    check-cast p3, Ld4/f;

    invoke-virtual {p3, p0, p1}, Ld4/f;->c(LQ3/o;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public final updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0

    iget-object p0, p0, Ld4/c;->b:LQ3/o;

    invoke-interface {p0, p1}, LQ3/g;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    return-void
.end method
