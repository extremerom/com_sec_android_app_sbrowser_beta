.class public final Landroidx/datastore/preferences/protobuf/v0;
.super Landroidx/datastore/preferences/protobuf/w0;
.source "SourceFile"


# virtual methods
.method public final c(JLjava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/w0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method public final d(JLjava/lang/Object;)B
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/w0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public final e(JLjava/lang/Object;)D
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/w0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public final f(JLjava/lang/Object;)F
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/w0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method public final k(Ljava/lang/Object;JZ)V
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/w0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    return-void
.end method

.method public final l(Ljava/lang/Object;JB)V
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/w0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    return-void
.end method

.method public final m(JLjava/lang/Object;D)V
    .locals 6

    iget-object v0, p0, Landroidx/datastore/preferences/protobuf/w0;->a:Lsun/misc/Unsafe;

    move-object v1, p3

    move-wide v2, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    return-void
.end method

.method public final n(FJLjava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroidx/datastore/preferences/protobuf/w0;->a:Lsun/misc/Unsafe;

    invoke-virtual {p0, p4, p2, p3, p1}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    return-void
.end method
