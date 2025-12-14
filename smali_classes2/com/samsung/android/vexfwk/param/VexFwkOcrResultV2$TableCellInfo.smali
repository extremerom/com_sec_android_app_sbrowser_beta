.class public final Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableCellInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TableCellInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\n\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B%\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0013\u0010\u0012\u001a\u00020\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0001H\u0096\u0002R\u0019\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\n\n\u0002\u0010\r\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableCellInfo;",
        "",
        "cellBoundary",
        "",
        "Landroid/graphics/Point;",
        "cellText",
        "",
        "angle",
        "",
        "<init>",
        "([Landroid/graphics/Point;Ljava/lang/String;F)V",
        "getCellBoundary",
        "()[Landroid/graphics/Point;",
        "[Landroid/graphics/Point;",
        "getCellText",
        "()Ljava/lang/String;",
        "getAngle",
        "()F",
        "equals",
        "",
        "other",
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


# instance fields
.field private final angle:F

.field private final cellBoundary:[Landroid/graphics/Point;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cellText:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Landroid/graphics/Point;Ljava/lang/String;F)V
    .locals 1
    .param p1    # [Landroid/graphics/Point;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "cellBoundary"

    invoke-static {p1, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cellText"

    invoke-static {p2, v0}, Ltb/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableCellInfo;->cellBoundary:[Landroid/graphics/Point;

    iput-object p2, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableCellInfo;->cellText:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableCellInfo;->angle:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableCellInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableCellInfo;->cellText:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableCellInfo;

    iget-object v3, p1, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableCellInfo;->cellText:Ljava/lang/String;

    invoke-static {v1, v3}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableCellInfo;->cellBoundary:[Landroid/graphics/Point;

    iget-object p1, p1, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableCellInfo;->cellBoundary:[Landroid/graphics/Point;

    invoke-static {p0, p1}, Ltb/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getAngle()F
    .locals 0

    iget p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableCellInfo;->angle:F

    return p0
.end method

.method public final getCellBoundary()[Landroid/graphics/Point;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableCellInfo;->cellBoundary:[Landroid/graphics/Point;

    return-object p0
.end method

.method public final getCellText()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/vexfwk/param/VexFwkOcrResultV2$TableCellInfo;->cellText:Ljava/lang/String;

    return-object p0
.end method
