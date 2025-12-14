.class public interface abstract Lcom/google/protobuf/Internal$FloatList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$ProtobufList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Internal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FloatList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$ProtobufList<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract H(FI)F
.end method

.method public abstract a(I)Lcom/google/protobuf/Internal$FloatList;
.end method

.method public bridge synthetic a(I)Lcom/google/protobuf/Internal$ProtobufList;
    .locals 0

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$FloatList;->a(I)Lcom/google/protobuf/Internal$FloatList;

    move-result-object p0

    return-object p0
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract q(F)V
.end method
