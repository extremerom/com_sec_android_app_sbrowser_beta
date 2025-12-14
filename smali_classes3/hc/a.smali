.class public final Lhc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lhc/c;

.field public final b:Lhc/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lhc/h;->f:Lhc/f;

    sget-object v1, Lhc/c;->c:Lhc/c;

    invoke-static {v0}, LG5/C3;->c(Lhc/f;)Lhc/c;

    return-void
.end method

.method public constructor <init>(Lhc/c;Lhc/f;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhc/a;->a:Lhc/c;

    iput-object p2, p0, Lhc/a;->b:Lhc/f;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, p1, Lhc/a;

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, Lhc/a;

    iget-object v1, p1, Lhc/a;->a:Lhc/c;

    iget-object v3, p0, Lhc/a;->a:Lhc/c;

    invoke-static {v3, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1, v1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lhc/a;->b:Lhc/f;

    iget-object p1, p1, Lhc/a;->b:Lhc/f;

    invoke-virtual {p0, p1}, Lhc/f;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lhc/a;->a:Lhc/c;

    invoke-virtual {v0}, Lhc/c;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit16 v0, v0, 0x3c1

    iget-object p0, p0, Lhc/a;->b:Lhc/f;

    invoke-virtual {p0}, Lhc/f;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lhc/a;->a:Lhc/c;

    iget-object v1, v1, Lhc/c;->a:Lhc/d;

    iget-object v1, v1, Lhc/d;->a:Ljava/lang/String;

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-static {v1, v2, v3}, LKc/r;->k(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lhc/a;->b:Lhc/f;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
