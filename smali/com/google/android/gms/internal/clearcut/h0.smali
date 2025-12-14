.class public abstract Lcom/google/android/gms/internal/clearcut/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lsun/misc/Unsafe;


# direct methods
.method public constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/clearcut/h0;->a:Lsun/misc/Unsafe;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Field;)J
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/h0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide p0

    return-wide p0
.end method

.method public abstract b(FJLjava/lang/Object;)V
.end method

.method public final c(JILjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/h0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p4, p1, p2, p3}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    return-void
.end method

.method public abstract d(JLjava/lang/Object;D)V
.end method

.method public final e(Ljava/lang/Object;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/clearcut/h0;->a:Lsun/misc/Unsafe;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public abstract f(Ljava/lang/Object;JZ)V
.end method

.method public final g(JLjava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/h0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public final h(JLjava/lang/Object;)J
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/clearcut/h0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public abstract i(JLjava/lang/Object;)Z
.end method

.method public abstract j(JLjava/lang/Object;)F
.end method

.method public abstract k(JLjava/lang/Object;)D
.end method

.method public abstract l(JLjava/lang/Object;)B
.end method
