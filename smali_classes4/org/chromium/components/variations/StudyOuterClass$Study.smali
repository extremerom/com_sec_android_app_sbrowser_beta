.class public final Lorg/chromium/components/variations/StudyOuterClass$Study;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/variations/StudyOuterClass$StudyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/variations/StudyOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Study"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/variations/StudyOuterClass$Study$Consistency;,
        Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;,
        Lorg/chromium/components/variations/StudyOuterClass$Study$ExperimentOrBuilder;,
        Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;,
        Lorg/chromium/components/variations/StudyOuterClass$Study$ActivationType;,
        Lorg/chromium/components/variations/StudyOuterClass$Study$Builder;,
        Lorg/chromium/components/variations/StudyOuterClass$Study$FilterOrBuilder;,
        Lorg/chromium/components/variations/StudyOuterClass$Study$PolicyRestriction;,
        Lorg/chromium/components/variations/StudyOuterClass$Study$OptionalBool;,
        Lorg/chromium/components/variations/StudyOuterClass$Study$CpuArchitecture;,
        Lorg/chromium/components/variations/StudyOuterClass$Study$FormFactor;,
        Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;,
        Lorg/chromium/components/variations/StudyOuterClass$Study$Channel;,
        Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lorg/chromium/components/variations/StudyOuterClass$Study;",
        "Lorg/chromium/components/variations/StudyOuterClass$Study$Builder;",
        ">;",
        "Lorg/chromium/components/variations/StudyOuterClass$StudyOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACTIVATION_TYPE_FIELD_NUMBER:I = 0xc

.field public static final CONSISTENCY_FIELD_NUMBER:I = 0x7

.field public static final DEFAULT_EXPERIMENT_NAME_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Lorg/chromium/components/variations/StudyOuterClass$Study;

.field public static final EXPERIMENT_FIELD_NUMBER:I = 0x9

.field public static final EXPIRY_DATE_FIELD_NUMBER:I = 0x3

.field public static final FILTER_FIELD_NUMBER:I = 0xa

.field public static final LAYER_FIELD_NUMBER:I = 0x10

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/chromium/components/variations/StudyOuterClass$Study;",
            ">;"
        }
    .end annotation
.end field

.field public static final RANDOMIZATION_SEED_FIELD_NUMBER:I = 0xb


# instance fields
.field private defaultExperimentName_:Ljava/lang/String;

.field private experiment_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private name_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study;

    invoke-direct {v0}, Lorg/chromium/components/variations/StudyOuterClass$Study;-><init>()V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/StudyOuterClass$Study;

    const-class v1, Lorg/chromium/components/variations/StudyOuterClass$Study;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study;->name_:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study;->defaultExperimentName_:Ljava/lang/String;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study;->experiment_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static bridge synthetic f()Lorg/chromium/components/variations/StudyOuterClass$Study;
    .locals 1

    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/StudyOuterClass$Study;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    move-object v0, p0

    sget-object v1, Lorg/chromium/components/variations/StudyOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    int-to-byte v1, v2

    iput-byte v1, v0, Lorg/chromium/components/variations/StudyOuterClass$Study;->memoizedIsInitialized:B

    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    iget-byte v0, v0, Lorg/chromium/components/variations/StudyOuterClass$Study;->memoizedIsInitialized:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :pswitch_2
    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_2

    const-class v1, Lorg/chromium/components/variations/StudyOuterClass$Study;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lorg/chromium/components/variations/StudyOuterClass$Study;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/StudyOuterClass$Study;

    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/StudyOuterClass$Study;

    return-object v0

    :pswitch_4
    const-string v1, "bitField0_"

    const-string v2, "name_"

    const-string v3, "expiryDate_"

    const-string v4, "consistency_"

    invoke-static {}, Lorg/chromium/components/variations/StudyOuterClass$Study$Consistency;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v5

    const-string v6, "defaultExperimentName_"

    const-string v7, "experiment_"

    const-class v8, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;

    const-string v9, "filter_"

    const-string v10, "randomizationSeed_"

    const-string v11, "activationType_"

    invoke-static {}, Lorg/chromium/components/variations/StudyOuterClass$Study$ActivationType;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v12

    const-string v13, "layer_"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u0001\t\u0000\u0001\u0001\u0010\t\u0000\u0001\u0002\u0001\u1508\u0000\u0003\u1002\u0001\u0007\u180c\u0002\u0008\u1008\u0004\t\u041b\n\u1009\u0005\u000b\u100b\u0006\u000c\u180c\u0007\u0010\u1009\u0003"

    sget-object v2, Lorg/chromium/components/variations/StudyOuterClass$Study;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/StudyOuterClass$Study;

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_5
    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Builder;

    invoke-direct {v0, v2}, Lorg/chromium/components/variations/StudyOuterClass$Study$Builder;-><init>(I)V

    return-object v0

    :pswitch_6
    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study;

    invoke-direct {v0}, Lorg/chromium/components/variations/StudyOuterClass$Study;-><init>()V

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
