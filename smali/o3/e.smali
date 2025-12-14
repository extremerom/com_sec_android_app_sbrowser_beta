.class public Lo3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ3/n;
.implements Luc/g;
.implements Lt/Q;
.implements Lv2/y1;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    sparse-switch p1, :sswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v0, 0x3f400000    # 0.75f

    const/16 v1, 0xa

    const/16 v2, 0x10

    invoke-direct {p1, v2, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object p1, p0, Lo3/e;->a:Ljava/lang/Object;

    new-instance p1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {p1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object p1, p0, Lo3/e;->b:Ljava/lang/Object;

    return-void

    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/e;->a:Ljava/lang/Object;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lo3/e;->b:Ljava/lang/Object;

    return-void

    :sswitch_1
    sget-object p1, La5/b;->d:La5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lo3/e;->a:Ljava/lang/Object;

    iput-object p1, p0, Lo3/e;->b:Ljava/lang/Object;

    return-void

    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/samsung/android/motionphoto/utils/ex/h;

    const-wide/16 v0, 0x3e8

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/motionphoto/utils/ex/h;-><init>(J)V

    iput-object p1, p0, Lo3/e;->a:Ljava/lang/Object;

    new-instance p1, LO7/a;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    invoke-static {v0, p1}, Lm4/d;->a(ILm4/a;)LZ3/x;

    move-result-object p1

    iput-object p1, p0, Lo3/e;->b:Ljava/lang/Object;

    return-void

    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, LF6/t;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/e;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lo3/e;->b:Ljava/lang/Object;

    return-void

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lo3/e;->b:Ljava/lang/Object;

    new-instance v7, Lcom/google/android/gms/common/internal/q;

    const-string v0, "mlkit:natural_language"

    invoke-direct {v7, v0}, Lcom/google/android/gms/common/internal/q;-><init>(Ljava/lang/String;)V

    new-instance v0, Lg5/b;

    sget-object v8, Lb5/i;->c:Lb5/i;

    const/4 v5, 0x0

    sget-object v6, Lg5/b;->a:Lb5/g;

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lb5/j;-><init>(Landroid/content/Context;Landroid/app/Activity;Lb5/g;Lb5/c;Lb5/i;)V

    iput-object v0, p0, Lo3/e;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/AppCompatTextView;)V
    .locals 0

    iput-object p1, p0, Lo3/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/e;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/WorkDatabase_Impl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo3/e;->a:Ljava/lang/Object;

    new-instance v0, Lo3/b;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lo3/b;-><init>(LJ2/U;I)V

    iput-object v0, p0, Lo3/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lo3/e;->a:Ljava/lang/Object;

    iput-object p2, p0, Lo3/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lo3/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lo3/e;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lv2/h0;Lo3/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "retryEventBus"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lo3/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lo3/e;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lz3/D;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LF6/t;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo3/e;->a:Ljava/lang/Object;

    iput-object p1, p0, Lo3/e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iget-object p0, p0, Lo3/e;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->access$1101(Landroidx/appcompat/widget/AppCompatTextView;I)V

    return-void
.end method

.method public b(IF)V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 0

    iget-object p0, p0, Lo3/e;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->access$1001(Landroidx/appcompat/widget/AppCompatTextView;I)V

    return-void
.end method

.method public d(Ljava/lang/Object;Ljava/io/File;LQ3/k;)Z
    .locals 2

    check-cast p1, LS3/C;

    new-instance v0, LZ3/d;

    invoke-interface {p1}, LS3/C;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v1, p0, Lo3/e;->a:Ljava/lang/Object;

    check-cast v1, LT3/a;

    invoke-direct {v0, v1, p1}, LZ3/d;-><init>(LT3/a;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lo3/e;->b:Ljava/lang/Object;

    check-cast p0, LZ3/b;

    invoke-virtual {p0, v0, p2, p3}, LZ3/b;->d(Ljava/lang/Object;Ljava/io/File;LQ3/k;)Z

    move-result p0

    return p0
.end method

.method public e(LQ3/k;)LQ3/c;
    .locals 0

    sget-object p0, LQ3/c;->TRANSFORMED:LQ3/c;

    return-object p0
.end method

.method public f(Lo3/j;)Z
    .locals 1

    iget-object v0, p0, Lo3/e;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lo3/e;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    sget-object v0, LJ2/d0;->i:Ljava/util/TreeMap;

    const-string v0, "SELECT long_value FROM Preference where `key`=?"

    const/4 v1, 0x1

    invoke-static {v1, v0}, LG5/z3;->a(ILjava/lang/String;)LJ2/d0;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, LJ2/d0;->U(ILjava/lang/String;)V

    iget-object p0, p0, Lo3/e;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {p0}, LJ2/U;->assertNotSuspendingTransaction()V

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, LA/b;->k(LJ2/U;LT2/g;Z)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, LJ2/d0;->a()V

    return-object v2

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v0}, LJ2/d0;->a()V

    throw p1
.end method

.method public h(LQ3/g;)Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lo3/e;->a:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/motionphoto/utils/ex/h;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo3/e;->a:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/motionphoto/utils/ex/h;

    invoke-virtual {v1, p1}, Lcom/samsung/android/motionphoto/utils/ex/h;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v1, :cond_1

    iget-object v0, p0, Lo3/e;->b:Ljava/lang/Object;

    check-cast v0, LZ3/x;

    invoke-virtual {v0}, LZ3/x;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LU3/e;

    :try_start_1
    iget-object v1, v0, LU3/e;->a:Ljava/security/MessageDigest;

    invoke-interface {p1, v1}, LQ3/g;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    iget-object v1, v0, LU3/e;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    sget-object v2, Ll4/l;->b:[C

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    :goto_0
    :try_start_2
    array-length v4, v1

    if-ge v3, v4, :cond_0

    aget-byte v4, v1, v3

    and-int/lit16 v5, v4, 0xff

    mul-int/lit8 v6, v3, 0x2

    ushr-int/lit8 v5, v5, 0x4

    sget-object v7, Ll4/l;->a:[C

    aget-char v5, v7, v5

    aput-char v5, v2, v6

    add-int/lit8 v6, v6, 0x1

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v7, v4

    aput-char v4, v2, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lo3/e;->b:Ljava/lang/Object;

    check-cast v2, LZ3/x;

    invoke-virtual {v2, v0}, LZ3/x;->a(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    iget-object p0, p0, Lo3/e;->b:Ljava/lang/Object;

    check-cast p0, LZ3/x;

    invoke-virtual {p0, v0}, LZ3/x;->a(Ljava/lang/Object;)Z

    throw p1

    :cond_1
    :goto_1
    iget-object v0, p0, Lo3/e;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/motionphoto/utils/ex/h;

    monitor-enter v2

    :try_start_5
    iget-object p0, p0, Lo3/e;->a:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/motionphoto/utils/ex/h;

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/motionphoto/utils/ex/h;->d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-object v1

    :catchall_2
    move-exception p0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0
.end method

.method public i(LF6/t;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo3/e;->b:Ljava/lang/Object;

    check-cast p0, Lz3/D;

    return-object p0
.end method

.method public j(Lhc/b;)Luc/f;
    .locals 2

    const-string v0, "classId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo3/e;->b:Ljava/lang/Object;

    check-cast v0, Lac/f;

    invoke-virtual {v0}, Lac/f;->c()Luc/k;

    move-result-object v1

    iget-object v1, v1, Luc/k;->c:Luc/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lec/f;->g:Lec/f;

    iget-object p0, p0, Lo3/e;->a:Ljava/lang/Object;

    check-cast p0, Lo3/f;

    invoke-static {p0, p1, v1}, LG5/T3;->c(Lo3/f;Lhc/b;Lec/f;)LOb/b;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, LOb/b;->a:Ljava/lang/Class;

    invoke-static {v1}, LPb/c;->a(Ljava/lang/Class;)Lhc/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lhc/b;->equals(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Lac/f;->g(LOb/b;)Luc/f;

    move-result-object p0

    return-object p0
.end method

.method public k(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lo3/e;->a:Ljava/lang/Object;

    check-cast v0, LF6/t;

    iput p1, v0, LF6/t;->a:F

    iput p2, v0, LF6/t;->b:F

    iput-object p3, v0, LF6/t;->f:Ljava/lang/Object;

    iput-object p4, v0, LF6/t;->g:Ljava/lang/Object;

    iput p5, v0, LF6/t;->c:F

    iput p6, v0, LF6/t;->d:F

    iput p7, v0, LF6/t;->e:F

    invoke-virtual {p0, v0}, Lo3/e;->i(LF6/t;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public l(Lo3/d;)V
    .locals 1

    iget-object v0, p0, Lo3/e;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, LJ2/U;->assertNotSuspendingTransaction()V

    invoke-virtual {v0}, LJ2/U;->beginTransaction()V

    :try_start_0
    iget-object p0, p0, Lo3/e;->b:Ljava/lang/Object;

    check-cast p0, Lo3/b;

    invoke-virtual {p0, p1}, Lo3/b;->x(Ljava/lang/Object;)V

    invoke-virtual {v0}, LJ2/U;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, LJ2/U;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, LJ2/U;->endTransaction()V

    throw p0
.end method

.method public m(Lo3/j;)Lg3/i;
    .locals 1

    iget-object v0, p0, Lo3/e;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lo3/e;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg3/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public n(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    const-string v0, "workSpecId"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo3/e;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo3/e;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo3/j;

    iget-object v4, v4, Lo3/j;->a:Ljava/lang/String;

    invoke-static {v4, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo3/j;

    iget-object v3, p0, Lo3/e;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/LinkedHashMap;

    invoke-interface {v3, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lfb/n;->g0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_2
    monitor-exit v0

    throw p0
.end method

.method public o(Lo3/j;)Lg3/i;
    .locals 2

    iget-object v0, p0, Lo3/e;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lo3/e;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lg3/i;

    invoke-direct {v1, p1}, Lg3/i;-><init>(Lo3/j;)V

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    check-cast v1, Lg3/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method
