.class public final Lcom/google/android/gms/internal/vision/z0;
.super Lcom/google/android/gms/internal/vision/x0;
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

    sput-object v0, Lcom/google/android/gms/internal/vision/z0;->c:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/vision/j0;Lcom/google/android/gms/internal/vision/j0;J)V
    .locals 3

    invoke-static {p3, p4, p2}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p3, p4, p1}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Lcom/google/android/gms/internal/vision/y0;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/vision/w0;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/vision/w0;-><init>(I)V

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/internal/vision/M0;

    if-eqz v1, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/vision/t0;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/internal/vision/t0;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/vision/t0;->k(I)Lcom/google/android/gms/internal/vision/t0;

    move-result-object p2

    move-object v0, p2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    invoke-static {p3, p4, p1, v0}, Lcom/google/android/gms/internal/vision/a1;->g(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/vision/z0;->c:Ljava/lang/Class;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p3, p4, p1, v1}, Lcom/google/android/gms/internal/vision/a1;->g(JLjava/lang/Object;Ljava/lang/Object;)V

    :goto_1
    move-object v0, v1

    goto :goto_2

    :cond_3
    instance-of v1, v0, Lcom/google/android/gms/internal/vision/W0;

    if-eqz v1, :cond_4

    new-instance v1, Lcom/google/android/gms/internal/vision/w0;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/vision/w0;-><init>(I)V

    check-cast v0, Lcom/google/android/gms/internal/vision/W0;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/vision/w0;->addAll(Ljava/util/Collection;)Z

    invoke-static {p3, p4, p1, v1}, Lcom/google/android/gms/internal/vision/a1;->g(JLjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    instance-of v1, v0, Lcom/google/android/gms/internal/vision/M0;

    if-eqz v1, :cond_5

    instance-of v1, v0, Lcom/google/android/gms/internal/vision/t0;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/vision/t0;

    invoke-interface {v1}, Lcom/google/android/gms/internal/vision/t0;->d()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/vision/t0;->k(I)Lcom/google/android/gms/internal/vision/t0;

    move-result-object v0

    invoke-static {p3, p4, p1, v0}, Lcom/google/android/gms/internal/vision/a1;->g(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez p2, :cond_6

    if-lez v1, :cond_6

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_6
    if-lez p2, :cond_7

    move-object p0, v0

    :cond_7
    invoke-static {p3, p4, p1, p0}, Lcom/google/android/gms/internal/vision/a1;->g(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(JLjava/lang/Object;)V
    .locals 2

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/vision/a1;->t(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    instance-of v0, p0, Lcom/google/android/gms/internal/vision/y0;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/vision/y0;

    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/y0;->f()Lcom/google/android/gms/internal/vision/y0;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/vision/z0;->c:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    instance-of v0, p0, Lcom/google/android/gms/internal/vision/M0;

    if-eqz v0, :cond_3

    instance-of v0, p0, Lcom/google/android/gms/internal/vision/t0;

    if-eqz v0, :cond_3

    check-cast p0, Lcom/google/android/gms/internal/vision/t0;

    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/t0;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Lcom/google/android/gms/internal/vision/t0;->s0()V

    :cond_2
    return-void

    :cond_3
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_0
    invoke-static {p1, p2, p3, p0}, Lcom/google/android/gms/internal/vision/a1;->g(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
