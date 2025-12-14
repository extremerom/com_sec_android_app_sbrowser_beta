.class public final Lcom/google/protobuf/DescriptorProtos$FieldOptions;
.super Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/DescriptorProtos$FieldOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/DescriptorProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FieldOptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/DescriptorProtos$FieldOptions$FeatureSupport;,
        Lcom/google/protobuf/DescriptorProtos$FieldOptions$EditionDefault;,
        Lcom/google/protobuf/DescriptorProtos$FieldOptions$OptionTargetType;,
        Lcom/google/protobuf/DescriptorProtos$FieldOptions$OptionRetention;,
        Lcom/google/protobuf/DescriptorProtos$FieldOptions$JSType;,
        Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType;,
        Lcom/google/protobuf/DescriptorProtos$FieldOptions$EditionDefaultOrBuilder;,
        Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;,
        Lcom/google/protobuf/DescriptorProtos$FieldOptions$FeatureSupportOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "Lcom/google/protobuf/DescriptorProtos$FieldOptions;",
        "Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;",
        ">;",
        "Lcom/google/protobuf/DescriptorProtos$FieldOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final f:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

.field public static volatile g:Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;


# instance fields
.field public final b:Lcom/google/protobuf/Internal$IntList;

.field public final c:Lcom/google/protobuf/Internal$ProtobufList;

.field public final d:Lcom/google/protobuf/Internal$ProtobufList;

.field public e:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;-><init>()V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->f:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    const-class v1, Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->e:B

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->b:Lcom/google/protobuf/Internal$IntList;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->c:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->d:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static newBuilder()Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;
    .locals 1

    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->f:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/google/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->f:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    return-object p0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 22

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

    iput-byte v1, v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->e:B

    return-object v2

    :pswitch_1
    iget-byte v0, v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->e:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->g:Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    if-nez v0, :cond_2

    const-class v1, Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->g:Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->f:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->g:Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

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
    sget-object v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->f:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    return-object v0

    :pswitch_4
    const-string v1, "bitField0_"

    const-string v2, "ctype_"

    sget-object v3, Lcom/google/protobuf/DescriptorProtos$FieldOptions$CType$CTypeVerifier;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    const-string v4, "packed_"

    const-string v5, "deprecated_"

    const-string v6, "lazy_"

    const-string v7, "jstype_"

    sget-object v8, Lcom/google/protobuf/DescriptorProtos$FieldOptions$JSType$JSTypeVerifier;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    const-string v9, "weak_"

    const-string v10, "unverifiedLazy_"

    const-string v11, "debugRedact_"

    const-string v12, "retention_"

    sget-object v13, Lcom/google/protobuf/DescriptorProtos$FieldOptions$OptionRetention$OptionRetentionVerifier;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    const-string v14, "targets_"

    sget-object v15, Lcom/google/protobuf/DescriptorProtos$FieldOptions$OptionTargetType$OptionTargetTypeVerifier;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    const-string v16, "editionDefaults_"

    const-class v17, Lcom/google/protobuf/DescriptorProtos$FieldOptions$EditionDefault;

    const-string v18, "features_"

    const-string v19, "featureSupport_"

    const-string v20, "uninterpretedOption_"

    const-class v21, Lcom/google/protobuf/DescriptorProtos$UninterpretedOption;

    filled-new-array/range {v1 .. v21}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u0001\u000e\u0000\u0001\u0001\u03e7\u000e\u0000\u0003\u0002\u0001\u180c\u0000\u0002\u1007\u0001\u0003\u1007\u0005\u0005\u1007\u0003\u0006\u180c\u0002\n\u1007\u0006\u000f\u1007\u0004\u0010\u1007\u0007\u0011\u180c\u0008\u0013\u081e\u0014\u001b\u0015\u1409\t\u0016\u1009\n\u03e7\u041b"

    sget-object v2, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->f:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions$Builder;

    sget-object v1, Lcom/google/protobuf/DescriptorProtos$FieldOptions;->f:Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-direct {v0, v1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-object v0

    :pswitch_6
    new-instance v0, Lcom/google/protobuf/DescriptorProtos$FieldOptions;

    invoke-direct {v0}, Lcom/google/protobuf/DescriptorProtos$FieldOptions;-><init>()V

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
