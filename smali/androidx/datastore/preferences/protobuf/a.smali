.class public abstract Landroidx/datastore/preferences/protobuf/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected memoizedHashCode:I


# virtual methods
.method public abstract a()I
.end method

.method public final b(Landroidx/datastore/preferences/protobuf/h0;)I
    .locals 3

    move-object v0, p0

    check-cast v0, Landroidx/datastore/preferences/protobuf/A;

    iget v1, v0, Landroidx/datastore/preferences/protobuf/A;->memoizedSerializedSize:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-interface {p1, p0}, Landroidx/datastore/preferences/protobuf/h0;->e(Landroidx/datastore/preferences/protobuf/a;)I

    move-result v1

    iput v1, v0, Landroidx/datastore/preferences/protobuf/A;->memoizedSerializedSize:I

    :cond_0
    return v1
.end method

.method public abstract c(Landroidx/datastore/preferences/protobuf/k;)V
.end method
