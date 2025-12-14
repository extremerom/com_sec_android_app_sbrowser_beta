.class public final Lcom/google/android/gms/internal/clearcut/F;
.super Lcom/google/android/gms/internal/clearcut/E;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/clearcut/F;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/Object;)V
    .locals 2

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    instance-of v0, p0, Lcom/google/android/gms/internal/clearcut/D;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/D;

    invoke-interface {p0}, Lcom/google/android/gms/internal/clearcut/D;->r0()Lcom/google/android/gms/internal/clearcut/D;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/clearcut/F;->c:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-static {p1, p2, p3, p0}, Lcom/google/android/gms/internal/clearcut/i0;->e(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/clearcut/w;Lcom/google/android/gms/internal/clearcut/w;J)V
    .locals 3

    invoke-static {p3, p4, p2}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p3, p4, p1}, Lcom/google/android/gms/internal/clearcut/i0;->n(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v0, v0, Lcom/google/android/gms/internal/clearcut/D;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/clearcut/C;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/clearcut/C;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-static {p3, p4, p1, v0}, Lcom/google/android/gms/internal/clearcut/i0;->e(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/clearcut/F;->c:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    invoke-static {p3, p4, p1, v1}, Lcom/google/android/gms/internal/clearcut/i0;->e(JLjava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_2

    :cond_2
    instance-of v1, v0, Lcom/google/android/gms/internal/clearcut/c0;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/google/android/gms/internal/clearcut/C;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/clearcut/C;-><init>(I)V

    check-cast v0, Lcom/google/android/gms/internal/clearcut/c0;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/clearcut/C;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez p2, :cond_4

    if-lez v1, :cond_4

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    if-lez p2, :cond_5

    move-object p0, v0

    :cond_5
    invoke-static {p3, p4, p1, p0}, Lcom/google/android/gms/internal/clearcut/i0;->e(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
