.class public final Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/variations/VariationsSeedOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VariationsSeed"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;",
        "Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed$Builder;",
        ">;",
        "Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeedOrBuilder;"
    }
.end annotation


# static fields
.field public static final COUNTRY_CODE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;

.field public static final LAYERS_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;",
            ">;"
        }
    .end annotation
.end field

.field public static final SERIAL_NUMBER_FIELD_NUMBER:I = 0x1

.field public static final STUDY_FIELD_NUMBER:I = 0x2

.field public static final VERSION_FIELD_NUMBER:I = 0x4


# instance fields
.field private countryCode_:Ljava/lang/String;

.field private layers_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lorg/chromium/components/variations/LayerOuterClass$Layer;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private serialNumber_:Ljava/lang/String;

.field private study_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lorg/chromium/components/variations/StudyOuterClass$Study;",
            ">;"
        }
    .end annotation
.end field

.field private version_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;

    invoke-direct {v0}, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;-><init>()V

    sput-object v0, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;

    const-class v1, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;->memoizedIsInitialized:B

    const-string v0, ""

    iput-object v0, p0, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;->serialNumber_:Ljava/lang/String;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;->study_:Lcom/google/protobuf/Internal$ProtobufList;

    iput-object v0, p0, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;->countryCode_:Ljava/lang/String;

    iput-object v0, p0, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;->version_:Ljava/lang/String;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;->layers_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static bridge synthetic f()Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;
    .locals 1

    sget-object v0, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;

    return-object v0
.end method

.method public static parseFrom([B)Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;
    .locals 1

    sget-object v0, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;

    return-object p0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object p3, Lorg/chromium/components/variations/VariationsSeedOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    :goto_0
    int-to-byte p1, p3

    iput-byte p1, p0, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;->memoizedIsInitialized:B

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    iget-byte p0, p0, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;->memoizedIsInitialized:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2

    const-class p1, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit p1

    goto :goto_3

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_3
    return-object p0

    :pswitch_3
    sget-object p0, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;

    return-object p0

    :pswitch_4
    const-string v0, "bitField0_"

    const-string v1, "serialNumber_"

    const-string v2, "study_"

    const-class v3, Lorg/chromium/components/variations/StudyOuterClass$Study;

    const-string v4, "countryCode_"

    const-string v5, "version_"

    const-string v6, "layers_"

    const-class v7, Lorg/chromium/components/variations/LayerOuterClass$Layer;

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0005\u0000\u0001\u0001\u0006\u0005\u0000\u0002\u0001\u0001\u1008\u0000\u0002\u041b\u0003\u1008\u0001\u0004\u1008\u0002\u0006\u001b"

    sget-object p2, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed$Builder;

    invoke-direct {p0, p3}, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed$Builder;-><init>(I)V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;

    invoke-direct {p0}, Lorg/chromium/components/variations/VariationsSeedOuterClass$VariationsSeed;-><init>()V

    return-object p0

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
