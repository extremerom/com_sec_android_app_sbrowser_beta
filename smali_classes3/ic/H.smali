.class public final Lic/H;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lic/v;


# instance fields
.field public final a:Lic/u;


# direct methods
.method public constructor <init>(Lic/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lic/H;->a:Lic/u;

    return-void
.end method


# virtual methods
.method public final J(I)Lic/e;
    .locals 0

    iget-object p0, p0, Lic/H;->a:Lic/u;

    invoke-virtual {p0, p1}, Lic/u;->J(I)Lic/e;

    move-result-object p0

    return-object p0
.end method

.method public final T(Lic/w;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final b()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lic/H;->a:Lic/u;

    iget-object p0, p0, Lic/u;->a:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c()Lic/H;
    .locals 0

    return-object p0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lic/H;->a:Lic/u;

    invoke-virtual {p0, p1}, Lic/u;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/clearcut/e0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/clearcut/e0;-><init>(I)V

    iget-object p0, p0, Lic/H;->a:Lic/u;

    invoke-virtual {p0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/clearcut/e0;->b:Ljava/util/Iterator;

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/clearcut/d0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/clearcut/d0;-><init>(I)V

    iget-object p0, p0, Lic/H;->a:Lic/u;

    invoke-virtual {p0, p1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p0

    iput-object p0, v0, Lcom/google/android/gms/internal/clearcut/d0;->b:Ljava/util/ListIterator;

    return-object v0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lic/H;->a:Lic/u;

    invoke-virtual {p0}, Lic/u;->size()I

    move-result p0

    return p0
.end method
