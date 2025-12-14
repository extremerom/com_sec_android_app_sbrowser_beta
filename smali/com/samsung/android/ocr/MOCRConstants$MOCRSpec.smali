.class public final enum Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/ocr/MOCRConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MOCRSpec"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;

.field public static final enum HighAccuracy:Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;

.field public static final enum HighPerformance:Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;


# instance fields
.field private final value:I


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;
    .locals 2

    sget-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;->HighAccuracy:Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;

    sget-object v1, Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;->HighPerformance:Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;

    filled-new-array {v0, v1}, [Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;

    const-string v1, "HighAccuracy"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;->HighAccuracy:Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;

    new-instance v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;

    const-string v1, "HighPerformance"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;->HighPerformance:Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;

    invoke-static {}, Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;->$values()[Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;->$VALUES:[Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;

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

    iput p3, p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;
    .locals 1

    const-class v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;
    .locals 1

    sget-object v0, Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;->$VALUES:[Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;

    invoke-virtual {v0}, [Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/ocr/MOCRConstants$MOCRSpec;->value:I

    return p0
.end method
