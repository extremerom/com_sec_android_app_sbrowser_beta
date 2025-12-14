.class public final LI3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR5/c;
.implements Lc5/n;
.implements LQ/n;
.implements LW3/u;
.implements LW3/a;
.implements LZ3/l;
.implements Lg1/q;
.implements Lc5/r;
.implements Lf1/v;
.implements Lwb/b;


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, LI3/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, LI3/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LI3/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [I

    invoke-static {p1}, LQc/n0;->c(Ljava/lang/Object;)LQc/A0;

    move-result-object p1

    iput-object p1, p0, LI3/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(IB)V
    .locals 0

    iput p1, p0, LI3/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LI3/d;->a:I

    iput-object p2, p0, LI3/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LI3/c;LE5/v;)V
    .locals 0

    const/4 p2, 0x0

    iput p2, p0, LI3/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI3/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    const/4 v0, 0x5

    iput v0, p0, LI3/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LN3/f;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LN3/f;-><init>(Landroid/os/Handler;I)V

    iput-object v0, p0, LI3/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, LI3/d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LI3/d;->b:Ljava/lang/Object;

    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public A(Landroid/view/View;)Z
    .locals 2

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    iget-object p0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast p0, Lo3/n;

    iget-object p0, p0, Lo3/n;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/viewpager2/widget/ViewPager2;

    iget-boolean v1, p0, Landroidx/viewpager2/widget/ViewPager2;->r:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->d(IZ)V

    :cond_0
    return v0
.end method

.method public J(J)J
    .locals 2

    iget-object p0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    int-to-long p0, p1

    return-wide p0
.end method

