.class public final enum Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type$TypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

.field public static final enum IGNORE_CHANGE:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

.field public static final IGNORE_CHANGE_VALUE:I = 0x1

.field public static final enum KILL_BEST_EFFORT:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

.field public static final KILL_BEST_EFFORT_VALUE:I = 0x2

.field public static final enum KILL_CRITICAL:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

.field public static final KILL_CRITICAL_VALUE:I = 0x3

.field public static final enum NORMAL:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

.field public static final NORMAL_VALUE:I

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;
    .locals 4

    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;->NORMAL:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    sget-object v1, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;->IGNORE_CHANGE:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    sget-object v2, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;->KILL_BEST_EFFORT:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    sget-object v3, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;->KILL_CRITICAL:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    filled-new-array {v0, v1, v2, v3}, [Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;->NORMAL:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    const-string v1, "IGNORE_CHANGE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;->IGNORE_CHANGE:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    const-string v1, "KILL_BEST_EFFORT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;->KILL_BEST_EFFORT:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    const-string v1, "KILL_CRITICAL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;->KILL_CRITICAL:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    invoke-static {}, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;->$values()[Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;->$VALUES:[Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type$1;

    invoke-direct {v0}, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type$1;-><init>()V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;->value:I

    return-void
.end method

.method public static forNumber(I)Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;->KILL_CRITICAL:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    return-object p0

    :cond_1
    sget-object p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;->KILL_BEST_EFFORT:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    return-object p0

    :cond_2
    sget-object p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;->IGNORE_CHANGE:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    return-object p0

    :cond_3
    sget-object p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;->NORMAL:Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    return-object p0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type$TypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;
    .locals 1

    const-class v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    return-object p0
.end method

.method public static values()[Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;
    .locals 1

    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;->$VALUES:[Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    invoke-virtual {v0}, [Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$Experiment$Type;->value:I

    return p0
.end method
