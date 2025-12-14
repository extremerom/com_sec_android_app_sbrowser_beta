.class public final synthetic LN7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/components/d;


# static fields
.field public static final synthetic b:LN7/a;

.field public static final synthetic c:LN7/a;

.field public static final synthetic d:LN7/a;

.field public static final synthetic e:LN7/a;

.field public static final synthetic f:LN7/a;

.field public static final synthetic g:LN7/a;

.field public static final synthetic h:LN7/a;

.field public static final synthetic i:LN7/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LN7/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LN7/a;-><init>(I)V

    sput-object v0, LN7/a;->b:LN7/a;

    new-instance v0, LN7/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LN7/a;-><init>(I)V

    sput-object v0, LN7/a;->c:LN7/a;

    new-instance v0, LN7/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LN7/a;-><init>(I)V

    sput-object v0, LN7/a;->d:LN7/a;

    new-instance v0, LN7/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LN7/a;-><init>(I)V

    sput-object v0, LN7/a;->e:LN7/a;

    new-instance v0, LN7/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LN7/a;-><init>(I)V

    sput-object v0, LN7/a;->f:LN7/a;

    new-instance v0, LN7/a;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LN7/a;-><init>(I)V

    sput-object v0, LN7/a;->g:LN7/a;

    new-instance v0, LN7/a;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LN7/a;-><init>(I)V

    sput-object v0, LN7/a;->h:LN7/a;

    new-instance v0, LN7/a;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, LN7/a;-><init>(I)V

    sput-object v0, LN7/a;->i:LN7/a;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LN7/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(LA7/c;)Ljava/lang/Object;
    .locals 4

    iget p0, p0, LN7/a;->a:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, LP7/b;

    const-class v0, LO7/a;

    invoke-virtual {p1, v0}, LA7/c;->g(Ljava/lang/Class;)LC7/a;

    move-result-object p1

    invoke-direct {p0, p1}, LP7/b;-><init>(LC7/a;)V

    return-object p0

    :pswitch_0
    const-class p0, LQ7/f;

    new-instance v0, LO7/a;

    invoke-virtual {p1, p0}, LA7/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LQ7/f;

    const-class p0, LE5/t;

    monitor-enter p0

    const/4 p1, 0x1

    int-to-byte p1, p1

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :try_start_0
    new-instance p1, LE5/o;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const-class v1, LE5/t;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, LE5/t;->a:LE5/s;

    if-nez v2, :cond_0

    new-instance v2, LE5/s;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, LE5/s;-><init>(I)V

    sput-object v2, LE5/t;->a:LE5/s;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v2, LE5/t;->a:LE5/s;

    invoke-virtual {v2, p1}, LF3/f;->H0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LE5/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-object v0

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_2

    const-string v1, " enableFirelog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    const-string p1, " firelogEventType"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Missing required properties:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_2

    :pswitch_1
    new-instance p0, LQ7/b;

    const-class v0, LQ7/a;

    invoke-virtual {p1, v0}, LA7/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LQ7/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, LQ7/a;

    invoke-direct {p0}, LQ7/a;-><init>()V

    iget-object p1, p0, LQ7/a;->a:Ljava/lang/ref/ReferenceQueue;

    new-instance v0, LQ7/j;

    iget-object v1, p0, LQ7/a;->b:Ljava/util/Set;

    invoke-direct {v0, p0, p1, v1}, LQ7/j;-><init>(LQ7/a;Ljava/lang/ref/ReferenceQueue;Ljava/util/Set;)V

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/common/util/concurrent/v;

    const/4 v2, 0x4

    invoke-direct {v0, v2, p1, v1}, Lcom/google/common/util/concurrent/v;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p1, Ljava/lang/Thread;

    const-string v1, "MlKitCleaner"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-object p0

    :pswitch_3
    new-instance p0, LQ7/d;

    const-class v0, LQ7/g;

    invoke-virtual {p1, v0}, LA7/c;->g(Ljava/lang/Class;)LC7/a;

    move-result-object p1

    invoke-direct {p0, p1}, LQ7/d;-><init>(LC7/a;)V

    return-object p0

    :pswitch_4
    const-class p0, LP7/b;

    invoke-static {p0}, Lcom/google/firebase/components/r;->a(Ljava/lang/Class;)Lcom/google/firebase/components/r;

    move-result-object p0

    invoke-virtual {p1, p0}, LA7/c;->d(Lcom/google/firebase/components/r;)Ljava/util/Set;

    move-result-object p0

    new-instance p1, LP7/c;

    invoke-direct {p1, p0}, LP7/c;-><init>(Ljava/util/Set;)V

    return-object p1

    :pswitch_5
    new-instance p0, LQ7/g;

    invoke-direct {p0}, LQ7/g;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, LR7/a;

    const-class v0, LQ7/f;

    invoke-virtual {p1, v0}, LA7/c;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LQ7/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
