.class public final Lc5/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc5/b;

.field public final b:Lcom/google/android/gms/common/Feature;


# direct methods
.method public synthetic constructor <init>(Lc5/b;Lcom/google/android/gms/common/Feature;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc5/z;->a:Lc5/b;

    iput-object p2, p0, Lc5/z;->b:Lcom/google/android/gms/common/Feature;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lc5/z;

    if-eqz v1, :cond_0

    check-cast p1, Lc5/z;

    iget-object v1, p0, Lc5/z;->a:Lc5/b;

    iget-object v2, p1, Lc5/z;->a:Lc5/b;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lc5/z;->b:Lcom/google/android/gms/common/Feature;

    iget-object p1, p1, Lc5/z;->b:Lcom/google/android/gms/common/Feature;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/o;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lc5/z;->a:Lc5/b;

    iget-object p0, p0, Lc5/z;->b:Lcom/google/android/gms/common/Feature;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-direct {v0, p0}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/Object;)V

    const-string v1, "key"

    iget-object v2, p0, Lc5/z;->a:Lc5/b;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lc5/z;->b:Lcom/google/android/gms/common/Feature;

    const-string v1, "feature"

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