.method public L()S
    .locals 2

    iget-object p0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    int-to-short p0, p0

    return p0

    :cond_0
    new-instance p0, LZ3/k;

    invoke-direct {p0}, LZ3/k;-><init>()V

    throw p0
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, [B

    sget-object v0, Landroidx/work/multiprocess/parcelable/ParcelableResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0}, LG5/k2;->m([BLandroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/work/multiprocess/parcelable/ParcelableResult;

    invoke-static {}, Lf3/u;->d()Lf3/u;

    move-result-object v0

    sget-object v1, Landroidx/work/multiprocess/RemoteListenableWorker;->h:Ljava/lang/String;

    const-string v2, "Cleaning up"

    invoke-virtual {v0, v1, v2}, Lf3/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/work/multiprocess/RemoteListenableWorker;

    iget-object p0, p0, Landroidx/work/multiprocess/RemoteListenableWorker;->f:Lt3/i;

    iget-object v0, p0, Lt3/i;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lt3/i;->d:Lt3/h;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lt3/i;->a:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lt3/i;->d:Lt3/h;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p1, Landroidx/work/multiprocess/parcelable/ParcelableResult;->a:Lf3/s;

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lg5/c;

    check-cast p2, LR5/i;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/f;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lg5/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iget-object v1, p1, LD5/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    sget v1, Lx5/a;->a:I

    const/4 v1, 0x1

    iget-object p0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/common/internal/TelemetryData;

    const/4 v2, 0x0

    if-nez p0, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p0, v0, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    :try_start_0
    iget-object p0, p1, LD5/a;->b:Landroid/os/IBinder;

    const/4 p1, 0x0

    invoke-interface {p0, v1, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p2, p1}, LR5/i;->b(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public b(LJ2/q0;Lkb/c;)Ljb/a;
    .locals 4

    instance-of v0, p2, LJ2/E;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LJ2/E;

    iget v1, v0, LJ2/E;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LJ2/E;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, LJ2/E;

    invoke-direct {v0, p0, p2}, LJ2/E;-><init>(LI3/d;Lkb/c;)V

    :goto_0
    iget-object p2, v0, LJ2/E;->a:Ljava/lang/Object;

    sget-object v1, Ljb/a;->COROUTINE_SUSPENDED:Ljb/a;

    iget v2, v0, LJ2/E;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p2}, LG5/A2;->f(Ljava/lang/Object;)V

    iput v3, v0, LJ2/E;->c:I

    iget-object p0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast p0, LQc/A0;

    invoke-virtual {p0, p1, v0}, LQc/A0;->collect(LQc/i;Lib/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    new-instance p0, LI5/b;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public c(Ljava/lang/Object;LAb/u;)V
    .locals 1

    const-string v0, "property"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Long;

    iput-object p1, p0, LI3/d;->b:Ljava/lang/Object;

    return-void
.end method

.method public d(Ljava/lang/Object;LAb/u;)Ljava/lang/Object;
    .locals 1

    const-string p1, "property"

    invoke-static {p2, p1}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Property "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, LAb/b;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " should be initialized before get."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public e(Landroid/content/res/AssetManager;Ljava/lang/String;)Lcom/bumptech/glide/load/data/e;
    .locals 1

    new-instance p0, Lcom/bumptech/glide/load/data/j;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/data/j;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;I)V

    return-object p0
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lz3/x;
    .locals 2

    if-nez p4, :cond_0

    const-string p4, "application/json"

    :cond_0
    const-string v0, "application/zip"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object p0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast p0, LI3/c;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "application/x-zip"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "application/x-zip-compressed"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    const-string p4, "\\?"

    invoke-virtual {p2, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    aget-object p4, p4, v0

    const-string v0, ".lottie"

    invoke-virtual {p4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, LL3/b;->a()V

    sget-object p1, LI3/b;->JSON:LI3/b;

    if-eqz p5, :cond_2

    invoke-virtual {p0, p2, p3, p1}, LI3/c;->i(Ljava/lang/String;Ljava/io/InputStream;LI3/b;)Ljava/io/File;

    move-result-object p3

    new-instance p4, Ljava/io/FileInputStream;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, p3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {p4, p2}, Lz3/k;->c(Ljava/io/InputStream;Ljava/lang/String;)Lz3/x;

    move-result-object p3

    goto :goto_3

    :cond_2
    invoke-static {p3, v1}, Lz3/k;->c(Ljava/io/InputStream;Ljava/lang/String;)Lz3/x;

    move-result-object p3

    goto :goto_3

    :cond_3
    :goto_0
    invoke-static {}, LL3/b;->a()V

    sget-object p4, LI3/b;->ZIP:LI3/b;

    if-eqz p5, :cond_4

    invoke-virtual {p0, p2, p3, p4}, LI3/c;->i(Ljava/lang/String;Ljava/io/InputStream;LI3/b;)Ljava/io/File;

    move-result-object p3

    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1, v0, p2}, Lz3/k;->f(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lz3/x;

    move-result-object p1

    :goto_1
    move-object p3, p1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p3}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {p1, v0, v1}, Lz3/k;->f(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lz3/x;

    move-result-object p1

    goto :goto_1

    :goto_2
    move-object p1, p4

    :goto_3
    if-eqz p5, :cond_5

    iget-object p4, p3, Lz3/x;->a:Ljava/lang/Object;

    if-eqz p4, :cond_5

    const/4 p4, 0x1

    invoke-static {p2, p1, p4}, LI3/c;->f(Ljava/lang/String;LI3/b;Z)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/io/File;

    invoke-virtual {p0}, LI3/c;->h()Ljava/io/File;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string p1, ".temp"

    const-string p4, ""

    invoke-virtual {p0, p1, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-static {}, LL3/b;->a()V

    if-nez p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p4, "Unable to rename cache file "

    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LL3/b;->b(Ljava/lang/String;)V

    :cond_5
    return-object p3
.end method

.method public g(Ljava/util/Set;)V
    .locals 7

    const-string v0, "tableIds"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast v0, LQc/A0;

    invoke-virtual {v0}, LQc/A0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [I

    array-length v3, v2

    new-array v4, v3, [I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    aget v6, v2, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    aget v6, v2, v5

    :goto_1
    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1, v4}, LQc/A0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public get(I)LQ/r;
    .locals 0

    iget-object p0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast p0, LQ/r;

    return-object p0
.end method

.method public h(FFF)V
    .locals 2

    iget-object p0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast p0, Ln4/n;

    invoke-virtual {p0}, Ln4/n;->d()F

    move-result v0

    iget v1, p0, Ln4/n;->e:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ln4/n;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    invoke-virtual {p0}, Ln4/n;->a()V

    :cond_1
    return-void
.end method

.method public i(LN3/p;LN3/t;Lcom/google/common/util/concurrent/v;)V
    .locals 2

    invoke-virtual {p1}, LN3/p;->markDelivered()V

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, LN3/p;->addMarker(Ljava/lang/String;)V

    iget-object p0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast p0, LN3/f;

    new-instance v0, LN3/g;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, LN3/g;-><init>(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, LN3/f;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public j()I
    .locals 1

    invoke-virtual {p0}, LI3/d;->L()S

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, LI3/d;->L()S

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public synthetic k(LL5/b;)V
    .locals 0

    iget-object p0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/location/LocationResult;

    invoke-virtual {p1, p0}, LL5/b;->onLocationResult(Lcom/google/android/gms/location/LocationResult;)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Lf1/w0;)Lf1/w0;
    .locals 17

    move-object/from16 v0, p2

    invoke-virtual/range {p2 .. p2}, Lf1/w0;->d()I

    move-result v1

    move-object/from16 v2, p0

    iget-object v2, v2, LI3/d;->b:Ljava/lang/Object;

    check-cast v2, Lm/w;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Lf1/w0;->d()I

    move-result v3

    iget-object v4, v2, Lm/w;->v:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-eqz v4, :cond_11

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_11

    iget-object v4, v2, Lm/w;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v7, v2, Lm/w;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v7}, Landroid/view/View;->isShown()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_f

    iget-object v7, v2, Lm/w;->r0:Landroid/graphics/Rect;

    if-nez v7, :cond_0

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v2, Lm/w;->r0:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v2, Lm/w;->s0:Landroid/graphics/Rect;

    :cond_0
    iget-object v7, v2, Lm/w;->r0:Landroid/graphics/Rect;

    iget-object v9, v2, Lm/w;->s0:Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Lf1/w0;->b()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lf1/w0;->d()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Lf1/w0;->c()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Lf1/w0;->a()I

    move-result v13

    invoke-virtual {v7, v10, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v10, v2, Lm/w;->A:Landroid/view/ViewGroup;

    new-instance v11, Landroid/view/WindowInsets$Builder;

    invoke-direct {v11}, Landroid/view/WindowInsets$Builder;-><init>()V

    invoke-static {v7}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v11

    invoke-virtual {v10, v11, v9}, Landroid/view/View;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v9

    iget v10, v9, Landroid/graphics/Insets;->left:I

    iget v11, v9, Landroid/graphics/Insets;->top:I

    iget v12, v9, Landroid/graphics/Insets;->right:I

    iget v9, v9, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v7, v10, v11, v12, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget v9, v7, Landroid/graphics/Rect;->top:I

    iget v10, v7, Landroid/graphics/Rect;->left:I

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v11, v2, Lm/w;->A:Landroid/view/ViewGroup;

    sget-object v12, Lf1/W;->a:Ljava/util/WeakHashMap;

    invoke-static {v11}, Lf1/P;->a(Landroid/view/View;)Lf1/w0;

    move-result-object v11

    if-nez v11, :cond_1

    move v12, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v11}, Lf1/w0;->b()I

    move-result v12

    :goto_0
    if-nez v11, :cond_2

    move v11, v5

    goto :goto_1

    :cond_2
    invoke-virtual {v11}, Lf1/w0;->c()I

    move-result v11

    :goto_1
    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v13, v9, :cond_4

    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v13, v10, :cond_4

    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v13, v7, :cond_3

    goto :goto_2

    :cond_3
    move v7, v5

    goto :goto_3

    :cond_4
    :goto_2
    iput v9, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move v7, v8

    :goto_3
    iget-object v10, v2, Lm/w;->k:Landroid/content/Context;

    if-lez v9, :cond_5

    iget-object v9, v2, Lm/w;->C:Landroid/view/View;

    if-nez v9, :cond_5

    new-instance v9, Landroid/view/View;

    invoke-direct {v9, v10}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v9, v2, Lm/w;->C:Landroid/view/View;

    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    iget v13, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v14, 0x33

    const/4 v15, -0x1

    invoke-direct {v9, v15, v13, v14}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v11, v2, Lm/w;->A:Landroid/view/ViewGroup;

    iget-object v12, v2, Lm/w;->C:Landroid/view/View;

    invoke-virtual {v11, v12, v15, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_5
    iget-object v9, v2, Lm/w;->C:Landroid/view/View;

    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v14, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v13, v14, :cond_6

    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v13, v12, :cond_6

    iget v13, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v13, v11, :cond_7

    :cond_6
    iput v14, v9, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v12, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v11, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget-object v11, v2, Lm/w;->C:Landroid/view/View;

    invoke-virtual {v11, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_4
    iget-object v9, v2, Lm/w;->C:Landroid/view/View;

    if-eqz v9, :cond_8

    goto :goto_5

    :cond_8
    move v8, v5

    :goto_5
    if-eqz v8, :cond_a

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, v2, Lm/w;->C:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v11

    and-int/lit16 v11, v11, 0x2000

    if-eqz v11, :cond_9

    const v11, 0x7f060001

    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    goto :goto_6

    :cond_9
    const/high16 v11, 0x7f060000

    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    :goto_6
    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_a
    iget-boolean v9, v2, Lm/w;->H:Z

    if-nez v9, :cond_b

    if-eqz v8, :cond_b

    iget-boolean v9, v2, Lm/w;->w0:Z

    if-nez v9, :cond_b

    move v3, v5

    :cond_b
    invoke-virtual {v2}, Lm/w;->z()V

    iget-object v9, v2, Lm/w;->l:Landroid/view/Window;

    const v10, 0x1020002

    invoke-virtual {v9, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    instance-of v10, v9, Landroidx/appcompat/widget/ContentFrameLayout;

    if-eqz v10, :cond_e

    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    if-eqz v10, :cond_c

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_c
    invoke-virtual {v9}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    if-eqz v10, :cond_d

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_d
    invoke-virtual {v9}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    if-eqz v9, :cond_e

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_e
    move/from16 v16, v8

    move v8, v7

    move/from16 v7, v16

    goto :goto_7

    :cond_f
    iget v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz v7, :cond_10

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move v7, v5

    goto :goto_7

    :cond_10
    move v7, v5

    move v8, v7

    :goto_7
    if-eqz v8, :cond_12

    iget-object v8, v2, Lm/w;->v:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v2, Lm/w;->C:Landroid/view/View;

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v8, v3, :cond_12

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v8, v2, Lm/w;->C:Landroid/view/View;

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_8

    :cond_11
    move v7, v5

    :cond_12
    :goto_8
    iget-object v2, v2, Lm/w;->C:Landroid/view/View;

    if-eqz v2, :cond_14

    if-eqz v7, :cond_13

    goto :goto_9

    :cond_13
    move v5, v6

    :goto_9
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    if-eq v1, v3, :cond_16

    invoke-virtual/range {p2 .. p2}, Lf1/w0;->b()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Lf1/w0;->c()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lf1/w0;->a()I

    move-result v4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-lt v5, v6, :cond_15

    new-instance v5, Lf1/n0;

    invoke-direct {v5, v0}, Lf1/n0;-><init>(Lf1/w0;)V

    goto :goto_a

    :cond_15
    new-instance v5, Lf1/m0;

    invoke-direct {v5, v0}, Lf1/m0;-><init>(Lf1/w0;)V

    :goto_a
    invoke-static {v1, v3, v2, v4}, LX0/b;->b(IIII)LX0/b;

    move-result-object v0

    invoke-virtual {v5, v0}, Lf1/m0;->f(LX0/b;)V

    invoke-virtual {v5}, Lf1/m0;->b()Lf1/w0;

    move-result-object v0

    :cond_16
    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lf1/W;->f(Landroid/view/View;Lf1/w0;)Lf1/w0;

    move-result-object v0

    return-object v0
.end method

.method public onComplete(LR5/h;)V
    .locals 0

    sget-object p1, Lcom/google/firebase/iid/FirebaseInstanceId;->j:Lcom/samsung/android/motionphoto/utils/ex/e;

    iget-object p0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, LI3/d;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotNullProperty("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "value not initialized yet"

    :goto_0
    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, LV0/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch
.end method

.method public w(I[B)I
    .locals 1

    iget-object p0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p1
.end method

.method public y(LW3/z;)LW3/t;
    .locals 3

    iget v0, p0, LI3/d;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LW3/b;

    const-class v1, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, LW3/z;->a(Ljava/lang/Class;Ljava/lang/Class;)LW3/t;

    move-result-object p1

    iget-object p0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/res/Resources;

    invoke-direct {v0, p0, p1}, LW3/b;-><init>(Landroid/content/res/Resources;LW3/t;)V

    return-object v0

    :pswitch_0
    new-instance p1, LW3/b;

    iget-object v0, p0, LI3/d;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, p0}, LW3/b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method
