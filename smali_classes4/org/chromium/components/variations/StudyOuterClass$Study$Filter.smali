.class public final Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/variations/StudyOuterClass$Study$FilterOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/variations/StudyOuterClass$Study;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Filter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/variations/StudyOuterClass$Study$Filter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;",
        "Lorg/chromium/components/variations/StudyOuterClass$Study$Filter$Builder;",
        ">;",
        "Lorg/chromium/components/variations/StudyOuterClass$Study$FilterOrBuilder;"
    }
.end annotation


# static fields
.field public static final CHANNEL_FIELD_NUMBER:I = 0x4

.field public static final COUNTRY_FIELD_NUMBER:I = 0xa

.field public static final CPU_ARCHITECTURE_FIELD_NUMBER:I = 0x14

.field private static final DEFAULT_INSTANCE:Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;

.field public static final END_DATE_FIELD_NUMBER:I = 0xd

.field public static final EXCLUDE_COUNTRY_FIELD_NUMBER:I = 0xb

.field public static final EXCLUDE_CPU_ARCHITECTURE_FIELD_NUMBER:I = 0x15

.field public static final EXCLUDE_FORM_FACTOR_FIELD_NUMBER:I = 0xe

.field public static final EXCLUDE_GOOGLE_GROUP_FIELD_NUMBER:I = 0x17

.field public static final EXCLUDE_HARDWARE_CLASS_FIELD_NUMBER:I = 0x9

.field public static final EXCLUDE_LOCALE_FIELD_NUMBER:I = 0xc

.field public static final FORM_FACTOR_FIELD_NUMBER:I = 0x7

.field public static final GOOGLE_GROUP_FIELD_NUMBER:I = 0x16

.field public static final HARDWARE_CLASS_FIELD_NUMBER:I = 0x8

.field public static final IS_ENTERPRISE_FIELD_NUMBER:I = 0x12

.field public static final IS_LOW_END_DEVICE_FIELD_NUMBER:I = 0xf

.field public static final LOCALE_FIELD_NUMBER:I = 0x6

.field public static final MAX_OS_VERSION_FIELD_NUMBER:I = 0x11

.field public static final MAX_VERSION_FIELD_NUMBER:I = 0x3

.field public static final MIN_OS_VERSION_FIELD_NUMBER:I = 0x10

.field public static final MIN_VERSION_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;",
            ">;"
        }
    .end annotation
.end field

.field public static final PLATFORM_FIELD_NUMBER:I = 0x5

.field public static final POLICY_RESTRICTION_FIELD_NUMBER:I = 0x13

.field public static final START_DATE_FIELD_NUMBER:I = 0x1

.field private static final channel_converter_:Lcom/google/protobuf/Internal$IntListAdapter$IntConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$IntListAdapter$IntConverter<",
            "Lorg/chromium/components/variations/StudyOuterClass$Study$Channel;",
            ">;"
        }
    .end annotation
.end field

.field private static final cpuArchitecture_converter_:Lcom/google/protobuf/Internal$IntListAdapter$IntConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$IntListAdapter$IntConverter<",
            "Lorg/chromium/components/variations/StudyOuterClass$Study$CpuArchitecture;",
            ">;"
        }
    .end annotation
.end field

.field private static final excludeCpuArchitecture_converter_:Lcom/google/protobuf/Internal$IntListAdapter$IntConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$IntListAdapter$IntConverter<",
            "Lorg/chromium/components/variations/StudyOuterClass$Study$CpuArchitecture;",
            ">;"
        }
    .end annotation
.end field

.field private static final excludeFormFactor_converter_:Lcom/google/protobuf/Internal$IntListAdapter$IntConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$IntListAdapter$IntConverter<",
            "Lorg/chromium/components/variations/StudyOuterClass$Study$FormFactor;",
            ">;"
        }
    .end annotation
.end field

.field private static final formFactor_converter_:Lcom/google/protobuf/Internal$IntListAdapter$IntConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$IntListAdapter$IntConverter<",
            "Lorg/chromium/components/variations/StudyOuterClass$Study$FormFactor;",
            ">;"
        }
    .end annotation
.end field

.field private static final platform_converter_:Lcom/google/protobuf/Internal$IntListAdapter$IntConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$IntListAdapter$IntConverter<",
            "Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private channel_:Lcom/google/protobuf/Internal$IntList;

.field private country_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cpuArchitecture_:Lcom/google/protobuf/Internal$IntList;

.field private excludeCountry_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private excludeCpuArchitecture_:Lcom/google/protobuf/Internal$IntList;

.field private excludeFormFactor_:Lcom/google/protobuf/Internal$IntList;

.field private excludeGoogleGroupMemoizedSerializedSize:I

.field private excludeGoogleGroup_:Lcom/google/protobuf/Internal$LongList;

.field private excludeHardwareClass_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private excludeLocale_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private formFactor_:Lcom/google/protobuf/Internal$IntList;

.field private googleGroupMemoizedSerializedSize:I

.field private googleGroup_:Lcom/google/protobuf/Internal$LongList;

.field private hardwareClass_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private locale_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private maxOsVersion_:Ljava/lang/String;

.field private maxVersion_:Ljava/lang/String;

.field private minOsVersion_:Ljava/lang/String;

