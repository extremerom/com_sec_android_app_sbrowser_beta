.class public abstract LDb/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LA7/h;

.field public static final b:LA7/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, LDb/b;->b:LDb/b;

    sget v1, LDb/a;->a:I

    new-instance v1, LA7/h;

    invoke-direct {v1, v0}, LA7/h;-><init>(Lsb/k;)V

    sput-object v1, LDb/c;->a:LA7/h;

    sget-object v0, LDb/b;->c:LDb/b;

    new-instance v1, LA7/h;

    invoke-direct {v1, v0}, LA7/h;-><init>(Lsb/k;)V

    sput-object v1, LDb/c;->b:LA7/h;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/Class;)LDb/C;
    .locals 3

    const-string v0, "jClass"

    invoke-static {p0, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LDb/c;->a:LA7/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, LA7/h;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v0, v0, LA7/h;->a:Ljava/lang/Object;

    check-cast v0, Lsb/k;

    invoke-interface {v0, p0}, Lsb/k;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :cond_1
    :goto_0
    const-string p0, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<T of kotlin.reflect.jvm.internal.CachesKt.getOrCreateKotlinClass>"

    invoke-static {v2, p0}, Ltb/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, LDb/C;

    return-object v2
.end method
