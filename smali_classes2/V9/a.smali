.class public final LV9/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll4/g;
.implements Lzc/c;


# static fields
.field public static e:LV9/a;


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LA4/a;LB0/E;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LV9/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV9/a;->c:Ljava/lang/Object;

    iput-object p2, p0, LV9/a;->d:Ljava/lang/Object;

    iput-boolean p3, p0, LV9/a;->b:Z

    return-void
.end method

.method public constructor <init>(LJb/b;LJb/b;Z)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LV9/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, LV9/a;->b:Z

    iput-object p1, p0, LV9/a;->c:Ljava/lang/Object;

    iput-object p2, p0, LV9/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LR1/x;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LV9/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV9/a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, LV9/a;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, LV9/a;->b:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, LV9/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/auth/j;

    const/4 v1, 0x7

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/auth/j;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, LV9/a;->c:Ljava/lang/Object;

    :cond_0
    new-instance p1, LB3/c;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p1, LB3/c;->a:Ljava/lang/Object;

    iput-object p1, p0, LV9/a;->d:Ljava/lang/Object;

    iput-boolean p2, p0, LV9/a;->b:Z

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/b;Ljava/util/ArrayList;LG5/d3;)V
    .locals 0

    const/4 p3, 0x3

    iput p3, p0, LV9/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV9/a;->c:Ljava/lang/Object;

    iput-object p2, p0, LV9/a;->d:Ljava/lang/Object;

    return-void
.end method

.method public static c(Landroid/content/Context;LG6/f;)LV9/a;
    .locals 5

    sget-object v0, LV9/a;->e:LV9/a;

    if-nez v0, :cond_3

    const-class v0, LV9/a;

    monitor-enter v0

    :try_start_0
    sget-object v1, LV9/a;->e:LV9/a;

    if-nez v1, :cond_2

    sget v1, LG5/H;->a:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {p0}, LG5/G3;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "lgt"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "rtb"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, LV9/a;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, LV9/a;-><init>(Landroid/content/Context;Z)V

    sput-object p1, LV9/a;->e:LV9/a;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance p1, LV9/a;

    invoke-direct {p1, p0, v2}, LV9/a;-><init>(Landroid/content/Context;Z)V

    sput-object p1, LV9/a;->e:LV9/a;

    goto :goto_0

    :cond_1
    new-instance p1, LV9/a;

    invoke-direct {p1, p0, v2}, LV9/a;-><init>(Landroid/content/Context;Z)V

    sput-object p1, LV9/a;->e:LV9/a;

    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_2
    sget-object p0, LV9/a;->e:LV9/a;

    return-object p0
.end method

.method public static d(La0/m;)Z
    .locals 2

    check-cast p0, La0/q;

    const v0, 0x3e2ab119

    invoke-virtual {p0, v0}, La0/q;->R(I)V

    sget-object v0, LR1/d;->d:La0/L0;

    invoke-virtual {p0, v0}, La0/q;->j(La0/g0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM1/b;

    iget v0, v0, LM1/b;->a:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, LM1/b;->a(II)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v1}, La0/q;->p(Z)V

    return v0
.end method


