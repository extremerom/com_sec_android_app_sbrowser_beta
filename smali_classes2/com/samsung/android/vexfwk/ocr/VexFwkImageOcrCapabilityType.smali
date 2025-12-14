.class public final enum Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u0000 \n2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "RECOGNITION_PRINTED",
        "RECOGNITION_HAND_WRITTEN",
        "Companion",
        "VexFrameworkSDK_forInternalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Llb/a;

.field private static final synthetic $VALUES:[Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;

.field public static final Companion:Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum RECOGNITION_HAND_WRITTEN:Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;

.field public static final enum RECOGNITION_PRINTED:Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;
    .locals 2

    sget-object v0, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;->RECOGNITION_PRINTED:Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;

    sget-object v1, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;->RECOGNITION_HAND_WRITTEN:Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;

    filled-new-array {v0, v1}, [Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;

    const-string v1, "RECOGNITION_PRINTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;->RECOGNITION_PRINTED:Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;

    new-instance v0, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;

    const-string v1, "RECOGNITION_HAND_WRITTEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;->RECOGNITION_HAND_WRITTEN:Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;

    invoke-static {}, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;->$values()[Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;->$VALUES:[Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;

    invoke-static {v0}, LP6/b;->b([Ljava/lang/Enum;)Llb/b;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;->$ENTRIES:Llb/a;

    new-instance v0, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType$Companion;-><init>(Ltb/f;)V

    sput-object v0, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;->Companion:Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType$Companion;

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

    iput p3, p0, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;->value:I

    return-void
.end method

.method public static final fromInt(I)Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;->Companion:Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType$Companion;->fromInt(I)Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;

    move-result-object p0

    return-object p0
.end method

.method public static getEntries()Llb/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Llb/a;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;->$ENTRIES:Llb/a;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;
    .locals 1

    const-class v0, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;
    .locals 1

    sget-object v0, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;->$VALUES:[Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/vexfwk/ocr/VexFwkImageOcrCapabilityType;->value:I

    return p0
.end method
