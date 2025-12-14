.class public final LZ1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LZ1/a;->a:I

    iput p2, p0, LZ1/a;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LZ1/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LZ1/a;

    iget v1, p1, LZ1/a;->a:I

    iget v3, p0, LZ1/a;->a:I

    invoke-static {v3, v1}, LM1/b;->b(II)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget p0, p0, LZ1/a;->b:I

    iget p1, p1, LZ1/a;->b:I

    invoke-static {p0, p1}, LM1/c;->a(II)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    sget v0, LM1/b;->b:I

    iget v0, p0, LZ1/a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, LZ1/a;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, LZ1/a;->a:I

    invoke-static {v0}, LM1/b;->d(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    iget p0, p0, LZ1/a;->b:I

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const-string p0, "colorful"

    goto :goto_0

    :cond_0
    const-string p0, "colorful|monotone"

    goto :goto_0

    :cond_1
    const-string p0, "monotone"

    :goto_0
    const-string v1, "CachedPreviewAttributes(widgetSize="

    const-string v2, ", widgetStyle="

    const-string v3, ")"

    invoke-static {v1, v0, v2, p0, v3}, Lw2/j;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
