.class public abstract Lcom/google/protobuf/AbstractParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Parser;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType::",
        "Lcom/google/protobuf/MessageLite;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Parser<",
        "TMessageType;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/ExtensionRegistryLite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->a()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/AbstractParser;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    return-void
.end method


# virtual methods
.method public parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TMessageType;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/CodedInputStream;->f(Ljava/io/InputStream;)Lcom/google/protobuf/CodedInputStream;

    move-result-object p1

    check-cast p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;->b:Lcom/google/protobuf/GeneratedMessageLite;

    sget-object v0, Lcom/google/protobuf/AbstractParser;->a:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-static {p0, p1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->parsePartialFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/protobuf/CodedInputStream;->a(I)V

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/google/protobuf/MessageLiteOrBuilder;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/AbstractMessageLite;->newUninitializedMessageException()Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public bridge synthetic parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/protobuf/AbstractParser;->parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/MessageLite;

    move-result-object p0

    return-object p0
.end method
