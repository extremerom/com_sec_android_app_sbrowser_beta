.class public final Lcom/google/android/gms/internal/auth/o0;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lcom/google/android/gms/internal/auth/O;


# instance fields
.field public final a:Lcom/google/android/gms/internal/auth/M;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/M;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/o0;->a:Lcom/google/android/gms/internal/auth/M;

    return-void
.end method


# virtual methods
.method public final E()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/o0;->a:Lcom/google/android/gms/internal/auth/M;

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/M;->b:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final f()Lcom/google/android/gms/internal/auth/O;
    .locals 0

    return-object p0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/o0;->a:Lcom/google/android/gms/internal/auth/M;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/M;->l(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/auth/n0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/auth/n0;-><init>(Lcom/google/android/gms/internal/auth/o0;)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/auth/m0;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/auth/m0;-><init>(Lcom/google/android/gms/internal/auth/o0;I)V

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/o0;->a:Lcom/google/android/gms/internal/auth/M;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/auth/M;->size()I

    move-result p0

    return p0
.end method
