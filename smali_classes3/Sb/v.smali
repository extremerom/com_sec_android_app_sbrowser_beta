.class public final LSb/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LSb/C;

.field public final b:LSb/C;

.field public final c:Ljava/util/Map;

.field public final d:Z


# direct methods
.method public constructor <init>(LSb/C;LSb/C;)V
    .locals 2

    sget-object v0, Lfb/w;->a:Lfb/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSb/v;->a:LSb/C;

    iput-object p2, p0, LSb/v;->b:LSb/C;

    iput-object v0, p0, LSb/v;->c:Ljava/util/Map;

    new-instance v0, LDb/E;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, LDb/E;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, LG5/z2;->e(Lsb/a;)Ldb/o;

    sget-object v0, LSb/C;->IGNORE:LSb/C;

    if-ne p1, v0, :cond_0

    if-ne p2, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, LSb/v;->d:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LSb/v;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LSb/v;

    iget-object v1, p1, LSb/v;->a:LSb/C;

    iget-object v3, p0, LSb/v;->a:LSb/C;

    if-eq v3, v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, LSb/v;->b:LSb/C;

    iget-object v3, p1, LSb/v;->b:LSb/C;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, LSb/v;->c:Ljava/util/Map;

    iget-object p1, p1, LSb/v;->c:Ljava/util/Map;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, LSb/v;->a:LSb/C;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LSb/v;->b:LSb/C;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, LSb/v;->c:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Jsr305Settings(globalLevel="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LSb/v;->a:LSb/C;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", migrationLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LSb/v;->b:LSb/C;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userDefinedLevelForSpecificAnnotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LSb/v;->c:Ljava/util/Map;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
