.class public final Lcom/google/protobuf/DescriptorProtos$FileOptions;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$FileOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FileOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode;,
        Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "Lcom/google/protobuf/DescriptorProtos$FileOptions;",
        "Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$FileOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final d:Lcom/google/protobuf/DescriptorProtos$FileOptions;

.field public static volatile e:Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;


# instance fields
.field public final b:Lcom/google/protobuf/Internal$ProtobufList;

.field public c:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->d:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    const-class v1, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->c:B

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->b:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;
    .locals 1

    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->d:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->d:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object p0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 25

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

    iput-byte v1, v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->c:B

    return-object v2

    :pswitch_1
    iget-byte v0, v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->c:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->e:Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    if-nez v0, :cond_2

    const-class v1, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->e:Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/protobuf/DescriptorProtos$FileOptions;->d:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->e:Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

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
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;->d:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    return-object v0

    :pswitch_4
    const-string v1, "bitField0_"

    const-string v2, "javaPackage_"

    const-string v3, "javaOuterClassname_"

    const-string v4, "optimizeFor_"

    sget-object v5, Lcom/google/protobuf/DescriptorProtos$FileOptions$OptimizeMode$OptimizeModeVerifier;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    const-string v6, "javaMultipleFiles_"

    const-string v7, "goPackage_"

    const-string v8, "ccGenericServices_"

    const-string v9, "javaGenericServices_"

    const-string v10, "pyGenericServices_"

    const-string v11, "javaGenerateEqualsAndHash_"

    const-string v12, "deprecated_"

    const-string v13, "javaStringCheckUtf8_"

    const-string v14, "ccEnableArenas_"

    const-string v15, "objcClassPrefix_"

    const-string v16, "csharpNamespace_"

    const-string v17, "swiftPrefix_"

    const-string v18, "phpClassPrefix_"

    const-string v19, "phpNamespace_"

    const-string v20, "phpMetadataNamespace_"

    const-string v21, "rubyPackage_"

    const-string v22, "features_"

    const-string v23, "uninterpretedOption_"

    const-class v24, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    filled-new-array/range {v1 .. v24}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u0001\u0015\u0000\u0001\u0001\u03e7\u0015\u0000\u0001\u0002\u0001\u1008\u0000\u0008\u1008\u0001\t\u180c\u0005\n\u1007\u0002\u000b\u1008\u0006\u0010\u1007\u0007\u0011\u1007\u0008\u0012\u1007\t\u0014\u1007\u0003\u0017\u1007\n\u001b\u1007\u0004\u001f\u1007\u000b$\u1008\u000c%\u1008\r\'\u1008\u000e(\u1008\u000f)\u1008\u0010,\u1008\u0011-\u1008\u00122\u1409\u0013\u03e7\u041b"

    sget-object v2, Lcom/google/protobuf/DescriptorProtos$FileOptions;->d:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions$Builder;

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FileOptions;->d:Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-direct {v0, v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FileOptions;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FileOptions;-><init>()V

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
