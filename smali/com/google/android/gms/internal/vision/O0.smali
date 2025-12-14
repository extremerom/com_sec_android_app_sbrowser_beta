.class public final Lcom/google/android/gms/internal/vision/O0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/google/android/gms/internal/vision/O0;


# instance fields
.field public final a:Lcom/google/android/gms/internal/vision/C0;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/vision/O0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/O0;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/O0;->c:Lcom/google/android/gms/internal/vision/O0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/O0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/google/android/gms/internal/vision/C0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/C0;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/vision/O0;->a:Lcom/google/android/gms/internal/vision/C0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/R0;
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/vision/n0;->a:Ljava/nio/charset/Charset;

    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/vision/O0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/vision/R0;

    if-nez v1, :cond_9

    iget-object p0, p0, Lcom/google/android/gms/internal/vision/O0;->a:Lcom/google/android/gms/internal/vision/C0;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/vision/S0;->a:Ljava/lang/Class;

    const-class v1, Lcom/google/android/gms/internal/vision/j0;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/vision/S0;->a:Ljava/lang/Class;

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
    iget-object p0, p0, Lcom/google/android/gms/internal/vision/C0;->a:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/vision/D0;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/vision/D0;->a(Ljava/lang/Class;)Lcom/google/android/gms/internal/vision/P0;

    move-result-object v2

    iget p0, v2, Lcom/google/android/gms/internal/vision/P0;->d:I

    const/4 v3, 0x2

    and-int/2addr p0, v3

    const-string v4, "Protobuf runtime is not correctly loaded."

    if-ne p0, v3, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    iget-object v1, v2, Lcom/google/android/gms/internal/vision/P0;->a:Lcom/google/android/gms/internal/vision/O;

    if-eqz p0, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/vision/S0;->d:Lcom/google/android/gms/internal/vision/T0;

    sget-object v2, Lcom/google/android/gms/internal/vision/a0;->a:Lcom/google/android/gms/internal/vision/Z;

    new-instance v3, Lcom/google/android/gms/internal/vision/J0;

    invoke-direct {v3, p0, v2, v1}, Lcom/google/android/gms/internal/vision/J0;-><init>(Lcom/google/android/gms/internal/vision/T0;Lcom/google/android/gms/internal/vision/Z;Lcom/google/android/gms/internal/vision/O;)V

    :goto_1
    move-object v1, v3

    goto :goto_3

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/vision/S0;->b:Lcom/google/android/gms/internal/vision/T0;

    sget-object v2, Lcom/google/android/gms/internal/vision/a0;->b:Lcom/google/android/gms/internal/vision/Z;

    if-eqz v2, :cond_3

    new-instance v3, Lcom/google/android/gms/internal/vision/J0;

    invoke-direct {v3, p0, v2, v1}, Lcom/google/android/gms/internal/vision/J0;-><init>(Lcom/google/android/gms/internal/vision/T0;Lcom/google/android/gms/internal/vision/Z;Lcom/google/android/gms/internal/vision/O;)V

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

    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/P0;->a()I

    move-result p0

    if-ne p0, v1, :cond_5

    sget-object v3, Lcom/google/android/gms/internal/vision/K0;->b:Lcom/google/android/gms/internal/vision/L0;

    sget-object v4, Lcom/google/android/gms/internal/vision/x0;->b:Lcom/google/android/gms/internal/vision/B0;

    sget-object v5, Lcom/google/android/gms/internal/vision/S0;->d:Lcom/google/android/gms/internal/vision/T0;

    sget-object v6, Lcom/google/android/gms/internal/vision/a0;->a:Lcom/google/android/gms/internal/vision/Z;

    sget-object v7, Lcom/google/android/gms/internal/vision/G0;->b:Lcom/google/android/gms/internal/vision/F0;

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/I0;->m(Lcom/google/android/gms/internal/vision/P0;Lcom/google/android/gms/internal/vision/L0;Lcom/google/android/gms/internal/vision/x0;Lcom/google/android/gms/internal/vision/T0;Lcom/google/android/gms/internal/vision/Z;Lcom/google/android/gms/internal/vision/F0;)Lcom/google/android/gms/internal/vision/I0;

    move-result-object p0

    :goto_2
    move-object v1, p0

    goto :goto_3

    :cond_5
    sget-object v3, Lcom/google/android/gms/internal/vision/K0;->b:Lcom/google/android/gms/internal/vision/L0;

    sget-object v4, Lcom/google/android/gms/internal/vision/x0;->b:Lcom/google/android/gms/internal/vision/B0;

    sget-object v5, Lcom/google/android/gms/internal/vision/S0;->d:Lcom/google/android/gms/internal/vision/T0;

    sget-object v7, Lcom/google/android/gms/internal/vision/G0;->b:Lcom/google/android/gms/internal/vision/F0;

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/I0;->m(Lcom/google/android/gms/internal/vision/P0;Lcom/google/android/gms/internal/vision/L0;Lcom/google/android/gms/internal/vision/x0;Lcom/google/android/gms/internal/vision/T0;Lcom/google/android/gms/internal/vision/Z;Lcom/google/android/gms/internal/vision/F0;)Lcom/google/android/gms/internal/vision/I0;

    move-result-object p0

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/vision/P0;->a()I

    move-result p0

    if-ne p0, v1, :cond_8

    sget-object v3, Lcom/google/android/gms/internal/vision/K0;->a:Lcom/google/android/gms/internal/vision/L0;

    sget-object p0, Lcom/google/android/gms/internal/vision/x0;->a:Lcom/google/android/gms/internal/vision/z0;

    sget-object v5, Lcom/google/android/gms/internal/vision/S0;->b:Lcom/google/android/gms/internal/vision/T0;

    sget-object v6, Lcom/google/android/gms/internal/vision/a0;->b:Lcom/google/android/gms/internal/vision/Z;

    if-eqz v6, :cond_7

    sget-object v7, Lcom/google/android/gms/internal/vision/G0;->a:Lcom/google/android/gms/internal/vision/F0;

    move-object v4, p0

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/I0;->m(Lcom/google/android/gms/internal/vision/P0;Lcom/google/android/gms/internal/vision/L0;Lcom/google/android/gms/internal/vision/x0;Lcom/google/android/gms/internal/vision/T0;Lcom/google/android/gms/internal/vision/Z;Lcom/google/android/gms/internal/vision/F0;)Lcom/google/android/gms/internal/vision/I0;

    move-result-object p0

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    sget-object v3, Lcom/google/android/gms/internal/vision/K0;->a:Lcom/google/android/gms/internal/vision/L0;

    sget-object v4, Lcom/google/android/gms/internal/vision/x0;->a:Lcom/google/android/gms/internal/vision/z0;

    sget-object v5, Lcom/google/android/gms/internal/vision/S0;->c:Lcom/google/android/gms/internal/vision/T0;

    sget-object v7, Lcom/google/android/gms/internal/vision/G0;->a:Lcom/google/android/gms/internal/vision/F0;

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Lcom/google/android/gms/internal/vision/I0;->m(Lcom/google/android/gms/internal/vision/P0;Lcom/google/android/gms/internal/vision/L0;Lcom/google/android/gms/internal/vision/x0;Lcom/google/android/gms/internal/vision/T0;Lcom/google/android/gms/internal/vision/Z;Lcom/google/android/gms/internal/vision/F0;)Lcom/google/android/gms/internal/vision/I0;

    move-result-object p0

    goto :goto_2

    :goto_3
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/vision/R0;

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
