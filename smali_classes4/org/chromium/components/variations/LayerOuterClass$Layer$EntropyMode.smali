.class public final enum Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/components/variations/LayerOuterClass$Layer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EntropyMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode$EntropyModeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

.field public static final enum DEFAULT:Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

.field public static final DEFAULT_VALUE:I = 0x0

.field public static final enum LIMITED:Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

.field public static final LIMITED_VALUE:I = 0x2

.field public static final enum LOW:Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

.field public static final LOW_VALUE:I = 0x1

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;
    .locals 3

    sget-object v0, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;->DEFAULT:Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

    sget-object v1, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;->LOW:Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

    sget-object v2, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;->LIMITED:Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

    filled-new-array {v0, v1, v2}, [Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;->DEFAULT:Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

    new-instance v0, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

    const-string v1, "LOW"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;->LOW:Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

    new-instance v0, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

    const-string v1, "LIMITED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;->LIMITED:Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

    invoke-static {}, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;->$values()[Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

    move-result-object v0

    sput-object v0, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;->$VALUES:[Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

    new-instance v0, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode$1;

    invoke-direct {v0}, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode$1;-><init>()V

    sput-object v0, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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

    iput p3, p0, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;->value:I

    return-void
.end method

.method public static forNumber(I)Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;->LIMITED:Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

    return-object p0

    :cond_1
    sget-object p0, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;->LOW:Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

    return-object p0

    :cond_2
    sget-object p0, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;->DEFAULT:Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

    return-object p0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    sget-object v0, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode$EntropyModeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;
    .locals 1

    const-class v0, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

    return-object p0
.end method

.method public static values()[Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;
    .locals 1

    sget-object v0, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;->$VALUES:[Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

    invoke-virtual {v0}, [Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 0

    iget p0, p0, Lorg/chromium/components/variations/LayerOuterClass$Layer$EntropyMode;->value:I

    return p0
.end method
