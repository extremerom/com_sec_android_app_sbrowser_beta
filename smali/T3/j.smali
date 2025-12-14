.class public final LT3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LT3/h;


# instance fields
.field public final a:LT3/e;

.field public b:I

.field public c:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(LT3/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT3/j;->a:LT3/e;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, LT3/j;->a:LT3/e;

    invoke-virtual {v0, p0}, LF3/f;->N0(LT3/h;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LT3/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, LT3/j;

    iget v0, p0, LT3/j;->b:I

    iget v2, p1, LT3/j;->b:I

    if-ne v0, v2, :cond_0

    iget-object p0, p0, LT3/j;->c:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, LT3/j;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1}, Ll4/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, LT3/j;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, LT3/j;->c:Landroid/graphics/Bitmap$Config;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, LT3/j;->b:I

    iget-object p0, p0, LT3/j;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0}, LT3/k;->c(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
