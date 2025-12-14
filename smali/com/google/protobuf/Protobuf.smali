.class final Lcom/google/protobuf/Protobuf;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/protobuf/CheckReturnValue;
.end annotation


# static fields
.field public static final c:Lcom/google/protobuf/Protobuf;


# instance fields
.field public final a:Lcom/google/protobuf/ManifestSchemaFactory;

.field public final b:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/Protobuf;

    invoke-direct {v0}, Lcom/google/protobuf/Protobuf;-><init>()V

    sput-object v0, Lcom/google/protobuf/Protobuf;->c:Lcom/google/protobuf/Protobuf;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/Protobuf;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/google/protobuf/ManifestSchemaFactory;

    invoke-direct {v0}, Lcom/google/protobuf/ManifestSchemaFactory;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/Protobuf;->a:Lcom/google/protobuf/ManifestSchemaFactory;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Lcom/google/protobuf/Schema;
    .locals 11

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/protobuf/Protobuf;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Schema;

    if-nez v1, :cond_b

    iget-object p0, p0, Lcom/google/protobuf/Protobuf;->a:Lcom/google/protobuf/ManifestSchemaFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/protobuf/SchemaUtil;->a:Ljava/lang/Class;

    const-class v1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/protobuf/SchemaUtil;->a:Ljava/lang/Class;

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
    iget-object p0, p0, Lcom/google/protobuf/ManifestSchemaFactory;->a:Lcom/google/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;->a(Ljava/lang/Class;)Lcom/google/protobuf/MessageInfo;

    move-result-object p0

    invoke-interface {p0}, Lcom/google/protobuf/MessageInfo;->a()Z

    move-result v2

    const-string v3, "Protobuf runtime is not correctly loaded."

    if-eqz v2, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/google/protobuf/SchemaUtil;->c:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    sget-object v2, Lcom/google/protobuf/ExtensionSchemas;->a:Lcom/google/protobuf/ExtensionSchemaLite;

    invoke-interface {p0}, Lcom/google/protobuf/MessageInfo;->b()Lcom/google/protobuf/MessageLite;

    move-result-object p0

    new-instance v3, Lcom/google/protobuf/MessageSetSchema;

    invoke-direct {v3, v1, v2, p0}, Lcom/google/protobuf/MessageSetSchema;-><init>(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MessageLite;)V

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/google/protobuf/SchemaUtil;->b:Lcom/google/protobuf/UnknownFieldSchema;

    sget-object v2, Lcom/google/protobuf/ExtensionSchemas;->b:Lcom/google/protobuf/ExtensionSchema;

    if-eqz v2, :cond_3

    invoke-interface {p0}, Lcom/google/protobuf/MessageInfo;->b()Lcom/google/protobuf/MessageLite;

    move-result-object p0

    new-instance v3, Lcom/google/protobuf/MessageSetSchema;

    invoke-direct {v3, v1, v2, p0}, Lcom/google/protobuf/MessageSetSchema;-><init>(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MessageLite;)V

    :goto_1
    move-object v1, v3

    goto/16 :goto_5

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    sget-object v6, Lcom/google/protobuf/NewInstanceSchemas;->b:Lcom/google/protobuf/NewInstanceSchemaLite;

    sget-object v7, Lcom/google/protobuf/ListFieldSchemas;->b:Lcom/google/protobuf/ListFieldSchemaLite;

    sget-object v8, Lcom/google/protobuf/SchemaUtil;->c:Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    sget-object v1, Lcom/google/protobuf/ManifestSchemaFactory$2;->a:[I

    invoke-interface {p0}, Lcom/google/protobuf/MessageInfo;->c()Lcom/google/protobuf/ProtoSyntax;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_5

    sget-object v1, Lcom/google/protobuf/ExtensionSchemas;->a:Lcom/google/protobuf/ExtensionSchemaLite;

    move-object v9, v1

    goto :goto_2

    :cond_5
    move-object v9, v4

    :goto_2
    sget-object v10, Lcom/google/protobuf/MapFieldSchemas;->b:Lcom/google/protobuf/MapFieldSchemaLite;

    sget-object v1, Lcom/google/protobuf/MessageSchema;->p:[I

    instance-of v1, p0, Lcom/google/protobuf/RawMessageInfo;

    if-eqz v1, :cond_6

    move-object v5, p0

    check-cast v5, Lcom/google/protobuf/RawMessageInfo;

    invoke-static/range {v5 .. v10}, Lcom/google/protobuf/MessageSchema;->C(Lcom/google/protobuf/RawMessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/MessageSchema;

    move-result-object p0

    goto :goto_4

    :cond_6
    check-cast p0, Lcom/google/protobuf/StructuralMessageInfo;

    throw v4

    :cond_7
    sget-object v6, Lcom/google/protobuf/NewInstanceSchemas;->a:Lcom/google/protobuf/NewInstanceSchema;

    sget-object v7, Lcom/google/protobuf/ListFieldSchemas;->a:Lcom/google/protobuf/ListFieldSchema;

    sget-object v8, Lcom/google/protobuf/SchemaUtil;->b:Lcom/google/protobuf/UnknownFieldSchema;

    sget-object v1, Lcom/google/protobuf/ManifestSchemaFactory$2;->a:[I

    invoke-interface {p0}, Lcom/google/protobuf/MessageInfo;->c()Lcom/google/protobuf/ProtoSyntax;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v2, :cond_9

    sget-object v1, Lcom/google/protobuf/ExtensionSchemas;->b:Lcom/google/protobuf/ExtensionSchema;

    if-eqz v1, :cond_8

    move-object v9, v1

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    move-object v9, v4

    :goto_3
    sget-object v10, Lcom/google/protobuf/MapFieldSchemas;->a:Lcom/google/protobuf/MapFieldSchema;

    sget-object v1, Lcom/google/protobuf/MessageSchema;->p:[I

    instance-of v1, p0, Lcom/google/protobuf/RawMessageInfo;

    if-eqz v1, :cond_a

    move-object v5, p0

    check-cast v5, Lcom/google/protobuf/RawMessageInfo;

    invoke-static/range {v5 .. v10}, Lcom/google/protobuf/MessageSchema;->C(Lcom/google/protobuf/RawMessageInfo;Lcom/google/protobuf/NewInstanceSchema;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/MessageSchema;

    move-result-object p0

    :goto_4
    move-object v1, p0

    :goto_5
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/Schema;

    if-eqz p0, :cond_b

    move-object v1, p0

    goto :goto_6

    :cond_a
    check-cast p0, Lcom/google/protobuf/StructuralMessageInfo;

    throw v4

    :cond_b
    :goto_6
    return-object v1
.end method

.method public final b(Ljava/lang/Object;)Lcom/google/protobuf/Schema;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/Protobuf;->a(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object p0

    return-object p0
.end method
