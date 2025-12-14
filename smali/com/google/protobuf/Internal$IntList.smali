.class public interface abstract Lcom/google/protobuf/Internal$IntList;
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
    name = "IntList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$ProtobufList<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract a(I)Lcom/google/protobuf/Internal$IntList;
.end method

.method public bridge synthetic a(I)Lcom/google/protobuf/Internal$ProtobufList;
    .locals 0

    invoke-interface {p0, p1}, Lcom/google/protobuf/Internal$IntList;->a(I)Lcom/google/protobuf/Internal$IntList;

    move-result-object p0

    return-object p0
.end method
