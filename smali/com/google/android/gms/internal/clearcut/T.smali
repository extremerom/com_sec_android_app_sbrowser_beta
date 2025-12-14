.class public final Lcom/google/android/gms/internal/clearcut/T;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/gms/internal/clearcut/T;


# instance fields
.field public final a:Lcom/google/android/gms/internal/clearcut/H;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/clearcut/T;

    invoke-direct {v0}, Lcom/google/android/gms/internal/clearcut/T;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/clearcut/T;->c:Lcom/google/android/gms/internal/clearcut/T;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/clearcut/T;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, "com.google.protobuf.AndroidProto3SchemaFactory"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_0
    if-gtz v3, :cond_0

    aget-object v4, v0, v2

    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/clearcut/H;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-object v4, v1

    :goto_1
    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-nez v4, :cond_1

    new-instance v4, Lcom/google/android/gms/internal/clearcut/H;

    invoke-direct {v4}, Lcom/google/android/gms/internal/clearcut/H;-><init>()V

    :cond_1
    iput-object v4, p0, Lcom/google/android/gms/internal/clearcut/T;->a:Lcom/google/android/gms/internal/clearcut/H;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/Y;
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/clearcut/x;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/T;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/clearcut/Y;

    if-nez v1, :cond_9

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/T;->a:Lcom/google/android/gms/internal/clearcut/H;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/clearcut/Z;->a:Ljava/lang/Class;

    const-class v1, Lcom/google/android/gms/internal/clearcut/w;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/clearcut/Z;->a:Ljava/lang/Class;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/H;->a:Lcom/google/android/gms/internal/clearcut/I;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/clearcut/I;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/clearcut/V;

    move-result-object v2

    iget-object p0, v2, Lcom/google/android/gms/internal/clearcut/V;->b:Lcom/google/android/gms/internal/clearcut/W;

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/W;->d:I

    const/4 v3, 0x2

    and-int/2addr p0, v3

    const-string v4, "Protobuf runtime is not correctly loaded."

    if-ne p0, v3, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    iget-object v1, v2, Lcom/google/android/gms/internal/clearcut/V;->a:Lcom/google/android/gms/internal/clearcut/w;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/clearcut/Z;->d:Lcom/google/android/gms/internal/clearcut/b0;

    sget-object v2, Lcom/google/android/gms/internal/clearcut/o;->a:Lcom/google/android/gms/internal/clearcut/n;

    new-instance v3, Lcom/google/android/gms/internal/clearcut/O;

    invoke-direct {v3, p0, v2, v1}, Lcom/google/android/gms/internal/clearcut/O;-><init>(Lcom/google/android/gms/internal/clearcut/b0;Lcom/google/android/gms/internal/clearcut/n;Lcom/google/android/gms/internal/clearcut/w;)V

    :goto_1
    move-object v1, v3

    goto :goto_4

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/clearcut/Z;->b:Lcom/google/android/gms/internal/clearcut/b0;

    sget-object v2, Lcom/google/android/gms/internal/clearcut/o;->b:Lcom/google/android/gms/internal/clearcut/n;

    if-eqz v2, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/clearcut/O;

    invoke-direct {v3, p0, v2, v1}, Lcom/google/android/gms/internal/clearcut/O;-><init>(Lcom/google/android/gms/internal/clearcut/b0;Lcom/google/android/gms/internal/clearcut/n;Lcom/google/android/gms/internal/clearcut/w;)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_6

    iget-object p0, v2, Lcom/google/android/gms/internal/clearcut/V;->b:Lcom/google/android/gms/internal/clearcut/W;

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/W;->d:I

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_5

    sget-object v3, Lcom/google/android/gms/internal/clearcut/Q;->b:Lcom/google/android/gms/internal/clearcut/P;

    sget-object v4, Lcom/google/android/gms/internal/clearcut/E;->b:Lcom/google/android/gms/internal/clearcut/G;

    sget-object v5, Lcom/google/android/gms/internal/clearcut/Z;->d:Lcom/google/android/gms/internal/clearcut/b0;

    sget-object v6, Lcom/google/android/gms/internal/clearcut/o;->a:Lcom/google/android/gms/internal/clearcut/n;

    sget-object v7, Lcom/google/android/gms/internal/clearcut/L;->b:Lcom/google/android/gms/internal/clearcut/K;

    :goto_2
    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/clearcut/N;->n(Lcom/google/android/gms/internal/clearcut/V;Lcom/google/android/gms/internal/clearcut/P;Lcom/google/android/gms/internal/clearcut/E;Lcom/google/android/gms/internal/clearcut/b0;Lcom/google/android/gms/internal/clearcut/n;Lcom/google/android/gms/internal/clearcut/K;)Lcom/google/android/gms/internal/clearcut/N;

    move-result-object p0

    move-object v1, p0

    goto :goto_4

    :cond_5
    sget-object v3, Lcom/google/android/gms/internal/clearcut/Q;->b:Lcom/google/android/gms/internal/clearcut/P;

    sget-object v4, Lcom/google/android/gms/internal/clearcut/E;->b:Lcom/google/android/gms/internal/clearcut/G;

    sget-object v5, Lcom/google/android/gms/internal/clearcut/Z;->d:Lcom/google/android/gms/internal/clearcut/b0;

    sget-object v7, Lcom/google/android/gms/internal/clearcut/L;->b:Lcom/google/android/gms/internal/clearcut/K;

    :goto_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    iget-object p0, v2, Lcom/google/android/gms/internal/clearcut/V;->b:Lcom/google/android/gms/internal/clearcut/W;

    iget p0, p0, Lcom/google/android/gms/internal/clearcut/W;->d:I

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_8

    sget-object v3, Lcom/google/android/gms/internal/clearcut/Q;->a:Lcom/google/android/gms/internal/clearcut/P;

    sget-object p0, Lcom/google/android/gms/internal/clearcut/E;->a:Lcom/google/android/gms/internal/clearcut/F;

    sget-object v5, Lcom/google/android/gms/internal/clearcut/Z;->b:Lcom/google/android/gms/internal/clearcut/b0;

    sget-object v6, Lcom/google/android/gms/internal/clearcut/o;->b:Lcom/google/android/gms/internal/clearcut/n;

    if-eqz v6, :cond_7

    sget-object v7, Lcom/google/android/gms/internal/clearcut/L;->a:Lcom/google/android/gms/internal/clearcut/K;

    move-object v4, p0

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    sget-object v3, Lcom/google/android/gms/internal/clearcut/Q;->a:Lcom/google/android/gms/internal/clearcut/P;

    sget-object v4, Lcom/google/android/gms/internal/clearcut/E;->a:Lcom/google/android/gms/internal/clearcut/F;

    sget-object v5, Lcom/google/android/gms/internal/clearcut/Z;->c:Lcom/google/android/gms/internal/clearcut/b0;

    sget-object v7, Lcom/google/android/gms/internal/clearcut/L;->a:Lcom/google/android/gms/internal/clearcut/K;

    goto :goto_3

    :goto_4
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/clearcut/Y;

    if-eqz p0, :cond_9

    move-object v1, p0

    :cond_9
    return-object v1

    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "messageType"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
