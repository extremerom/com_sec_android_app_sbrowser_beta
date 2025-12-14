.class public final Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRangeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SlotRange"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;",
        "Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange$Builder;",
        ">;",
        "Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRangeOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;

.field public static final END_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;",
            ">;"
        }
    .end annotation
.end field

.field public static final START_FIELD_NUMBER:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;

    invoke-direct {v0}, Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;-><init>()V

    sput-object v0, Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;

    const-class v1, Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static bridge synthetic f()Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;
    .locals 1

    sget-object v0, Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Lorg/chromium/components/variations/LayerOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_1

    const-class p1, Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;

    monitor-enter p1

    :try_start_0
    sget-object p0, Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_0

    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    sput-object p0, Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object p0

    :pswitch_3
    sget-object p0, Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;

    return-object p0

    :pswitch_4
    const-string p0, "bitField0_"

    const-string p1, "start_"

    const-string p2, "end_"

    filled-new-array {p0, p1, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u100b\u0000\u0002\u100b\u0001"

    sget-object p2, Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;->DEFAULT_INSTANCE:Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_5
    new-instance p0, Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange$Builder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange$Builder;-><init>(I)V

    return-object p0

    :pswitch_6
    new-instance p0, Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;

    invoke-direct {p0}, Lorg/chromium/components/variations/LayerOuterClass$Layer$LayerMember$SlotRange;-><init>()V

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