# virtual methods
.method public a(Lyc/L;Lyc/L;)Z
    .locals 4

    const-string v0, "c1"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c2"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Lyc/L;->c()LJb/i;

    move-result-object p1

    invoke-interface {p2}, Lyc/L;->c()LJb/i;

    move-result-object p2

    instance-of v0, p1, LJb/W;

    if-eqz v0, :cond_2

    instance-of v0, p2, LJb/W;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lkc/c;->a:Lkc/c;

    check-cast p1, LJb/W;

    check-cast p2, LJb/W;

    new-instance v1, Lkc/b;

    iget-object v2, p0, LV9/a;->c:Ljava/lang/Object;

    check-cast v2, LJb/b;

    iget-object v3, p0, LV9/a;->d:Ljava/lang/Object;

    check-cast v3, LJb/b;

    invoke-direct {v1, v2, v3}, Lkc/b;-><init>(LJb/b;LJb/b;)V

    iget-boolean p0, p0, LV9/a;->b:Z

    invoke-virtual {v0, p1, p2, p0, v1}, Lkc/c;->d(LJb/W;LJb/W;ZLsb/n;)Z

    move-result p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public b(I)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 7

    iget-boolean v0, p0, LV9/a;->b:Z

    if-eqz v0, :cond_2

    if-eqz v0, :cond_0

    iget-object v0, p0, LV9/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/auth/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x5

    int-to-long v3, v3

    const-wide/32 v5, 0x5265c00

    mul-long/2addr v3, v5

    sub-long/2addr v1, v3

    iget-object v0, v0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast v0, LL8/b;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v3, "timestamp <= "

    invoke-static {v1, v2, v3}, Landroidx/recyclerview/widget/P;->f(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "logs_v2"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    if-gtz p1, :cond_1

    iget-object p1, p0, LV9/a;->c:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/auth/j;

    const-string v0, "select * from logs_v2"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/auth/j;->p(Ljava/lang/String;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v0, p0, LV9/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/auth/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "select * from logs_v2 LIMIT "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/j;->p(Ljava/lang/String;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, LV9/a;->d:Ljava/lang/Object;

    check-cast p1, LB3/c;

    iget-object p1, p1, LB3/c;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/LinkedBlockingQueue;

    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get log from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, LV9/a;->b:Z

    if-eqz p0, :cond_3

    const-string p0, "Database "

    goto :goto_1

    :cond_3
    const-string p0, "Queue "

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LG5/F3;->d(Ljava/lang/String;)V

    :cond_4
    return-object p1
.end method

.method public e(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/d;)V
    .locals 2

    iget-boolean v0, p0, LV9/a;->b:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, LV9/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/auth/j;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/auth/j;->m(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/d;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, LV9/a;->d:Ljava/lang/Object;

    check-cast p0, LB3/c;

    iget-object p0, p0, LB3/c;->a:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "QueueManager"

    const-string v1, "queue size over. remove oldest log"

    invoke-static {v0, v1}, LG5/F3;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Ljava/util/ArrayList;)V
    .locals 9

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, LV9/a;->b:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, LV9/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/auth/j;

    iget-object p0, p0, Lcom/google/android/gms/internal/auth/j;->a:Ljava/lang/Object;

    check-cast p0, LL8/b;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lez v0, :cond_2

    const/16 v3, 0x384

    if-ge v0, v3, :cond_1

    move v3, v0

    :cond_1
    add-int v4, v2, v3

    invoke-virtual {p1, v2, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    const-string v5, "_id IN("

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    new-array v7, v7, [C

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>([C)V

    const-string v7, "\u0000"

    const-string v8, "?,"

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "?)"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "logs_v2"

    new-array v7, v1, [Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p0, v6, v5, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    sub-int/2addr v0, v3

    move v2, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_4

    :goto_2
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LG5/F3;->j(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :cond_3
    :goto_4
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, LV9/a;->b:Z

    if-nez v0, :cond_0

    const-string v0, "Glide registry"

    invoke-static {v0}, LG5/t3;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LV9/a;->b:Z

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, LV9/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/bumptech/glide/b;

    iget-object v2, p0, LV9/a;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-static {v1, v2}, LG5/F;->a(Lcom/bumptech/glide/b;Ljava/util/ArrayList;)Lcom/bumptech/glide/h;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, LV9/a;->b:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v1

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, LV9/a;->b:Z

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you\'re using the provided Registry rather calling glide.getRegistry()!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, LV9/a;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScrollAxisRange(value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LV9/a;->c:Ljava/lang/Object;

    check-cast v1, LA4/a;

    invoke-virtual {v1}, LA4/a;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", maxValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LV9/a;->d:Ljava/lang/Object;

    check-cast v1, LB0/E;

    invoke-virtual {v1}, LB0/E;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", reverseScrolling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, LV9/a;->b:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
