.class public final LY5/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/q;
.implements Ljava/lang/Iterable;
.implements Lb5/o;
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Lcom/google/android/gms/common/data/DataHolder;

.field public b:Z

.field public c:Ljava/util/ArrayList;

.field public final d:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LY5/c;->a:Lcom/google/android/gms/common/data/DataHolder;

    const/4 v0, 0x0

    iput-boolean v0, p0, LY5/c;->b:Z

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget p1, p1, Lcom/google/android/gms/common/data/DataHolder;->e:I

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, LY5/c;->d:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LY5/c;->b:Z

    if-nez v0, :cond_3

    iget-object v0, p0, LY5/c;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;)V

    iget v0, v0, Lcom/google/android/gms/common/data/DataHolder;->h:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LY5/c;->c:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-lez v0, :cond_2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "path"

    iget-object v4, p0, LY5/c;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v4, v3}, Lcom/google/android/gms/common/data/DataHolder;->b(I)I

    move-result v4

    iget-object v5, p0, LY5/c;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v5, v3, v1}, Lcom/google/android/gms/common/data/DataHolder;->c(ILjava/lang/String;)V

    iget-object v6, v5, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    aget-object v4, v6, v4

    iget-object v5, v5, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    invoke-virtual {v5, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v3

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_2

    iget-object v5, p0, LY5/c;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/common/data/DataHolder;->b(I)I

    move-result v5

    iget-object v6, p0, LY5/c;->a:Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {v6, v4, v1}, Lcom/google/android/gms/common/data/DataHolder;->c(ILjava/lang/String;)V

    iget-object v7, v6, Lcom/google/android/gms/common/data/DataHolder;->d:[Landroid/database/CursorWindow;

    aget-object v7, v7, v5

    iget-object v6, v6, Lcom/google/android/gms/common/data/DataHolder;->c:Landroid/os/Bundle;

    invoke-virtual {v6, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v4, v6}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v3, p0, LY5/c;->c:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing value for markerColumn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", at row: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", for window: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-boolean v2, p0, LY5/c;->b:Z

    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final K()Lcom/google/android/gms/common/api/Status;
    .locals 0

    iget-object p0, p0, LY5/c;->d:Lcom/google/android/gms/common/api/Status;

    return-object p0
.end method

.method public final close()V
    .locals 0

    invoke-virtual {p0}, LY5/c;->release()V

    return-void
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, LQd/b;

    invoke-direct {v0, p0}, LQd/b;-><init>(LY5/c;)V

    return-object v0
.end method

.method public final release()V
    .locals 0

    iget-object p0, p0, LY5/c;->a:Lcom/google/android/gms/common/data/DataHolder;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    :cond_0
    return-void
.end method

.method public final z0(I)I
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, LY5/c;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, LY5/c;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Position "

    const-string v1, " is out of bounds for this buffer"

    invoke-static {p1, v0, v1}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
