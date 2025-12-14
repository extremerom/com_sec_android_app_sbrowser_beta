.class public final Lhd/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final k:Ljava/lang/String;

.field public static final l:Ljava/lang/String;


# instance fields
.field public final a:Lhd/A;

.field public final b:Lhd/y;

.field public final c:Ljava/lang/String;

.field public final d:Lhd/K;

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Lhd/y;

.field public final h:Lhd/w;

.field public final i:J

.field public final j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lqd/n;->a:Lqd/n;

    sget-object v0, Lqd/n;->a:Lqd/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "OkHttp-Sent-Millis"

    sput-object v0, Lhd/e;->k:Ljava/lang/String;

    sget-object v0, Lqd/n;->a:Lqd/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "OkHttp-Received-Millis"

    sput-object v0, Lhd/e;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lhd/T;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lhd/T;->a:Lhd/M;

    iget-object v1, v0, Lhd/M;->a:Lhd/A;

    iput-object v1, p0, Lhd/e;->a:Lhd/A;

    iget-object v1, p1, Lhd/T;->h:Lhd/T;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object v1, v1, Lhd/T;->a:Lhd/M;

    iget-object v1, v1, Lhd/M;->c:Lhd/y;

    iget-object v2, p1, Lhd/T;->f:Lhd/y;

    invoke-static {v2}, LG5/F3;->l(Lhd/y;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v1, Lid/b;->b:Lhd/y;

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Lhd/y;->size()I

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_2

    invoke-virtual {v1, v7}, Lhd/y;->i(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v1, v7}, Lhd/y;->n(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "name"

    invoke-static {v8, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "value"

    invoke-static {v9, v10}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8}, LG5/L3;->b(Ljava/lang/String;)V

    invoke-static {v9, v8}, LG5/L3;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v9}, LKc/k;->Q(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lhd/y;

    new-array v3, v6, [Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-direct {v1, v3}, Lhd/y;-><init>([Ljava/lang/String;)V

    :goto_1
    iput-object v1, p0, Lhd/e;->b:Lhd/y;

    iget-object v0, v0, Lhd/M;->b:Ljava/lang/String;

    iput-object v0, p0, Lhd/e;->c:Ljava/lang/String;

    iget-object v0, p1, Lhd/T;->b:Lhd/K;

    iput-object v0, p0, Lhd/e;->d:Lhd/K;

    iget v0, p1, Lhd/T;->d:I

    iput v0, p0, Lhd/e;->e:I

    iget-object v0, p1, Lhd/T;->c:Ljava/lang/String;

    iput-object v0, p0, Lhd/e;->f:Ljava/lang/String;

    iput-object v2, p0, Lhd/e;->g:Lhd/y;

    iget-object v0, p1, Lhd/T;->e:Lhd/w;

    iput-object v0, p0, Lhd/e;->h:Lhd/w;

    iget-wide v0, p1, Lhd/T;->k:J

    iput-wide v0, p0, Lhd/e;->i:J

    iget-wide v0, p1, Lhd/T;->l:J

    iput-wide v0, p0, Lhd/e;->j:J

    return-void
.end method

.method public constructor <init>(Lwd/z;)V
    .locals 12

    const/4 v0, 0x0

    const-string v1, "Cache corruption for "

    const-string v2, "rawSource"

    invoke-static {p1, v2}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, LG5/u2;->c(Lwd/z;)Lwd/t;

    move-result-object v2

    const-wide v3, 0x7fffffffffffffffL

    invoke-virtual {v2, v3, v4}, Lwd/t;->o(J)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v6, 0x0

    :try_start_1
    new-instance v7, Lhd/z;

    invoke-direct {v7}, Lhd/z;-><init>()V

    invoke-virtual {v7, v6, v5}, Lhd/z;->c(Lhd/A;Ljava/lang/String;)V

    invoke-virtual {v7}, Lhd/z;->a()Lhd/A;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-object v7, v6

    :goto_0
    if-eqz v7, :cond_7

    :try_start_2
    iput-object v7, p0, Lhd/e;->a:Lhd/A;

    invoke-virtual {v2, v3, v4}, Lwd/t;->o(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lhd/e;->c:Ljava/lang/String;

    new-instance v1, Lhd/x;

    invoke-direct {v1}, Lhd/x;-><init>()V

    invoke-static {v2}, LG5/F3;->k(Lwd/t;)I

    move-result v5

    move v7, v0

    :goto_1
    if-ge v7, v5, :cond_0

    invoke-virtual {v2, v3, v4}, Lwd/t;->o(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lhd/x;->b(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {v1}, Lhd/x;->d()Lhd/y;

    move-result-object v1

    iput-object v1, p0, Lhd/e;->b:Lhd/y;

    invoke-virtual {v2, v3, v4}, Lwd/t;->o(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg3/p;->d(Ljava/lang/String;)LG5/g4;

    move-result-object v1

    iget-object v5, v1, LG5/g4;->c:Ljava/lang/Object;

    check-cast v5, Lhd/K;

    iput-object v5, p0, Lhd/e;->d:Lhd/K;

    iget v5, v1, LG5/g4;->b:I

    iput v5, p0, Lhd/e;->e:I

    iget-object v1, v1, LG5/g4;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lhd/e;->f:Ljava/lang/String;

    new-instance v1, Lhd/x;

    invoke-direct {v1}, Lhd/x;-><init>()V

    invoke-static {v2}, LG5/F3;->k(Lwd/t;)I

    move-result v5

    move v7, v0

    :goto_2
    if-ge v7, v5, :cond_1

    invoke-virtual {v2, v3, v4}, Lwd/t;->o(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lhd/x;->b(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    sget-object v5, Lhd/e;->k:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lhd/x;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lhd/e;->l:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lhd/x;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v5}, Lhd/x;->f(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lhd/x;->f(Ljava/lang/String;)V

    const-wide/16 v10, 0x0

    if-eqz v7, :cond_2

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_3

    :cond_2
    move-wide v7, v10

    :goto_3
    iput-wide v7, p0, Lhd/e;->i:J

    if-eqz v9, :cond_3

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    :cond_3
    iput-wide v10, p0, Lhd/e;->j:J

    invoke-virtual {v1}, Lhd/x;->d()Lhd/y;

    move-result-object v1

    iput-object v1, p0, Lhd/e;->g:Lhd/y;

    iget-object v1, p0, Lhd/e;->a:Lhd/A;

    iget-object v1, v1, Lhd/A;->a:Ljava/lang/String;

    const-string v5, "https"

    invoke-static {v1, v5}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v2, v3, v4}, Lwd/t;->o(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_5

    invoke-virtual {v2, v3, v4}, Lwd/t;->o(J)Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lhd/o;->b:Lhd/b;

    invoke-virtual {v5, v1}, Lhd/b;->c(Ljava/lang/String;)Lhd/o;

    move-result-object v1

    invoke-static {v2}, Lhd/e;->a(Lwd/t;)Ljava/util/List;

    move-result-object v5

    invoke-static {v2}, Lhd/e;->a(Lwd/t;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v2}, Lwd/t;->a()Z

    move-result v8

    if-nez v8, :cond_4

    sget-object v8, Lhd/a0;->Companion:Lhd/Z;

    invoke-virtual {v2, v3, v4}, Lwd/t;->o(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lhd/Z;->a(Ljava/lang/String;)Lhd/a0;

    move-result-object v2

    goto :goto_4

    :cond_4
    sget-object v2, Lhd/a0;->SSL_3_0:Lhd/a0;

    :goto_4
    const-string v3, "tlsVersion"

    invoke-static {v2, v3}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lid/b;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lhd/w;

    invoke-static {v7}, Lid/b;->w(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    new-instance v7, Lhd/u;

    invoke-direct {v7, v0, v3}, Lhd/u;-><init>(ILjava/util/List;)V

    invoke-direct {v4, v2, v1, v5, v7}, Lhd/w;-><init>(Lhd/a0;Lhd/o;Ljava/util/List;Lsb/a;)V

    iput-object v4, p0, Lhd/e;->h:Lhd/w;

    goto :goto_5

    :cond_5
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected \"\" but was \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iput-object v6, p0, Lhd/e;->h:Lhd/w;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    invoke-static {p1, v6}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :cond_7
    :try_start_3
    new-instance p0, Ljava/io/IOException;

    invoke-virtual {v1, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    sget-object v0, Lqd/n;->a:Lqd/n;

    sget-object v0, Lqd/n;->a:Lqd/n;

    const-string v1, "cache corruption"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x5

    invoke-static {v1, v0, p0}, Lqd/n;->i(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_6
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static a(Lwd/t;)Ljava/util/List;
    .locals 8

    const/4 v0, 0x0

    invoke-static {p0}, LG5/F3;->k(Lwd/t;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object p0, Lfb/v;->a:Lfb/v;

    return-object p0

    :cond_0
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v0

    :goto_0
    if-ge v4, v1, :cond_2

    const-wide v5, 0x7fffffffffffffffL

    invoke-virtual {p0, v5, v6}, Lwd/t;->o(J)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lwd/g;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    sget-object v7, Lwd/j;->d:Lwd/j;

    invoke-static {v5}, Lu5/d;->j(Ljava/lang/String;)Lwd/j;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v6, v5}, Lwd/g;->V(Lwd/j;)V

    new-instance v5, Lwd/f;

    invoke-direct {v5, v6, v0}, Lwd/f;-><init>(Lwd/i;I)V

    invoke-virtual {v2, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Corrupt certificate in cache entry"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v3

    :goto_1
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lwd/s;Ljava/util/List;)V
    .locals 3

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lwd/s;->O(J)Lwd/h;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lwd/s;->c0(I)Lwd/h;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v1

    sget-object v2, Lwd/j;->d:Lwd/j;

    const-string v2, "bytes"

    invoke-static {v1, v2}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lu5/d;->p([B)Lwd/j;

    move-result-object v1

    invoke-virtual {v1}, Lwd/j;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    invoke-virtual {p0, v0}, Lwd/s;->c0(I)Lwd/h;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-void

    :goto_1
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final c(Lcom/samsung/android/scloud/lib/setting/e;)V
    .locals 11

    iget-object v0, p0, Lhd/e;->a:Lhd/A;

    iget-object v1, p0, Lhd/e;->h:Lhd/w;

    iget-object v2, p0, Lhd/e;->g:Lhd/y;

    iget-object v3, p0, Lhd/e;->b:Lhd/y;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lcom/samsung/android/scloud/lib/setting/e;->j(I)Lwd/x;

    move-result-object p1

    invoke-static {p1}, LG5/u2;->b(Lwd/x;)Lwd/s;

    move-result-object p1

    :try_start_0
    iget-object v5, v0, Lhd/A;->i:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    const/16 v5, 0xa

    invoke-virtual {p1, v5}, Lwd/s;->c0(I)Lwd/h;

    iget-object v6, p0, Lhd/e;->c:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    invoke-virtual {p1, v5}, Lwd/s;->c0(I)Lwd/h;

    invoke-virtual {v3}, Lhd/y;->size()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p1, v6, v7}, Lwd/s;->O(J)Lwd/h;

    invoke-virtual {p1, v5}, Lwd/s;->c0(I)Lwd/h;

    invoke-virtual {v3}, Lhd/y;->size()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v4

    :goto_0
    const-string v8, ": "

    if-ge v7, v6, :cond_0

    :try_start_1
    invoke-virtual {v3, v7}, Lhd/y;->i(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    invoke-virtual {p1, v8}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    invoke-virtual {v3, v7}, Lhd/y;->n(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Lwd/h;->C(Ljava/lang/String;)Lwd/h;

    invoke-interface {p1, v5}, Lwd/h;->c0(I)Lwd/h;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_0
    iget-object v3, p0, Lhd/e;->d:Lhd/K;

    iget v6, p0, Lhd/e;->e:I

    iget-object v7, p0, Lhd/e;->f:Ljava/lang/String;

    const-string v9, "protocol"

    invoke-static {v3, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "message"

    invoke-static {v7, v9}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lhd/K;->HTTP_1_0:Lhd/K;

    if-ne v3, v10, :cond_1

    const-string v3, "HTTP/1.0"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v3, "HTTP/1.1"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const/16 v3, 0x20

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v3, v6}, Ltb/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    invoke-virtual {p1, v5}, Lwd/s;->c0(I)Lwd/h;

    invoke-virtual {v2}, Lhd/y;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    int-to-long v6, v3

    invoke-virtual {p1, v6, v7}, Lwd/s;->O(J)Lwd/h;

    invoke-virtual {p1, v5}, Lwd/s;->c0(I)Lwd/h;

    invoke-virtual {v2}, Lhd/y;->size()I

    move-result v3

    :goto_2
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Lhd/y;->i(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    invoke-virtual {p1, v8}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    invoke-virtual {v2, v4}, Lhd/y;->n(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Lwd/h;->C(Ljava/lang/String;)Lwd/h;

    invoke-interface {p1, v5}, Lwd/h;->c0(I)Lwd/h;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    sget-object v2, Lhd/e;->k:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    invoke-virtual {p1, v8}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    iget-wide v2, p0, Lhd/e;->i:J

    invoke-interface {p1, v2, v3}, Lwd/h;->O(J)Lwd/h;

    invoke-interface {p1, v5}, Lwd/h;->c0(I)Lwd/h;

    sget-object v2, Lhd/e;->l:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    invoke-virtual {p1, v8}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    iget-wide v2, p0, Lhd/e;->j:J

    invoke-interface {p1, v2, v3}, Lwd/h;->O(J)Lwd/h;

    invoke-interface {p1, v5}, Lwd/h;->c0(I)Lwd/h;

    iget-object p0, v0, Lhd/A;->a:Ljava/lang/String;

    const-string v0, "https"

    invoke-static {p0, v0}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1, v5}, Lwd/s;->c0(I)Lwd/h;

    invoke-static {v1}, Ltb/k;->c(Ljava/lang/Object;)V

    iget-object p0, v1, Lhd/w;->b:Lhd/o;

    iget-object p0, p0, Lhd/o;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    invoke-virtual {p1, v5}, Lwd/s;->c0(I)Lwd/h;

    invoke-virtual {v1}, Lhd/w;->a()Ljava/util/List;

    move-result-object p0

    invoke-static {p1, p0}, Lhd/e;->b(Lwd/s;Ljava/util/List;)V

    iget-object p0, v1, Lhd/w;->c:Ljava/util/List;

    invoke-static {p1, p0}, Lhd/e;->b(Lwd/s;Ljava/util/List;)V

    iget-object p0, v1, Lhd/w;->a:Lhd/a0;

    invoke-virtual {p0}, Lhd/a0;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lwd/s;->C(Ljava/lang/String;)Lwd/h;

    invoke-virtual {p1, v5}, Lwd/s;->c0(I)Lwd/h;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    const/4 p0, 0x0

    invoke-static {p1, p0}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :goto_3
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p1, p0}, LG5/q;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
