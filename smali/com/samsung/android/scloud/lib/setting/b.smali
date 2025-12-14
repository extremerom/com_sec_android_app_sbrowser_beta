.class public final Lcom/samsung/android/scloud/lib/setting/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/HashSet;

.field public b:Ljava/util/LinkedHashSet;

.field public c:Ljava/util/LinkedHashSet;

.field public d:J

.field public e:J

.field public f:Ljava/util/HashMap;

.field public g:I


# virtual methods
.method public final a(Lcom/samsung/android/scloud/lib/setting/f;)V
    .locals 5

    iget v0, p0, Lcom/samsung/android/scloud/lib/setting/b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/scloud/lib/setting/b;->g:I

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/b;->a:Ljava/util/HashSet;

    iget-object v1, p1, Lcom/samsung/android/scloud/lib/setting/f;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/samsung/android/scloud/lib/setting/f;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/scloud/lib/setting/b;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/scloud/lib/setting/b;->f:Ljava/util/HashMap;

    new-instance v3, La9/b;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, La9/b;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/scloud/lib/setting/a;

    iget v2, v1, Lcom/samsung/android/scloud/lib/setting/a;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/samsung/android/scloud/lib/setting/a;->a:I

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/scloud/lib/setting/f;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/scloud/lib/setting/b;->b:Ljava/util/LinkedHashSet;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/scloud/lib/setting/b;->f:Ljava/util/HashMap;

    new-instance v3, La9/b;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, La9/b;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/scloud/lib/setting/a;

    iget v2, v1, Lcom/samsung/android/scloud/lib/setting/a;->a:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/samsung/android/scloud/lib/setting/a;->a:I

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/scloud/lib/setting/b;->c:Ljava/util/LinkedHashSet;

    iget-object p1, p1, Lcom/samsung/android/scloud/lib/setting/f;->h:Ljava/util/ArrayList;

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final b(J)Lcom/samsung/android/scloud/lib/setting/b;
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/scloud/lib/setting/b;->a:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/setting/b;->b:Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/samsung/android/scloud/lib/setting/b;->c:Ljava/util/LinkedHashSet;

    iget-object v3, p0, Lcom/samsung/android/scloud/lib/setting/b;->f:Ljava/util/HashMap;

    iget v4, p0, Lcom/samsung/android/scloud/lib/setting/b;->g:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/scloud/lib/setting/b;->e:J

    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-lez v7, :cond_0

    goto :goto_0

    :cond_0
    move-wide p1, v5

    :goto_0
    iput-wide p1, p0, Lcom/samsung/android/scloud/lib/setting/b;->d:J

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/b;->a:Ljava/util/HashSet;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/b;->b:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/b;->c:Ljava/util/LinkedHashSet;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/scloud/lib/setting/b;->f:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/scloud/lib/setting/b;->g:I

    new-instance p1, Lcom/samsung/android/scloud/lib/setting/b;

    iget-wide v5, p0, Lcom/samsung/android/scloud/lib/setting/b;->d:J

    iget-wide v7, p0, Lcom/samsung/android/scloud/lib/setting/b;->e:J

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object v0, p1, Lcom/samsung/android/scloud/lib/setting/b;->a:Ljava/util/HashSet;

    iput-object v1, p1, Lcom/samsung/android/scloud/lib/setting/b;->b:Ljava/util/LinkedHashSet;

    iput-object v2, p1, Lcom/samsung/android/scloud/lib/setting/b;->c:Ljava/util/LinkedHashSet;

    iput-wide v5, p1, Lcom/samsung/android/scloud/lib/setting/b;->d:J

    iput-wide v7, p1, Lcom/samsung/android/scloud/lib/setting/b;->e:J

    iput-object v3, p1, Lcom/samsung/android/scloud/lib/setting/b;->f:Ljava/util/HashMap;

    iput v4, p1, Lcom/samsung/android/scloud/lib/setting/b;->g:I

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RequestPendingStatus{uriSet="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/setting/b;->a:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mainCidSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/setting/b;->b:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extraCidSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/setting/b;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", firstRequestTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/scloud/lib/setting/b;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastRequestTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/scloud/lib/setting/b;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pendingRequestCountMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/scloud/lib/setting/b;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/scloud/lib/setting/b;->g:I

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, LV0/c;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
