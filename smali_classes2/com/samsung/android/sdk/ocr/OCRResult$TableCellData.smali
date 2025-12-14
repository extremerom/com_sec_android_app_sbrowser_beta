.class public Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;
.super Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ocr/OCRResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TableCellData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCellRect:[Landroid/graphics/Point;

.field private mCellText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;->mCellText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;-><init>(Landroid/os/Parcel;)V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;->mCellText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;->mCellText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;->mCellText:Ljava/lang/String;

    return-void
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getAngle()F
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->getAngle()F

    move-result p0

    return p0
.end method

.method public final getCellRect()[Landroid/graphics/Point;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;->mCellRect:[Landroid/graphics/Point;

    if-nez p0, :cond_0

    const-string p0, "OCRResult"

    const-string v0, "[getCellRect] mCellRect is null, so set zero-length array"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    new-array p0, p0, [Landroid/graphics/Point;

    :cond_0
    return-object p0
.end method

.method public final getCellText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;->mCellText:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic getCenter()Landroid/graphics/PointF;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->getCenter()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public logInfo()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->getRect()[Landroid/graphics/Point;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget-object p0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;->mCellText:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const-string v1, " contains "

    const-string v2, " Characters"

    invoke-static {p0, v1, v2}, Lt/b;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "OCRResult::Cell[mRect]"

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/ocr/OCRResult;->printRect([Landroid/graphics/Point;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic offset(II)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->offset(II)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic rotate(FLandroid/graphics/PointF;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->rotate(FLandroid/graphics/PointF;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic scale(F)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->scale(F)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setAngle(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->setAngle(F)V

    return-void
.end method

.method public setCellRect([Landroid/graphics/Point;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "OCRResult"

    const-string v0, "[setCellRect] rect is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;->mCellRect:[Landroid/graphics/Point;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;->mCellRect:[Landroid/graphics/Point;

    return-void
.end method

.method public setCellText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;->mCellText:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setRect([Landroid/graphics/Point;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->setRect([Landroid/graphics/Point;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "OCRResult"

    const-string v1, "writeToParcel: TableCellData"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/ocr/OCRResult$AbsData;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;->mCellText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
