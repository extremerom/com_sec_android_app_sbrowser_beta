.class public final enum Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/variations/StudyOuterClass$Study;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GoogleWebVisibility"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility$GoogleWebVisibilityVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;

.field public static final enum ANY:Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;

.field public static final ANY_VALUE:I = 0x0

.field public static final enum FIRST_PARTY:Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;

.field public static final FIRST_PARTY_VALUE:I = 0x1

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;
    .locals 2

    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;->ANY:Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;

    sget-object v1, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;->FIRST_PARTY:Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;

    filled-new-array {v0, v1}, [Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;

    const-string v1, "ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;->ANY:Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;

    const-string v1, "FIRST_PARTY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;->FIRST_PARTY:Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;

    invoke-static {}, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;->$values()[Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;->$VALUES:[Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;

    new-instance v0, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility$1;

    invoke-direct {v0}, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility$1;-><init>()V

    sput-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    iput p3, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;->value:I

    return-void
.end method

.method public static forNumber(I)Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;->FIRST_PARTY:Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;

    return-object p0

    :cond_1
    sget-object p0, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;->ANY:Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;

    return-object p0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility$GoogleWebVisibilityVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;
    .locals 1

    const-class v0, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;

    return-object p0
.end method

.method public static values()[Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;
    .locals 1

    sget-object v0, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;->$VALUES:[Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;

    invoke-virtual {v0}, [Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lorg/chromium/components/variations/StudyOuterClass$Study$GoogleWebVisibility;->value:I

    return p0
.end method
