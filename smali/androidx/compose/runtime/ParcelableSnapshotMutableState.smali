.class public final Landroidx/compose/runtime/ParcelableSnapshotMutableState;
.super Lk0/s;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements La0/a0;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "BanParcelableUsage"
    }
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lk0/s;",
        "Landroid/os/Parcelable;",
        "La0/a0;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0001\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Landroidx/compose/runtime/ParcelableSnapshotMutableState;",
        "T",
        "Landroid/os/Parcelable;",
        "runtime_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/compose/runtime/ParcelableSnapshotMutableState<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:La0/A0;

.field public c:La0/z0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La0/c0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;La0/A0;)V
    .locals 2

    invoke-direct {p0}, Lk0/s;-><init>()V

    iput-object p2, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->b:La0/A0;

    new-instance p2, La0/z0;

    invoke-direct {p2, p1}, La0/z0;-><init>(Ljava/lang/Object;)V

    sget-object v0, Lk0/n;->a:LZ3/x;

    invoke-virtual {v0}, LZ3/x;->u()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    new-instance v0, La0/z0;

    invoke-direct {v0, p1}, La0/z0;-><init>(Ljava/lang/Object;)V

    iput v1, v0, Lk0/t;->a:I

    iput-object v0, p2, Lk0/t;->b:Lk0/t;

    :cond_1
    iput-object p2, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->c:La0/z0;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g(Lk0/t;Lk0/t;Lk0/t;)Lk0/t;
    .locals 0

    check-cast p1, La0/z0;

    move-object p1, p2

    check-cast p1, La0/z0;

    check-cast p3, La0/z0;

    iget-object p1, p1, La0/z0;->c:Ljava/lang/Object;

    iget-object p3, p3, La0/z0;->c:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->b:La0/A0;

    invoke-interface {p0, p1, p3}, La0/A0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->c:La0/z0;

    invoke-static {v0, p0}, Lk0/n;->s(Lk0/t;Lk0/r;)Lk0/t;

    move-result-object p0

    check-cast p0, La0/z0;

    iget-object p0, p0, La0/z0;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public final i()Lk0/t;
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->c:La0/z0;

    return-object p0
.end method

.method public final m(Lk0/t;)V
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.SnapshotMutableStateImpl.StateStateRecord<T of androidx.compose.runtime.SnapshotMutableStateImpl>"

    invoke-static {p1, v0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, La0/z0;

    iput-object p1, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->c:La0/z0;

    return-void
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->c:La0/z0;

    invoke-static {v0}, Lk0/n;->i(Lk0/t;)Lk0/t;

    move-result-object v0

    check-cast v0, La0/z0;

    iget-object v1, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->b:La0/A0;

    iget-object v2, v0, La0/z0;->c:Ljava/lang/Object;

    invoke-interface {v1, v2, p1}, La0/A0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->c:La0/z0;

    sget-object v2, Lk0/n;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lk0/n;->k()Lk0/h;

    move-result-object v3

    invoke-virtual {v3}, Lk0/h;->g()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p0}, Lk0/h;->n(Lk0/r;)V

    :cond_0
    invoke-virtual {v3}, Lk0/h;->d()I

    move-result v4

    iget v5, v0, Lk0/t;->a:I

    if-ne v5, v4, :cond_1

    goto :goto_0

    :cond_1
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1, p0}, Lk0/n;->m(Lk0/t;Lk0/r;)Lk0/t;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2

    iput v4, v1, Lk0/t;->a:I

    iget v0, v0, Lk0/t;->a:I

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    invoke-virtual {v3, p0}, Lk0/h;->n(Lk0/r;)V

    :cond_2
    move-object v0, v1

    :goto_0
    check-cast v0, La0/z0;

    iput-object p1, v0, La0/z0;->c:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    invoke-static {v3, p0}, Lk0/n;->n(Lk0/h;Lk0/r;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v2

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit v2

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->c:La0/z0;

    invoke-static {v0}, Lk0/n;->i(Lk0/t;)Lk0/t;

    move-result-object v0

    check-cast v0, La0/z0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MutableState(value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, La0/z0;->c:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    sget-object p2, La0/V;->c:La0/V;

    iget-object p0, p0, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->b:La0/A0;

    invoke-static {p0, p2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    sget-object p2, La0/V;->f:La0/V;

    invoke-static {p0, p2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    sget-object p2, La0/V;->d:La0/V;

    invoke-static {p0, p2}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    :goto_0
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only known types of MutableState\'s SnapshotMutationPolicy are supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
