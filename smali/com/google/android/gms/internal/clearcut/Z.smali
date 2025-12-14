.class public abstract Lcom/google/android/gms/internal/clearcut/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Class;

.field public static final b:Lcom/google/android/gms/internal/clearcut/b0;

.field public static final c:Lcom/google/android/gms/internal/clearcut/b0;

.field public static final d:Lcom/google/android/gms/internal/clearcut/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "com.google.protobuf.GeneratedMessage"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/clearcut/Z;->a:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/Z;->c(Z)Lcom/google/android/gms/internal/clearcut/b0;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/clearcut/Z;->b:Lcom/google/android/gms/internal/clearcut/b0;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/clearcut/Z;->c(Z)Lcom/google/android/gms/internal/clearcut/b0;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/clearcut/Z;->c:Lcom/google/android/gms/internal/clearcut/b0;

    new-instance v0, Lcom/google/android/gms/internal/clearcut/b0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/Z;->d:Lcom/google/android/gms/internal/clearcut/b0;

    return-void
.end method

.method public static a(ILcom/google/android/gms/internal/clearcut/z;Lcom/google/android/gms/internal/clearcut/y;Lcom/google/android/gms/internal/clearcut/a0;Lcom/google/android/gms/internal/clearcut/b0;)Ljava/lang/Object;
    .locals 6

    if-nez p2, :cond_0

    return-object p3

    :cond_0
    if-eqz p1, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p2, v4}, Lcom/google/android/gms/internal/clearcut/y;->h(I)Lcom/google/android/gms/internal/clearcut/o0;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eq v1, v2, :cond_1

    invoke-interface {p1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-nez p3, :cond_3

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/a0;->b()Lcom/google/android/gms/internal/clearcut/a0;

    move-result-object p3

    :cond_3
    int-to-long v3, v4

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    shl-int/lit8 v5, p0, 0x3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v5, v3}, Lcom/google/android/gms/internal/clearcut/a0;->a(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_8

    invoke-interface {p1, v2, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    goto :goto_3

    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/clearcut/y;->h(I)Lcom/google/android/gms/internal/clearcut/o0;

    move-result-object v1

    if-nez v1, :cond_6

    if-nez p3, :cond_7

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/google/android/gms/internal/clearcut/a0;->b()Lcom/google/android/gms/internal/clearcut/a0;

    move-result-object p3

    :cond_7
    int-to-long v0, v0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    shl-int/lit8 v2, p0, 0x3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Lcom/google/android/gms/internal/clearcut/a0;->a(ILjava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_8
    :goto_3
    return-object p3
.end method

.method public static b(Lcom/google/android/gms/internal/clearcut/b0;Lcom/google/android/gms/internal/clearcut/w;Lcom/google/android/gms/internal/clearcut/w;)V
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    iget-object p2, p2, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    sget-object v0, Lcom/google/android/gms/internal/clearcut/a0;->e:Lcom/google/android/gms/internal/clearcut/a0;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/clearcut/a0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/clearcut/a0;->a:I

    iget v1, p2, Lcom/google/android/gms/internal/clearcut/a0;->a:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/clearcut/a0;->b:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iget-object v2, p2, Lcom/google/android/gms/internal/clearcut/a0;->b:[I

    iget v3, p0, Lcom/google/android/gms/internal/clearcut/a0;->a:I

    iget v4, p2, Lcom/google/android/gms/internal/clearcut/a0;->a:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/google/android/gms/internal/clearcut/a0;->c:[Ljava/lang/Object;

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p2, Lcom/google/android/gms/internal/clearcut/a0;->c:[Ljava/lang/Object;

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/a0;->a:I

    iget p2, p2, Lcom/google/android/gms/internal/clearcut/a0;->a:I

    invoke-static {v3, v5, v2, p0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p0, Lcom/google/android/gms/internal/clearcut/a0;

    const/4 p2, 0x1

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/google/android/gms/internal/clearcut/a0;-><init>(I[I[Ljava/lang/Object;Z)V

    :goto_0
    iput-object p0, p1, Lcom/google/android/gms/internal/clearcut/w;->zzjp:Lcom/google/android/gms/internal/clearcut/a0;

    return-void
.end method

.method public static c(Z)Lcom/google/android/gms/internal/clearcut/b0;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "com.google.protobuf.UnknownFieldSetSchema"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/b0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    return-object v0
.end method

.method public static d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-eq p0, p1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
