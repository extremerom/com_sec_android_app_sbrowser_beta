.class public final LK1/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:F

.field public final b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LK1/q;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, LK1/q;-><init>(FLjava/util/List;I)V

    return-void
.end method

.method public constructor <init>(FLjava/util/List;I)V
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    int-to-float p1, p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Lfb/v;->a:Lfb/v;

    :cond_1
    invoke-direct {p0, p2, p1}, LK1/q;-><init>(Ljava/util/List;F)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;F)V
    .locals 1

    const-string v0, "resourceIds"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LK1/q;->a:F

    iput-object p1, p0, LK1/q;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(LK1/q;)LK1/q;
    .locals 3

    const-string v0, "other"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LK1/q;

    iget v1, p0, LK1/q;->a:F

    iget v2, p1, LK1/q;->a:F

    add-float/2addr v1, v2

    iget-object p0, p0, LK1/q;->b:Ljava/util/List;

    check-cast p0, Ljava/util/Collection;

    iget-object p1, p1, LK1/q;->b:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, p0}, Lfb/n;->R(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v0, p0, v1}, LK1/q;-><init>(Ljava/util/List;F)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LK1/q;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LK1/q;

    iget v1, p1, LK1/q;->a:F

    iget v3, p0, LK1/q;->a:F

    invoke-static {v3, v1}, LH0/e;->a(FF)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, LK1/q;->b:Ljava/util/List;

    iget-object p1, p1, LK1/q;->b:Ljava/util/List;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, LK1/q;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, LK1/q;->b:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, LK1/q;->a:F

    invoke-static {v0}, LH0/e;->c(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaddingDimension(dp="

    const-string v2, ", resourceIds="

    invoke-static {v1, v0, v2}, LV0/c;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, LK1/q;->b:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
