.class public final LSb/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LSb/r;


# instance fields
.field public final a:LSb/C;

.field public final b:Ldb/e;

.field public final c:LSb/C;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LSb/r;

    sget-object v1, LSb/C;->STRICT:LSb/C;

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LSb/r;-><init>(LSb/C;I)V

    sput-object v0, LSb/r;->d:LSb/r;

    return-void
.end method

.method public constructor <init>(LSb/C;I)V
    .locals 2

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    new-instance p2, Ldb/e;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v1}, Ldb/e;-><init>(III)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p1}, LSb/r;-><init>(LSb/C;Ldb/e;LSb/C;)V

    return-void
.end method

.method public constructor <init>(LSb/C;Ldb/e;LSb/C;)V
    .locals 1

    const-string v0, "reportLevelBefore"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportLevelAfter"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSb/r;->a:LSb/C;

    iput-object p2, p0, LSb/r;->b:Ldb/e;

    iput-object p3, p0, LSb/r;->c:LSb/C;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LSb/r;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LSb/r;

    iget-object v1, p1, LSb/r;->a:LSb/C;

    iget-object v3, p0, LSb/r;->a:LSb/C;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, LSb/r;->b:Ldb/e;

    iget-object v3, p1, LSb/r;->b:Ldb/e;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, LSb/r;->c:LSb/C;

    iget-object p1, p1, LSb/r;->c:LSb/C;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, LSb/r;->a:LSb/C;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LSb/r;->b:Ldb/e;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, v1, Ldb/e;->d:I

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, LSb/r;->c:LSb/C;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JavaNullabilityAnnotationsStatus(reportLevelBefore="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LSb/r;->a:LSb/C;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sinceVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LSb/r;->b:Ldb/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reportLevelAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LSb/r;->c:LSb/C;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
