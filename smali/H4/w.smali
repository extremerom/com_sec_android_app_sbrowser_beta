.class public final LH4/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile e:LH4/m;


# instance fields
.field public final a:LQ4/a;

.field public final b:LQ4/a;

.field public final c:LM4/c;

.field public final d:LN4/k;


# direct methods
.method public constructor <init>(LQ4/a;LQ4/a;LM4/c;LN4/k;LN4/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH4/w;->a:LQ4/a;

    iput-object p2, p0, LH4/w;->b:LQ4/a;

    iput-object p3, p0, LH4/w;->c:LM4/c;

    iput-object p4, p0, LH4/w;->d:LN4/k;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, LG6/e;

    const/4 p1, 0x5

    invoke-direct {p0, p1, p5}, LG6/e;-><init>(ILjava/lang/Object;)V

    iget-object p1, p5, LN4/l;->a:Ljava/util/concurrent/Executor;

    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a()LH4/w;
    .locals 2

    sget-object v0, LH4/w;->e:LH4/m;

    if-eqz v0, :cond_0

    iget-object v0, v0, LH4/m;->f:Lcb/a;

    invoke-interface {v0}, Lcb/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LH4/w;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    sget-object v0, LH4/w;->e:LH4/m;

    if-nez v0, :cond_1

    const-class v0, LH4/w;

    monitor-enter v0

    :try_start_0
    sget-object v1, LH4/w;->e:LH4/m;

    if-nez v1, :cond_0

    new-instance v1, LH4/l;

    invoke-direct {v1}, LH4/l;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v1, LH4/l;->b:Landroid/content/Context;

    invoke-virtual {v1}, LH4/l;->d()LH4/m;

    move-result-object p0

    sput-object p0, LH4/w;->e:LH4/m;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-void
.end method


# virtual methods
.method public final c(LF4/a;)LH4/u;
    .locals 6

    new-instance v0, LH4/u;

    if-eqz p1, :cond_0

    sget-object v1, LF4/a;->d:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, LE4/b;

    const-string v2, "proto"

    invoke-direct {v1, v2}, LE4/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    :goto_0
    invoke-static {}, LH4/k;->a()LH4/j;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "cct"

    iput-object v3, v2, LH4/j;->a:Ljava/lang/String;

    iget-object v3, p1, LF4/a;->a:Ljava/lang/String;

    iget-object p1, p1, LF4/a;->b:Ljava/lang/String;

    if-nez p1, :cond_1

    if-nez v3, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    const-string v4, "1$"

    const-string v5, "\\"

    invoke-static {v4, v3, v5, p1}, Lw2/j;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    :goto_1
    iput-object p1, v2, LH4/j;->b:[B

    invoke-virtual {v2}, LH4/j;->a()LH4/k;

    move-result-object p1

    invoke-direct {v0, v1, p1, p0}, LH4/u;-><init>(Ljava/util/Set;LH4/k;LH4/w;)V

    return-object v0
.end method
