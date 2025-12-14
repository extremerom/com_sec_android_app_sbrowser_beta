.class public final LA2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/time/Instant;

.field public final d:Ljava/time/Instant;

.field public final e:Ljava/util/ArrayList;

.field public final f:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(IILjava/time/Instant;Ljava/time/Instant;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "start"

    invoke-static {p3, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "end"

    invoke-static {p4, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LA2/b;->a:I

    iput p2, p0, LA2/b;->b:I

    iput-object p3, p0, LA2/b;->c:Ljava/time/Instant;

    iput-object p4, p0, LA2/b;->d:Ljava/time/Instant;

    iput-object p5, p0, LA2/b;->e:Ljava/util/ArrayList;

    iput-object p6, p0, LA2/b;->f:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()Landroid/adservices/measurement/DeletionRequest;
    .locals 2

    invoke-static {}, LA2/a;->a()Landroid/adservices/measurement/DeletionRequest$Builder;

    move-result-object v0

    iget v1, p0, LA2/b;->a:I

    invoke-static {v0, v1}, LA2/a;->b(Landroid/adservices/measurement/DeletionRequest$Builder;I)Landroid/adservices/measurement/DeletionRequest$Builder;

    move-result-object v0

    iget v1, p0, LA2/b;->b:I

    invoke-static {v0, v1}, LA2/a;->y(Landroid/adservices/measurement/DeletionRequest$Builder;I)Landroid/adservices/measurement/DeletionRequest$Builder;

    move-result-object v0

    iget-object v1, p0, LA2/b;->c:Ljava/time/Instant;

    invoke-static {v0, v1}, LA2/a;->c(Landroid/adservices/measurement/DeletionRequest$Builder;Ljava/time/Instant;)Landroid/adservices/measurement/DeletionRequest$Builder;

    move-result-object v0

    iget-object v1, p0, LA2/b;->d:Ljava/time/Instant;

    invoke-static {v0, v1}, LA2/a;->z(Landroid/adservices/measurement/DeletionRequest$Builder;Ljava/time/Instant;)Landroid/adservices/measurement/DeletionRequest$Builder;

    move-result-object v0

    iget-object v1, p0, LA2/b;->e:Ljava/util/ArrayList;

    invoke-static {v0, v1}, LA2/a;->d(Landroid/adservices/measurement/DeletionRequest$Builder;Ljava/util/ArrayList;)Landroid/adservices/measurement/DeletionRequest$Builder;

    move-result-object v0

    iget-object p0, p0, LA2/b;->f:Ljava/util/ArrayList;

    invoke-static {v0, p0}, LA2/a;->A(Landroid/adservices/measurement/DeletionRequest$Builder;Ljava/util/ArrayList;)Landroid/adservices/measurement/DeletionRequest$Builder;

    move-result-object p0

    invoke-static {p0}, LA2/a;->e(Landroid/adservices/measurement/DeletionRequest$Builder;)Landroid/adservices/measurement/DeletionRequest;

    move-result-object p0

    const-string v0, "Builder()\n            .s\u2026ris)\n            .build()"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LA2/b;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LA2/b;

    iget v1, p1, LA2/b;->a:I

    iget v3, p0, LA2/b;->a:I

    if-ne v3, v1, :cond_2

    new-instance v1, Ljava/util/HashSet;

    iget-object v3, p0, LA2/b;->e:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p1, LA2/b;->e:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/HashSet;

    iget-object v3, p0, LA2/b;->f:Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/HashSet;

    iget-object v4, p1, LA2/b;->f:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LA2/b;->c:Ljava/time/Instant;

    iget-object v3, p1, LA2/b;->c:Ljava/time/Instant;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, LA2/b;->d:Ljava/time/Instant;

    iget-object v3, p1, LA2/b;->d:Ljava/time/Instant;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, LA2/b;->b:I

    iget p1, p1, LA2/b;->b:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, LA2/b;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LA2/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, LA2/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LA2/b;->c:Ljava/time/Instant;

    invoke-virtual {v1}, Ljava/time/Instant;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, LA2/b;->d:Ljava/time/Instant;

    invoke-virtual {v0}, Ljava/time/Instant;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, LA2/b;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget v0, p0, LA2/b;->a:I

    if-nez v0, :cond_0

    const-string v0, "DELETION_MODE_ALL"

    goto :goto_0

    :cond_0
    const-string v0, "DELETION_MODE_EXCLUDE_INTERNAL_DATA"

    :goto_0
    iget v1, p0, LA2/b;->b:I

    if-nez v1, :cond_1

    const-string v1, "MATCH_BEHAVIOR_DELETE"

    goto :goto_1

    :cond_1
    const-string v1, "MATCH_BEHAVIOR_PRESERVE"

    :goto_1
    const-string v2, "DeletionRequest { DeletionMode="

    const-string v3, ", MatchBehavior="

    const-string v4, ", Start="

    invoke-static {v2, v0, v3, v1, v4}, Lcom/sec/android/app/sbrowser/autofill/password/k;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LA2/b;->c:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", End="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LA2/b;->d:Ljava/time/Instant;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", DomainUris="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LA2/b;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", OriginUris="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LA2/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