.field private minVersion_:Ljava/lang/String;

.field private platform_:Lcom/google/protobuf/Internal$IntList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter$1;

    invoke-direct {v0}, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter$1;-><init>()V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->channel_converter_:Lcom/google/protobuf/Internal$IntListAdapter$IntConverter;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter$2;

    invoke-direct {v0}, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter$2;-><init>()V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->platform_converter_:Lcom/google/protobuf/Internal$IntListAdapter$IntConverter;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter$3;

    invoke-direct {v0}, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter$3;-><init>()V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->formFactor_converter_:Lcom/google/protobuf/Internal$IntListAdapter$IntConverter;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter$4;

    invoke-direct {v0}, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter$4;-><init>()V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->excludeFormFactor_converter_:Lcom/google/protobuf/Internal$IntListAdapter$IntConverter;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter$5;

    invoke-direct {v0}, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter$5;-><init>()V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->cpuArchitecture_converter_:Lcom/google/protobuf/Internal$IntListAdapter$IntConverter;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter$6;

    invoke-direct {v0}, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter$6;-><init>()V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->excludeCpuArchitecture_converter_:Lcom/google/protobuf/Internal$IntListAdapter$IntConverter;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;

    invoke-direct {v0}, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;-><init>()V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;

    const-class v1, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->googleGroupMemoizedSerializedSize:I

    iput v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->excludeGoogleGroupMemoizedSerializedSize:I

    const-string v0, ""

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->minVersion_:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->maxVersion_:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->minOsVersion_:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->maxOsVersion_:Ljava/lang/String;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->channel_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->platform_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->locale_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->excludeLocale_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->formFactor_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->excludeFormFactor_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->hardwareClass_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->excludeHardwareClass_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->country_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->excludeCountry_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->cpuArchitecture_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->excludeCpuArchitecture_:Lcom/google/protobuf/Internal$IntList;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyLongList()Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->googleGroup_:Lcom/google/protobuf/Internal$LongList;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyLongList()Lcom/google/protobuf/Internal$LongList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->excludeGoogleGroup_:Lcom/google/protobuf/Internal$LongList;

    return-void
.end method

.method public static bridge synthetic f()Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;
    .locals 1

    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    :pswitch_2
    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_1

    const-class v1, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->PARSER:Lcom/google/protobuf/Parser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v2, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;

    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    return-object v0

    :pswitch_3
    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;

    return-object v0

    :pswitch_4
    const-string v1, "bitField0_"

    const-string v2, "startDate_"

    const-string v3, "minVersion_"

    const-string v4, "maxVersion_"

    const-string v5, "channel_"

    invoke-static {}, Lorg/chromium/components/variations/StudyOuterClass$Study$Channel;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v6

    const-string v7, "platform_"

    invoke-static {}, Lorg/chromium/components/variations/StudyOuterClass$Study$Platform;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v8

    const-string v9, "locale_"

    const-string v10, "formFactor_"

    invoke-static {}, Lorg/chromium/components/variations/StudyOuterClass$Study$FormFactor;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v11

    const-string v12, "hardwareClass_"

    const-string v13, "excludeHardwareClass_"

    const-string v14, "country_"

    const-string v15, "excludeCountry_"

    const-string v16, "excludeLocale_"

    const-string v17, "endDate_"

    const-string v18, "excludeFormFactor_"

    invoke-static {}, Lorg/chromium/components/variations/StudyOuterClass$Study$FormFactor;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v19

    const-string v20, "isLowEndDevice_"

    const-string v21, "minOsVersion_"

    const-string v22, "maxOsVersion_"

    const-string v23, "isEnterprise_"

    const-string v24, "policyRestriction_"

    invoke-static {}, Lorg/chromium/components/variations/StudyOuterClass$Study$PolicyRestriction;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v25

    const-string v26, "cpuArchitecture_"

    invoke-static {}, Lorg/chromium/components/variations/StudyOuterClass$Study$CpuArchitecture;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v27

    const-string v28, "excludeCpuArchitecture_"

    invoke-static {}, Lorg/chromium/components/variations/StudyOuterClass$Study$CpuArchitecture;->internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;

    move-result-object v29

    const-string v30, "googleGroup_"

    const-string v31, "excludeGoogleGroup_"

    filled-new-array/range {v1 .. v31}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u0001\u0017\u0000\u0001\u0001\u0017\u0017\u0000\u000e\u0000\u0001\u1002\u0000\u0002\u1008\u0002\u0003\u1008\u0003\u0004\u081e\u0005\u081e\u0006\u001a\u0007\u081e\u0008\u001a\t\u001a\n\u001a\u000b\u001a\u000c\u001a\r\u1002\u0001\u000e\u081e\u000f\u1007\u0006\u0010\u1008\u0004\u0011\u1008\u0005\u0012\u1007\u0007\u0013\u180c\u0008\u0014\u081e\u0015\u081e\u0016%\u0017%"

    sget-object v2, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;

    invoke-static {v2, v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_5
    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter$Builder;-><init>(I)V

    return-object v0

    :pswitch_6
    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;

    invoke-direct {v0}, Lorg/chromium/components/variations/StudyOuterClass$Study$Filter;-><init>()V

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
