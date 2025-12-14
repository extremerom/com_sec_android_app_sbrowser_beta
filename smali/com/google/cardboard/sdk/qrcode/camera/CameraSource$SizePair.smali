.class Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$SizePair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/cardboard/sdk/qrcode/camera/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SizePair"
.end annotation


# instance fields
.field private picture:Le5/a;

.field private final preview:Le5/a;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le5/a;

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget p1, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, p1}, Le5/a;-><init>(II)V

    iput-object v0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$SizePair;->preview:Le5/a;

    if-eqz p2, :cond_0

    new-instance p1, Le5/a;

    iget v0, p2, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {p1, v0, p2}, Le5/a;-><init>(II)V

    iput-object p1, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$SizePair;->picture:Le5/a;

    :cond_0
    return-void
.end method


# virtual methods
.method public pictureSize()Le5/a;
    .locals 0

    iget-object p0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$SizePair;->picture:Le5/a;

    return-object p0
.end method

.method public previewSize()Le5/a;
    .locals 0

    iget-object p0, p0, Lcom/google/cardboard/sdk/qrcode/camera/CameraSource$SizePair;->preview:Le5/a;

    return-object p0
.end method
