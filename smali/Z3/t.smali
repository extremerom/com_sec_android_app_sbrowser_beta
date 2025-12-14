.class public final LZ3/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ3/o;


# instance fields
.field public final b:LQ3/o;

.field public final c:Z


# direct methods
.method public constructor <init>(LQ3/o;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ3/t;->b:LQ3/o;

    iput-boolean p2, p0, LZ3/t;->c:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, LZ3/t;

    if-eqz v0, :cond_0

    check-cast p1, LZ3/t;

    iget-object p0, p0, LZ3/t;->b:LQ3/o;

    iget-object p1, p1, LZ3/t;->b:LQ3/o;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, LZ3/t;->b:LQ3/o;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final transform(Landroid/content/Context;LS3/C;II)LS3/C;
    .locals 2

    invoke-static {p1}, Lcom/bumptech/glide/b;->b(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object v0

    iget-object v0, v0, Lcom/bumptech/glide/b;->b:LT3/a;

    invoke-interface {p2}, LS3/C;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, p3, p4}, LZ3/s;->a(LT3/a;Landroid/graphics/drawable/Drawable;II)LZ3/d;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, LZ3/t;->c:Z

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Unable to convert "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " to a Bitmap"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, LZ3/t;->b:LQ3/o;

    invoke-interface {p0, p1, v0, p3, p4}, LQ3/o;->transform(Landroid/content/Context;LS3/C;II)LS3/C;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p0}, LS3/C;->c()V

    return-object p2

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    new-instance p2, LZ3/d;

    invoke-direct {p2, p1, p0}, LZ3/d;-><init>(Landroid/content/res/Resources;LS3/C;)V

    return-object p2
.end method

.method public final updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0

    iget-object p0, p0, LZ3/t;->b:LQ3/o;

    invoke-interface {p0, p1}, LQ3/g;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    return-void
.end method
