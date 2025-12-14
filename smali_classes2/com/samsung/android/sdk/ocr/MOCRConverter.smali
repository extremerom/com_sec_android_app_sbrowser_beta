.class public Lcom/samsung/android/sdk/ocr/MOCRConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MOCRConverter"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertBlock(Lcom/samsung/android/ocr/MOCRResult$Block;Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;)Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;
    .locals 5

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ocr/MOCRResult$Block;->lines:[Lcom/samsung/android/ocr/MOCRResult$Line;

    if-nez v0, :cond_1

    const-string v0, "MOCRConverter"

    const-string v1, "[convertBlock] MOCRResult.Block.lines is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ocr/MOCRConverter;->convertLine(Lcom/samsung/android/ocr/MOCRResult$Line;Lcom/samsung/android/sdk/ocr/OCRResult$LineData;)Lcom/samsung/android/sdk/ocr/OCRResult$LineData;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->add(Lcom/samsung/android/sdk/ocr/OCRResult$LineData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/ocr/MOCRResult$Block;->bRect:[Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->setRect([Landroid/graphics/Point;)V

    iget p0, p0, Lcom/samsung/android/ocr/MOCRResult$Block;->isTabular:I

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;->setTabular(I)V

    return-object p1
.end method

.method public static convertCell(Lcom/samsung/android/ocr/MOCRResult$TableCell;Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;)Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ocr/MOCRResult$TableCell;->cellRect:[Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;->setCellRect([Landroid/graphics/Point;)V

    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$TableCell;->cellText:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;->setCellText(Ljava/lang/String;)V

    return-object p1
.end method

.method public static convertChar(Lcom/samsung/android/ocr/MOCRResult$Char;Lcom/samsung/android/sdk/ocr/OCRResult$CharData;)Lcom/samsung/android/sdk/ocr/OCRResult$CharData;
    .locals 1

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;->clear()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/ocr/MOCRResult$Char;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;->setText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Char;->cRect:[Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/ocr/OCRResult$CharData;->setRect([Landroid/graphics/Point;)V

    return-object p1
.end method

.method public static convertLine(Lcom/samsung/android/ocr/MOCRResult$Line;Lcom/samsung/android/sdk/ocr/OCRResult$LineData;)Lcom/samsung/android/sdk/ocr/OCRResult$LineData;
    .locals 5

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->words:[Lcom/samsung/android/ocr/MOCRResult$Word;

    if-nez v0, :cond_1

    const-string v0, "MOCRConverter"

    const-string v1, "[convertLine] MOCRResult.Line.words is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ocr/MOCRConverter;->convertWord(Lcom/samsung/android/ocr/MOCRResult$Word;Lcom/samsung/android/sdk/ocr/OCRResult$WordData;)Lcom/samsung/android/sdk/ocr/OCRResult$WordData;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->add(Lcom/samsung/android/sdk/ocr/OCRResult$WordData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->lRect:[Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->setRect([Landroid/graphics/Point;)V

    iget-boolean p0, p0, Lcom/samsung/android/ocr/MOCRResult$Line;->isCurved:Z

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/ocr/OCRResult$LineData;->setCurved(Z)V

    return-object p1
.end method

.method public static convertPage(Lcom/samsung/android/ocr/MOCRResult$Page;Lcom/samsung/android/sdk/ocr/OCRResult;)V
    .locals 7

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRResult;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ocr/OCRResult;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult;->clearResult()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ocr/MOCRResult$Page;->blocks:[Lcom/samsung/android/ocr/MOCRResult$Block;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "MOCRConverter"

    if-nez v0, :cond_1

    const-string v0, "[convertPage] MOCRResult.Page.blocks is null!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    array-length v4, v0

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    invoke-static {v6, v1}, Lcom/samsung/android/sdk/ocr/MOCRConverter;->convertBlock(Lcom/samsung/android/ocr/MOCRResult$Block;Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;)Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/samsung/android/sdk/ocr/OCRResult;->add(Lcom/samsung/android/sdk/ocr/OCRResult$BlockData;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Page;->tables:[Lcom/samsung/android/ocr/MOCRResult$Table;

    if-nez p0, :cond_3

    const-string p0, "[convertPage] MOCRResult.Page.tables is null!"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    array-length v0, p0

    :goto_3
    if-ge v2, v0, :cond_4

    aget-object v3, p0, v2

    invoke-static {v3, v1}, Lcom/samsung/android/sdk/ocr/MOCRConverter;->convertTable(Lcom/samsung/android/ocr/MOCRResult$Table;Lcom/samsung/android/sdk/ocr/OCRResult$TableData;)Lcom/samsung/android/sdk/ocr/OCRResult$TableData;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/ocr/OCRResult;->add(Lcom/samsung/android/sdk/ocr/OCRResult$TableData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult;->logInfo()Z

    return-void
.end method

.method public static convertRow(Lcom/samsung/android/ocr/MOCRResult$TableRow;Lcom/samsung/android/sdk/ocr/OCRResult$TableRowData;)Lcom/samsung/android/sdk/ocr/OCRResult$TableRowData;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRResult$TableRowData;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$TableRowData;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$TableRowData;->clear()V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$TableRow;->cells:[Lcom/samsung/android/ocr/MOCRResult$TableCell;

    if-nez p0, :cond_1

    const-string p0, "MOCRConverter"

    const-string v0, "[convertRow] MOCRResult.TableRow.cells is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ocr/MOCRConverter;->convertCell(Lcom/samsung/android/ocr/MOCRResult$TableCell;Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;)Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/sdk/ocr/OCRResult$TableRowData;->add(Lcom/samsung/android/sdk/ocr/OCRResult$TableCellData;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-object p1
.end method

.method public static convertTable(Lcom/samsung/android/ocr/MOCRResult$Table;Lcom/samsung/android/sdk/ocr/OCRResult$TableData;)Lcom/samsung/android/sdk/ocr/OCRResult$TableData;
    .locals 5

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRResult$TableData;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$TableData;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$TableData;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ocr/MOCRResult$Table;->rows:[Lcom/samsung/android/ocr/MOCRResult$TableRow;

    if-nez v0, :cond_1

    const-string v0, "MOCRConverter"

    const-string v1, "[convertTable] MOCRResult.Table.rows is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ocr/MOCRConverter;->convertRow(Lcom/samsung/android/ocr/MOCRResult$TableRow;Lcom/samsung/android/sdk/ocr/OCRResult$TableRowData;)Lcom/samsung/android/sdk/ocr/OCRResult$TableRowData;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/ocr/OCRResult$TableData;->add(Lcom/samsung/android/sdk/ocr/OCRResult$TableRowData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Table;->tableRect:[Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/ocr/OCRResult$TableData;->setTableRect([Landroid/graphics/Point;)V

    return-object p1
.end method

.method public static convertWord(Lcom/samsung/android/ocr/MOCRResult$Word;Lcom/samsung/android/sdk/ocr/OCRResult$WordData;)Lcom/samsung/android/sdk/ocr/OCRResult$WordData;
    .locals 5

    if-nez p1, :cond_0

    new-instance p1, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;

    invoke-direct {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;->clear()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->chars:[Lcom/samsung/android/ocr/MOCRResult$Char;

    if-nez v0, :cond_1

    const-string v0, "MOCRConverter"

    const-string v1, "[convertWord] MOCRResult.Word.chars is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ocr/MOCRConverter;->convertChar(Lcom/samsung/android/ocr/MOCRResult$Char;Lcom/samsung/android/sdk/ocr/OCRResult$CharData;)Lcom/samsung/android/sdk/ocr/OCRResult$CharData;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;->add(Lcom/samsung/android/sdk/ocr/OCRResult$CharData;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wRect:[Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;->setRect([Landroid/graphics/Point;)V

    iget-object p0, p0, Lcom/samsung/android/ocr/MOCRResult$Word;->wPoly:[Landroid/graphics/Point;

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/ocr/OCRResult$WordData;->setPoly([Landroid/graphics/Point;)V

    return-object p1
.end method
