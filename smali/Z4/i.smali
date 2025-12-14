.class public final LZ4/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb7/a;


# static fields
.field public static e:LZ4/i;


# instance fields
.field public a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILPc/a;LQc/h;Lib/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, LZ4/i;->b:Ljava/lang/Object;

    iput p1, p0, LZ4/i;->a:I

    iput-object p2, p0, LZ4/i;->c:Ljava/lang/Object;

    iput-object p4, p0, LZ4/i;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/crypto/spec/SecretKeySpec;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld7/n;

    invoke-direct {v0, p0}, Ld7/n;-><init>(LZ4/i;)V

    iput-object v0, p0, LZ4/i;->b:Ljava/lang/Object;

    iput-object p1, p0, LZ4/i;->c:Ljava/lang/Object;

    iput-object p2, p0, LZ4/i;->d:Ljava/lang/Object;

    invoke-virtual {p2}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object p2

    array-length p2, p2

    const/16 v1, 0x10

    if-lt p2, v1, :cond_4

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "HMACSHA512"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "HMACSHA384"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "HMACSHA256"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "HMACSHA1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    new-instance p0, Ljava/security/NoSuchAlgorithmException;

    const-string p2, "unknown Hmac algorithm: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 p1, 0x40

    iput p1, p0, LZ4/i;->a:I

    goto :goto_1

    :pswitch_1
    const/16 p1, 0x30

    iput p1, p0, LZ4/i;->a:I

    goto :goto_1

    :pswitch_2
    const/16 p1, 0x20

    iput p1, p0, LZ4/i;->a:I

    goto :goto_1

    :pswitch_3
    const/16 p1, 0x14

    iput p1, p0, LZ4/i;->a:I

    :goto_1
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    return-void

    :cond_4
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "key size too small, need at least 16 bytes"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6ca99674 -> :sswitch_3
        0x176240ee -> :sswitch_2
        0x1762450a -> :sswitch_1
        0x17624bb1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Lk7/k;)Lk7/k;
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p0, Lk7/k;->b:Lm7/d;

    invoke-interface {v0}, Lm7/d;->getType()Lm7/c;

    move-result-object v0

    sget-object v1, Lm7/c;->p:Lm7/c;

    if-ne v0, v1, :cond_0

    sget-object v0, Lm7/c;->s:Lm7/c;

    iget p0, p0, Lk7/k;->a:I

    invoke-static {p0, v0}, Lk7/k;->f(ILm7/d;)Lk7/k;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static declared-synchronized e(Landroid/content/Context;)LZ4/i;
    .locals 4

    const-class v0, LZ4/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, LZ4/i;->e:LZ4/i;

    if-nez v1, :cond_0

    new-instance v1, LZ4/i;

    new-instance v2, Lcom/google/common/util/concurrent/B;

    const-string v3, "MessengerIpcClient"

    invoke-direct {v2, v3}, Lcom/google/common/util/concurrent/B;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-static {v2}, Ljava/util/concurrent/Executors;->unconfigurableScheduledExecutorService(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    new-instance v3, LZ4/g;

    invoke-direct {v3, v1}, LZ4/g;-><init>(LZ4/i;)V

    iput-object v3, v1, LZ4/i;->d:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v1, LZ4/i;->a:I

    iput-object v2, v1, LZ4/i;->c:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    iput-object p0, v1, LZ4/i;->b:Ljava/lang/Object;

    sput-object v1, LZ4/i;->e:LZ4/i;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, LZ4/i;->e:LZ4/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(II)V
    .locals 11

    iget-object v0, p0, LZ4/i;->d:Ljava/lang/Object;

    check-cast v0, [I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-nez p1, :cond_1

    if-nez v3, :cond_1

    return-void

    :cond_1
    if-ltz p1, :cond_8

    if-nez v3, :cond_2

    array-length p1, v0

    if-lt p2, p1, :cond_7

    :cond_2
    add-int/2addr p2, v1

    new-instance p1, Lk7/m;

    invoke-direct {p1, p2}, Lk7/m;-><init>(I)V

    new-array p2, p2, [I

    const/4 v0, -0x1

    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([II)V

    if-nez v3, :cond_6

    iget-object v0, p0, LZ4/i;->c:Ljava/lang/Object;

    check-cast v0, Lk7/m;

    iget-object v1, v0, Lk7/m;->b:[Lk7/k;

    array-length v1, v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_5

    invoke-virtual {v0, v3}, Lk7/m;->e(I)Lk7/k;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, p1, Lk7/m;->b:[Lk7/k;

    invoke-virtual {p1}, LEc/g;->d()V

    const/4 v6, -0x1

    iput v6, p1, Lk7/m;->c:I

    :try_start_0
    iget v6, v4, Lk7/k;->a:I

    aput-object v4, v5, v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-lez v6, :cond_3

    add-int/lit8 v9, v6, -0x1

    aget-object v10, v5, v9

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lk7/k;->e()I

    move-result v10

    if-ne v10, v8, :cond_3

    aput-object v7, v5, v9

    :cond_3
    invoke-virtual {v4}, Lk7/k;->e()I

    move-result v4

    if-ne v4, v8, :cond_4

    add-int/lit8 v6, v6, 0x1

    aput-object v7, v5, v6
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "spec.getReg() out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, LZ4/i;->d:Ljava/lang/Object;

    check-cast v0, [I

    array-length v1, v0

    invoke-static {v0, v2, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iput-object p1, p0, LZ4/i;->c:Ljava/lang/Object;

    iput-object p2, p0, LZ4/i;->d:Ljava/lang/Object;

    :cond_7
    return-void

    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "shouldn\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(ILg7/m;Lk7/k;)V
    .locals 4

    sget-object v0, Lg7/m;->START:Lg7/m;

    if-eq p2, v0, :cond_8

    iget-object v0, p0, LZ4/i;->d:Ljava/lang/Object;

    check-cast v0, [I

    iget v1, p3, Lk7/k;->a:I

    aget v0, v0, v1

    if-ltz v0, :cond_1

    iget-object v1, p0, LZ4/i;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg7/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    invoke-static {p3}, LZ4/i;->d(Lk7/k;)Lk7/k;

    move-result-object v0

    iget p3, p3, Lk7/k;->a:I

    invoke-virtual {p0, p1, p3}, LZ4/i;->a(II)V

    iget-object v1, p0, LZ4/i;->d:Ljava/lang/Object;

    check-cast v1, [I

    aget p3, v1, p3

    if-ltz p3, :cond_2

    goto :goto_3

    :cond_2
    iget-object p3, p0, LZ4/i;->b:Ljava/lang/Object;

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    const/4 v2, 0x0

    if-ltz v1, :cond_5

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg7/n;

    if-nez v3, :cond_3

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    iget p0, v0, Lk7/k;->a:I

    new-instance p0, Lg7/n;

    invoke-direct {p0, p1, p2, v0}, Lg7/n;-><init>(ILg7/m;Lk7/k;)V

    throw v2

    :cond_4
    throw v2

    :cond_5
    iget-object p1, p0, LZ4/i;->c:Ljava/lang/Object;

    check-cast p1, Lk7/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object p2, p1, Lk7/m;->b:[Lk7/k;

    iget v0, v0, Lk7/k;->a:I

    aput-object v2, p2, v0

    const/4 p2, -0x1

    iput p2, p1, Lk7/m;->c:I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, LZ4/i;->a:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, LZ4/i;->a:I

    add-int/2addr v1, p2

    :goto_2
    if-ltz v1, :cond_7

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg7/n;

    if-nez p0, :cond_6

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_6
    throw v2

    :cond_7
    :goto_3
    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bogus reg"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "shouldn\'t happen"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(I[B)[B
    .locals 1

    iget v0, p0, LZ4/i;->a:I

    if-gt p1, v0, :cond_0

    iget-object p0, p0, LZ4/i;->b:Ljava/lang/Object;

    check-cast p0, Ld7/n;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    invoke-virtual {v0, p2}, Ljavax/crypto/Mac;->update([B)V

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/crypto/Mac;

    invoke-virtual {p0}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const-string p1, "tag size too big"

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized f(LZ4/h;)LR5/p;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "MessengerIpcClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x9

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Queueing "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "MessengerIpcClient"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, LZ4/i;->d:Ljava/lang/Object;

    check-cast v0, LZ4/g;

    invoke-virtual {v0, p1}, LZ4/g;->d(LZ4/h;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, LZ4/g;

    invoke-direct {v0, p0}, LZ4/g;-><init>(LZ4/i;)V

    iput-object v0, p0, LZ4/i;->d:Ljava/lang/Object;

    invoke-virtual {v0, p1}, LZ4/g;->d(LZ4/h;)Z

    :cond_1
    iget-object p1, p1, LZ4/h;->b:LR5/i;

    iget-object p1, p1, LR5/i;->a:LR5/p;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
