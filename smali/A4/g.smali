.class public abstract LA4/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/appsearch/GenericDocument;)Lv/u;
    .locals 10

    new-instance v0, Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getSchemaType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getScore()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->v(I)Lcom/samsung/android/motionphoto/utils/ex/e;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getTtlMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->w(J)Lcom/samsung/android/motionphoto/utils/ex/e;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getCreationTimestampMillis()J

    move-result-wide v2

    iget-object v1, v1, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast v1, LB/a;

    iput-wide v2, v1, LB/a;->d:J

    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/app/appsearch/GenericDocument;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "$$__AppSearch__parentTypes"

    invoke-static {v2, v4}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v2, v3, [Ljava/lang/Object;

    if-eqz v2, :cond_1

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    instance-of v2, v2, [Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<kotlin.String?>"

    invoke-static {v3, v2}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, [Ljava/lang/String;

    array-length v2, v3

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast v3, LB/a;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, v3, LB/a;->h:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v3, LB/a;->h:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Parents list must be of String[] type, but got %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v4, v3, [Ljava/lang/Object;

    if-eqz v4, :cond_3

    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    instance-of v5, v5, [Ljava/lang/String;

    if-eqz v5, :cond_3

    check-cast v3, [Ljava/lang/String;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    move-result-object v2

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    instance-of v5, v3, [J

    if-eqz v5, :cond_4

    check-cast v3, [J

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    move-result-object v2

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    instance-of v5, v3, [D

    if-eqz v5, :cond_5

    check-cast v3, [D

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->s(Ljava/lang/String;[D)Lcom/samsung/android/motionphoto/utils/ex/e;

    move-result-object v2

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    instance-of v5, v3, [Z

    if-eqz v5, :cond_6

    check-cast v3, [Z

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->p(Ljava/lang/String;[Z)Lcom/samsung/android/motionphoto/utils/ex/e;

    move-result-object v2

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    if-eqz v4, :cond_7

    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    instance-of v5, v5, [[B

    if-eqz v5, :cond_7

    check-cast v3, [[B

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->q(Ljava/lang/String;[[B)Lcom/samsung/android/motionphoto/utils/ex/e;

    move-result-object v2

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    if-eqz v4, :cond_9

    move-object v4, v3

    check-cast v4, [Ljava/lang/Object;

    instance-of v5, v4, [Landroid/app/appsearch/GenericDocument;

    if-eqz v5, :cond_9

    array-length v3, v4

    new-array v5, v3, [Lv/u;

    array-length v6, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_8

    aget-object v8, v4, v7

    const-string v9, "null cannot be cast to non-null type android.app.appsearch.GenericDocument"

    invoke-static {v8, v9}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/app/appsearch/GenericDocument;

    invoke-static {v8}, LA4/g;->a(Landroid/app/appsearch/GenericDocument;)Lv/u;

    move-result-object v8

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_8
    invoke-static {v5, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lv/u;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    move-result-object v2

    invoke-static {v2}, Ltb/k;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Property \"%s\" has unsupported value type %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/app/appsearch/GenericDocument;)Lv/u;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/samsung/android/motionphoto/utils/ex/e;

    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getSchemaType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getScore()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/motionphoto/utils/ex/e;->v(I)Lcom/samsung/android/motionphoto/utils/ex/e;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getTtlMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->w(J)Lcom/samsung/android/motionphoto/utils/ex/e;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getCreationTimestampMillis()J

    move-result-wide v2

    iget-object v1, v1, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast v1, LB/a;

    iput-wide v2, v1, LB/a;->d:J

    invoke-virtual {p0}, Landroid/app/appsearch/GenericDocument;->getPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/app/appsearch/GenericDocument;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "$$__AppSearch__parentTypes"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v2, v3, [Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, v0, Lcom/samsung/android/motionphoto/utils/ex/e;->b:Ljava/lang/Object;

    check-cast v3, LB/a;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, v3, LB/a;->h:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, v3, LB/a;->h:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Parents list must be of String[] type, but got "

    invoke-static {v1, v0}, Lt/b;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    instance-of v4, v3, [Ljava/lang/String;

    if-eqz v4, :cond_3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->u(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/ex/e;

    goto :goto_0

    :cond_3
    instance-of v4, v3, [J

    if-eqz v4, :cond_4

    check-cast v3, [J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->t(Ljava/lang/String;[J)Lcom/samsung/android/motionphoto/utils/ex/e;

    goto :goto_0

    :cond_4
    instance-of v4, v3, [D

    if-eqz v4, :cond_5

    check-cast v3, [D

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->s(Ljava/lang/String;[D)Lcom/samsung/android/motionphoto/utils/ex/e;

    goto :goto_0

    :cond_5
    instance-of v4, v3, [Z

    if-eqz v4, :cond_6

    check-cast v3, [Z

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->p(Ljava/lang/String;[Z)Lcom/samsung/android/motionphoto/utils/ex/e;

    goto :goto_0

    :cond_6
    instance-of v4, v3, [[B

    if-eqz v4, :cond_7

    check-cast v3, [[B

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/motionphoto/utils/ex/e;->q(Ljava/lang/String;[[B)Lcom/samsung/android/motionphoto/utils/ex/e;

    goto :goto_0

    :cond_7
    instance-of v4, v3, [Landroid/app/appsearch/GenericDocument;

    if-eqz v4, :cond_9

    check-cast v3, [Landroid/app/appsearch/GenericDocument;

    array-length v4, v3

    new-array v4, v4, [Lv/u;

    const/4 v5, 0x0

    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_8

    aget-object v6, v3, v5

    invoke-static {v6}, LA4/g;->b(Landroid/app/appsearch/GenericDocument;)Lv/u;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/motionphoto/utils/ex/e;->r(Ljava/lang/String;[Lv/u;)Lcom/samsung/android/motionphoto/utils/ex/e;

    goto/16 :goto_0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Property \""

    const-string v3, "\" has unsupported value type "

    invoke-static {v1, v2, v3, v0}, Lw2/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {v0}, Lcom/samsung/android/motionphoto/utils/ex/e;->c()Lv/u;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lv/u;)Landroid/app/appsearch/GenericDocument;
    .locals 10

    const-string v0, "jetpackDocument"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/app/appsearch/GenericDocument$Builder;

    iget-object v0, p0, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v1, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    new-instance v2, Landroid/app/appsearch/GenericDocument$Builder;

    iget-object v3, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    iget-object v4, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->c:Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Landroid/app/appsearch/GenericDocument$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->f:I

    invoke-virtual {v2, v1}, Landroid/app/appsearch/GenericDocument$Builder;->setScore(I)Landroid/app/appsearch/GenericDocument$Builder;

    move-result-object v1

    iget-wide v3, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->e:J

    invoke-virtual {v1, v3, v4}, Landroid/app/appsearch/GenericDocument$Builder;->setTtlMillis(J)Landroid/app/appsearch/GenericDocument$Builder;

    move-result-object v1

    iget-wide v3, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->d:J

    invoke-virtual {v1, v3, v4}, Landroid/app/appsearch/GenericDocument$Builder;->setCreationTimestampMillis(J)Landroid/app/appsearch/GenericDocument$Builder;

    iget-object v0, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->i:LN/f;

    invoke-virtual {v0}, LN/f;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lv/u;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, [Ljava/lang/Object;

    if-eqz v4, :cond_0

    move-object v5, v3

    check-cast v5, [Ljava/lang/Object;

    instance-of v5, v5, [Ljava/lang/String;

    if-eqz v5, :cond_0

    check-cast v3, [Ljava/lang/String;

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyString(Ljava/lang/String;[Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    instance-of v5, v3, [J

    if-eqz v5, :cond_1

    check-cast v3, [J

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyLong(Ljava/lang/String;[J)Landroid/app/appsearch/GenericDocument$Builder;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    instance-of v5, v3, [D

    if-eqz v5, :cond_2

    check-cast v3, [D

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyDouble(Ljava/lang/String;[D)Landroid/app/appsearch/GenericDocument$Builder;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    instance-of v5, v3, [Z

    if-eqz v5, :cond_3

    check-cast v3, [Z

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyBoolean(Ljava/lang/String;[Z)Landroid/app/appsearch/GenericDocument$Builder;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/16 v5, 0x20

    const/16 v6, 0x1f

    if-eqz v4, :cond_6

    move-object v7, v3

    check-cast v7, [Ljava/lang/Object;

    instance-of v8, v7, [[B

    if-eqz v8, :cond_6

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v4, v6, :cond_4

    if-ne v4, v5, :cond_5

    :cond_4
    array-length v4, v7

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    check-cast v3, [[B

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    invoke-virtual {v2, v1, v3}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyBytes(Ljava/lang/String;[[B)Landroid/app/appsearch/GenericDocument$Builder;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    if-eqz v4, :cond_a

    move-object v7, v3

    check-cast v7, [Ljava/lang/Object;

    instance-of v8, v7, [Lv/u;

    if-eqz v8, :cond_a

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v3, v6, :cond_7

    if-ne v3, v5, :cond_8

    :cond_7
    array-length v3, v7

    if-nez v3, :cond_8

    goto/16 :goto_0

    :cond_8
    array-length v3, v7

    new-array v4, v3, [Landroid/app/appsearch/GenericDocument;

    array-length v5, v7

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_9

    aget-object v8, v7, v6

    const-string v9, "null cannot be cast to non-null type androidx.appsearch.app.GenericDocument"

    invoke-static {v8, v9}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Lv/u;

    invoke-static {v8}, LA4/g;->c(Lv/u;)Landroid/app/appsearch/GenericDocument;

    move-result-object v8

    aput-object v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_9
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/app/appsearch/GenericDocument;

    invoke-virtual {v2, v1, v3}, Landroid/app/appsearch/GenericDocument$Builder;->setPropertyDocument(Ljava/lang/String;[Landroid/app/appsearch/GenericDocument;)Landroid/app/appsearch/GenericDocument$Builder;

    move-result-object v1

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    if-eqz v4, :cond_b

    move-object p0, v3

    check-cast p0, [Ljava/lang/Object;

    instance-of p0, p0, [Lv/t;

    if-eqz p0, :cond_b

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "SCHEMA_EMBEDDING_PROPERTY_CONFIG is not available on this AppSearch implementation."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Ltb/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Property \"%s\" has unsupported value type %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    invoke-virtual {v2}, Landroid/app/appsearch/GenericDocument$Builder;->build()Landroid/app/appsearch/GenericDocument;

    move-result-object p0

    const-string v0, "build(...)"

    invoke-static {p0, v0}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static d(Lv/u;)Landroid/app/appsearch/GenericDocument;
    .locals 7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lorg/chromium/ui/base/b;->r()V

    iget-object v0, p0, Lv/u;->a:Landroidx/appsearch/safeparcel/GenericDocumentParcel;

    iget-object v1, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->a:Ljava/lang/String;

    iget-object v2, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->b:Ljava/lang/String;

    iget-object v3, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->c:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lorg/chromium/ui/base/b;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/appsearch/GenericDocument$Builder;

    move-result-object v1

    iget v2, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->f:I

    invoke-static {v1, v2}, Lorg/chromium/ui/base/b;->g(Landroid/app/appsearch/GenericDocument$Builder;I)Landroid/app/appsearch/GenericDocument$Builder;

    move-result-object v2

    iget-wide v3, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->e:J

    invoke-static {v2, v3, v4}, Lorg/chromium/ui/base/b;->h(Landroid/app/appsearch/GenericDocument$Builder;J)Landroid/app/appsearch/GenericDocument$Builder;

    move-result-object v2

    iget-wide v3, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->d:J

    invoke-static {v2, v3, v4}, Lorg/chromium/ui/base/b;->z(Landroid/app/appsearch/GenericDocument$Builder;J)V

    iget-object v0, v0, Landroidx/appsearch/safeparcel/GenericDocumentParcel;->i:LN/f;

    invoke-virtual {v0}, LN/f;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lv/u;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, [Ljava/lang/String;

    if-eqz v4, :cond_0

    check-cast v3, [Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lz/a;->u(Landroid/app/appsearch/GenericDocument$Builder;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v4, v3, [J

    if-eqz v4, :cond_1

    check-cast v3, [J

    invoke-static {v1, v2, v3}, Lz/a;->t(Landroid/app/appsearch/GenericDocument$Builder;Ljava/lang/String;[J)V

    goto :goto_0

    :cond_1
    instance-of v4, v3, [D

    if-eqz v4, :cond_2

    check-cast v3, [D

    invoke-static {v1, v2, v3}, Lz/a;->s(Landroid/app/appsearch/GenericDocument$Builder;Ljava/lang/String;[D)V

    goto :goto_0

    :cond_2
    instance-of v4, v3, [Z

    if-eqz v4, :cond_3

    check-cast v3, [Z

    invoke-static {v1, v2, v3}, Lz/a;->v(Landroid/app/appsearch/GenericDocument$Builder;Ljava/lang/String;[Z)V

    goto :goto_0

    :cond_3
    instance-of v4, v3, [[B

    const/16 v5, 0x20

    const/16 v6, 0x1f

    if-eqz v4, :cond_6

    check-cast v3, [[B

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v4, v6, :cond_4

    if-ne v4, v5, :cond_5

    :cond_4
    array-length v4, v3

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v1, v2, v3}, Lz/a;->w(Landroid/app/appsearch/GenericDocument$Builder;Ljava/lang/String;[[B)V

    goto :goto_0

    :cond_6
    instance-of v4, v3, [Lv/u;

    if-eqz v4, :cond_a

    check-cast v3, [Lv/u;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eq v4, v6, :cond_7

    if-ne v4, v5, :cond_8

    :cond_7
    array-length v4, v3

    if-nez v4, :cond_8

    goto :goto_0

    :cond_8
    array-length v4, v3

    new-array v4, v4, [Landroid/app/appsearch/GenericDocument;

    const/4 v5, 0x0

    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_9

    aget-object v6, v3, v5

    invoke-static {v6}, LA4/g;->d(Lv/u;)Landroid/app/appsearch/GenericDocument;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_9
    invoke-static {v1, v2, v4}, Lorg/chromium/ui/base/b;->A(Landroid/app/appsearch/GenericDocument$Builder;Ljava/lang/String;[Landroid/app/appsearch/GenericDocument;)V

    goto :goto_0

    :cond_a
    instance-of p0, v3, [Lv/t;

    if-nez p0, :cond_c

    instance-of p0, v3, [Lv/b;

    if-eqz p0, :cond_b

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "BLOB_STORAGE is not available on this AppSearch implementation."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Property \""

    const-string v3, "\" has unsupported value type "

    invoke-static {v1, v2, v3, v0}, Lw2/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "SCHEMA_EMBEDDING_PROPERTY_CONFIG is not available on this AppSearch implementation."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-static {v1}, Lorg/chromium/ui/base/b;->j(Landroid/app/appsearch/GenericDocument$Builder;)Landroid/app/appsearch/GenericDocument;

    move-result-object p0

    return-object p0
.end method
