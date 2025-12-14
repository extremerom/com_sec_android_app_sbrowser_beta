.class public final Lcom/google/protobuf/DescriptorProtos$FeatureSet;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$FeatureSetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeatureSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$FeatureSet$EnforceNamingStyle;,
        Lcom/google/protobuf/DescriptorProtos$FeatureSet$JsonFormat;,
        Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding;,
        Lcom/google/protobuf/DescriptorProtos$FeatureSet$Utf8Validation;,
        Lcom/google/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding;,
        Lcom/google/protobuf/DescriptorProtos$FeatureSet$EnumType;,
        Lcom/google/protobuf/DescriptorProtos$FeatureSet$FieldPresence;,
        Lcom/google/protobuf/DescriptorProtos$FeatureSet$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "Lcom/google/protobuf/DescriptorProtos$FeatureSet;",
        "Lcom/google/protobuf/DescriptorProtos$FeatureSet$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$FeatureSetOrBuilder;"
    }
.end annotation


# static fields
.field public static final c:Lcom/google/protobuf/DescriptorProtos$FeatureSet;

.field public static volatile d:Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;


# instance fields
.field public b:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FeatureSet;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet;->c:Lcom/google/protobuf/DescriptorProtos$FeatureSet;

    const-class v1, Lcom/google/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$FeatureSet;->b:B

    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$FeatureSet$Builder;
    .locals 1

    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet;->c:Lcom/google/protobuf/DescriptorProtos$FeatureSet;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$Builder;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$FeatureSet;
    .locals 1

    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet;->c:Lcom/google/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$FeatureSet;

    return-object p0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$1;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    throw v2

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet;->b:B

    return-object v2

    :pswitch_1
    iget-byte v0, v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet;->b:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet;->d:Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    if-nez v0, :cond_2

    const-class v1, Lcom/google/protobuf/DescriptorProtos$FeatureSet;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet;->d:Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/protobuf/DescriptorProtos$FeatureSet;->c:Lcom/google/protobuf/DescriptorProtos$FeatureSet;

    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet;->d:Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_3
    return-object v0

    :pswitch_3
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet;->c:Lcom/google/protobuf/DescriptorProtos$FeatureSet;

    return-object v0

    :pswitch_4
    const-string v1, "bitField0_"

    const-string v2, "fieldPresence_"

    sget-object v3, Lcom/google/protobuf/DescriptorProtos$FeatureSet$FieldPresence$FieldPresenceVerifier;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    const-string v4, "enumType_"

    sget-object v5, Lcom/google/protobuf/DescriptorProtos$FeatureSet$EnumType$EnumTypeVerifier;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    const-string v6, "repeatedFieldEncoding_"

    sget-object v7, Lcom/google/protobuf/DescriptorProtos$FeatureSet$RepeatedFieldEncoding$RepeatedFieldEncodingVerifier;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    const-string v8, "utf8Validation_"

    sget-object v9, Lcom/google/protobuf/DescriptorProtos$FeatureSet$Utf8Validation$Utf8ValidationVerifier;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    const-string v10, "messageEncoding_"

    sget-object v11, Lcom/google/protobuf/DescriptorProtos$FeatureSet$MessageEncoding$MessageEncodingVerifier;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    const-string v12, "jsonFormat_"

    sget-object v13, Lcom/google/protobuf/DescriptorProtos$FeatureSet$JsonFormat$JsonFormatVerifier;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    const-string v14, "enforceNamingStyle_"

    sget-object v15, Lcom/google/protobuf/DescriptorProtos$FeatureSet$EnforceNamingStyle$EnforceNamingStyleVerifier;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    filled-new-array/range {v1 .. v15}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u180c\u0001\u0003\u180c\u0002\u0004\u180c\u0003\u0005\u180c\u0004\u0006\u180c\u0005\u0007\u180c\u0006"

    sget-object v2, Lcom/google/protobuf/DescriptorProtos$FeatureSet;->c:Lcom/google/protobuf/DescriptorProtos$FeatureSet;

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet$Builder;

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FeatureSet;->c:Lcom/google/protobuf/DescriptorProtos$FeatureSet;

    invoke-direct {v0, v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FeatureSet;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FeatureSet;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
