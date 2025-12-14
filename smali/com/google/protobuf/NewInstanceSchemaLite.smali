.class final Lcom/google/protobuf/NewInstanceSchemaLite;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/NewInstanceSchema;


# annotations
.annotation runtime Lcom/google/protobuf/CheckReturnValue;
.end annotation


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/protobuf/GeneratedMessageLite;
    .locals 0

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMutableInstance()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    return-object p0
.end method
