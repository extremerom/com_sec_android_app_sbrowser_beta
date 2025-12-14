.class public final Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/variations/StudyOuterClass$Study$ExperimentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/variations/StudyOuterClass$Study;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Experiment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$FeatureAssociation;,
        Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Param;,
        Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$ParamOrBuilder;,
        Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;,
        Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$OverrideUIString;,
        Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$OverrideUIStringOrBuilder;,
        Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Builder;,
        Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$FeatureAssociationOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;",
        "Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Builder;",
        ">;",
        "Lorg/chromium/components/variations/StudyOuterClass$Study$ExperimentOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;

.field public static final FEATURE_ASSOCIATION_FIELD_NUMBER:I = 0xc

.field public static final FORCING_FLAG_FIELD_NUMBER:I = 0x5

.field public static final GOOGLE_APP_EXPERIMENT_ID_FIELD_NUMBER:I = 0xf

.field public static final GOOGLE_WEB_EXPERIMENT_ID_FIELD_NUMBER:I = 0x3

.field public static final GOOGLE_WEB_TRIGGER_EXPERIMENT_ID_FIELD_NUMBER:I = 0x8

.field public static final GOOGLE_WEB_VISIBILITY_FIELD_NUMBER:I = 0x10

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field public static final OVERRIDE_UI_STRING_FIELD_NUMBER:I = 0x9

.field public static final PARAM_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROBABILITY_WEIGHT_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x7


# instance fields
.field private forcingFlag_:Ljava/lang/String;

.field private memoizedIsInitialized:B

.field private name_:Ljava/lang/String;

.field private overrideUiString_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$OverrideUIString;",
            ">;"
        }
    .end annotation
.end field

.field private param_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Param;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;

    invoke-direct {v0}, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;-><init>()V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;

    const-class v1, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;->name_:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;->forcingFlag_:Ljava/lang/String;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;->param_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;->overrideUiString_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static bridge synthetic f()Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;
    .locals 1

    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lorg/chromium/components/variations/StudyOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

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

    iput-byte v1, v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;->memoizedIsInitialized:B

    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    iget-byte v0, v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;->memoizedIsInitialized:B

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :pswitch_2
    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_2

    const-class v1, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;

    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;

    return-object v0

    :pswitch_4
    const-string v1, "bitField0_"

    const-string v2, "name_"

    const-string v3, "probabilityWeight_"

    const-string v4, "googleWebExperimentId_"

    const-string v5, "forcingFlag_"

    const-string v6, "param_"

    const-class v7, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Param;

    const-string v8, "type_"

    invoke-static {}, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v9

    const-string v10, "googleWebTriggerExperimentId_"

    const-string v11, "overrideUiString_"

    const-class v12, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$OverrideUIString;

    const-string v13, "featureAssociation_"

    const-string v14, "googleAppExperimentId_"

    const-string v15, "googleWebVisibility_"

    invoke-static {}, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v16

    filled-new-array/range {v1 .. v16}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u0001\u000b\u0000\u0001\u0001\u0010\u000b\u0000\u0002\u0002\u0001\u1508\u0000\u0002\u150b\u0001\u0003\u1003\u0002\u0005\u1008\u0007\u0006\u001b\u0007\u180c\u0008\u0008\u1003\u0003\t\u001b\u000c\u1009\u0006\u000f\u1003\u0005\u0010\u180c\u0004"

    sget-object v2, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_5
    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Builder;

    invoke-direct {v0, v2}, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Builder;-><init>(I)V

    return-object v0

    :pswitch_6
    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;

    invoke-direct {v0}, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;-><init>()V

    return-object v0

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
