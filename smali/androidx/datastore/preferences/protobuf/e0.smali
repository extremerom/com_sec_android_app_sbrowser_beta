.class public final Landroidx/datastore/preferences/protobuf/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Landroidx/datastore/preferences/protobuf/e0;


# instance fields
.field public final a:Landroidx/datastore/preferences/protobuf/O;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/datastore/preferences/protobuf/e0;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/e0;-><init>()V

    sput-object v0, Landroidx/datastore/preferences/protobuf/e0;->c:Landroidx/datastore/preferences/protobuf/e0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/e0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Landroidx/datastore/preferences/protobuf/O;

    invoke-direct {v0}, Landroidx/datastore/preferences/protobuf/O;-><init>()V

    iput-object v0, p0, Landroidx/datastore/preferences/protobuf/e0;->a:Landroidx/datastore/preferences/protobuf/O;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/h0;
    .locals 8

    const-string v0, "messageType"

    invoke-static {p1, v0}, Landroidx/datastore/preferences/protobuf/D;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/e0;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/datastore/preferences/protobuf/h0;

    if-nez v1, :cond_9

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/e0;->a:Landroidx/datastore/preferences/protobuf/O;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/datastore/preferences/protobuf/i0;->a:Ljava/lang/Class;

    const-class v1, Landroidx/datastore/preferences/protobuf/A;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Landroidx/datastore/preferences/protobuf/i0;->a:Ljava/lang/Class;

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
    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/O;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/datastore/preferences/protobuf/N;

    invoke-virtual {p0, p1}, Landroidx/datastore/preferences/protobuf/N;->a(Ljava/lang/Class;)Landroidx/datastore/preferences/protobuf/g0;

    move-result-object v2

    iget p0, v2, Landroidx/datastore/preferences/protobuf/g0;->d:I

    const/4 v3, 0x2

    and-int/2addr p0, v3

    const-string v4, "Protobuf runtime is not correctly loaded."

    if-ne p0, v3, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    iget-object v1, v2, Landroidx/datastore/preferences/protobuf/g0;->a:Landroidx/datastore/preferences/protobuf/A;

    if-eqz p0, :cond_2

    sget-object p0, Landroidx/datastore/preferences/protobuf/i0;->d:Landroidx/datastore/preferences/protobuf/p0;

    sget-object v2, Landroidx/datastore/preferences/protobuf/p;->a:Landroidx/datastore/preferences/protobuf/o;

    new-instance v3, Landroidx/datastore/preferences/protobuf/Y;

    invoke-direct {v3, p0, v2, v1}, Landroidx/datastore/preferences/protobuf/Y;-><init>(Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/A;)V

    :goto_1
    move-object v1, v3

    goto :goto_3

    :cond_2
    sget-object p0, Landroidx/datastore/preferences/protobuf/i0;->b:Landroidx/datastore/preferences/protobuf/p0;

    sget-object v2, Landroidx/datastore/preferences/protobuf/p;->b:Landroidx/datastore/preferences/protobuf/o;

    if-eqz v2, :cond_3

    new-instance v3, Landroidx/datastore/preferences/protobuf/Y;

    invoke-direct {v3, p0, v2, v1}, Landroidx/datastore/preferences/protobuf/Y;-><init>(Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/A;)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/g0;->d()Landroidx/datastore/preferences/protobuf/d0;

    move-result-object p0

    sget-object v1, Landroidx/datastore/preferences/protobuf/d0;->PROTO2:Landroidx/datastore/preferences/protobuf/d0;

    if-ne p0, v1, :cond_5

    sget-object v3, Landroidx/datastore/preferences/protobuf/a0;->b:Landroidx/datastore/preferences/protobuf/Z;

    sget-object v4, Landroidx/datastore/preferences/protobuf/L;->b:Landroidx/datastore/preferences/protobuf/K;

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->d:Landroidx/datastore/preferences/protobuf/p0;

    sget-object v6, Landroidx/datastore/preferences/protobuf/p;->a:Landroidx/datastore/preferences/protobuf/o;

    sget-object v7, Landroidx/datastore/preferences/protobuf/U;->b:Landroidx/datastore/preferences/protobuf/T;

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/X;->x(Landroidx/datastore/preferences/protobuf/g0;Landroidx/datastore/preferences/protobuf/Z;Landroidx/datastore/preferences/protobuf/L;Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/T;)Landroidx/datastore/preferences/protobuf/X;

    move-result-object p0

    goto :goto_2

    :cond_5
    sget-object v3, Landroidx/datastore/preferences/protobuf/a0;->b:Landroidx/datastore/preferences/protobuf/Z;

    sget-object v4, Landroidx/datastore/preferences/protobuf/L;->b:Landroidx/datastore/preferences/protobuf/K;

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->d:Landroidx/datastore/preferences/protobuf/p0;

    sget-object v7, Landroidx/datastore/preferences/protobuf/U;->b:Landroidx/datastore/preferences/protobuf/T;

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/X;->x(Landroidx/datastore/preferences/protobuf/g0;Landroidx/datastore/preferences/protobuf/Z;Landroidx/datastore/preferences/protobuf/L;Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/T;)Landroidx/datastore/preferences/protobuf/X;

    move-result-object p0

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Landroidx/datastore/preferences/protobuf/g0;->d()Landroidx/datastore/preferences/protobuf/d0;

    move-result-object p0

    sget-object v1, Landroidx/datastore/preferences/protobuf/d0;->PROTO2:Landroidx/datastore/preferences/protobuf/d0;

    if-ne p0, v1, :cond_8

    sget-object v3, Landroidx/datastore/preferences/protobuf/a0;->a:Landroidx/datastore/preferences/protobuf/Z;

    sget-object p0, Landroidx/datastore/preferences/protobuf/L;->a:Landroidx/datastore/preferences/protobuf/J;

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->b:Landroidx/datastore/preferences/protobuf/p0;

    sget-object v6, Landroidx/datastore/preferences/protobuf/p;->b:Landroidx/datastore/preferences/protobuf/o;

    if-eqz v6, :cond_7

    sget-object v7, Landroidx/datastore/preferences/protobuf/U;->a:Landroidx/datastore/preferences/protobuf/T;

    move-object v4, p0

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/X;->x(Landroidx/datastore/preferences/protobuf/g0;Landroidx/datastore/preferences/protobuf/Z;Landroidx/datastore/preferences/protobuf/L;Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/T;)Landroidx/datastore/preferences/protobuf/X;

    move-result-object p0

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    sget-object v3, Landroidx/datastore/preferences/protobuf/a0;->a:Landroidx/datastore/preferences/protobuf/Z;

    sget-object v4, Landroidx/datastore/preferences/protobuf/L;->a:Landroidx/datastore/preferences/protobuf/J;

    sget-object v5, Landroidx/datastore/preferences/protobuf/i0;->c:Landroidx/datastore/preferences/protobuf/p0;

    sget-object v7, Landroidx/datastore/preferences/protobuf/U;->a:Landroidx/datastore/preferences/protobuf/T;

    const/4 v6, 0x0

    invoke-static/range {v2 .. v7}, Landroidx/datastore/preferences/protobuf/X;->x(Landroidx/datastore/preferences/protobuf/g0;Landroidx/datastore/preferences/protobuf/Z;Landroidx/datastore/preferences/protobuf/L;Landroidx/datastore/preferences/protobuf/p0;Landroidx/datastore/preferences/protobuf/o;Landroidx/datastore/preferences/protobuf/T;)Landroidx/datastore/preferences/protobuf/X;

    move-result-object p0

    :goto_2
    move-object v1, p0

    :goto_3
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/datastore/preferences/protobuf/h0;

    if-eqz p0, :cond_9

    move-object v1, p0

    :cond_9
    return-object v1
.end method
