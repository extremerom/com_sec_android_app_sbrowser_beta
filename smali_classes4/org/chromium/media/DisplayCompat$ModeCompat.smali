.class public final Lorg/chromium/media/DisplayCompat$ModeCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/DisplayCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ModeCompat"
.end annotation


# instance fields
.field private final mIsNative:Z

.field private final mMode:Landroid/view/Display$Mode;

.field private final mPhysicalDisplaySize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/graphics/Point;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/media/DisplayCompat$ModeCompat;->mIsNative:Z

    iput-object p1, p0, Lorg/chromium/media/DisplayCompat$ModeCompat;->mPhysicalDisplaySize:Landroid/graphics/Point;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/chromium/media/DisplayCompat$ModeCompat;->mMode:Landroid/view/Display$Mode;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "physicalDisplaySize == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Landroid/view/Display$Mode;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Lorg/chromium/media/DisplayCompat$ModeCompat;->mIsNative:Z

    new-instance p2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    invoke-direct {p2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p2, p0, Lorg/chromium/media/DisplayCompat$ModeCompat;->mPhysicalDisplaySize:Landroid/graphics/Point;

    iput-object p1, p0, Lorg/chromium/media/DisplayCompat$ModeCompat;->mMode:Landroid/view/Display$Mode;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Display.Mode == null, can\'t wrap a null reference"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getPhysicalHeight()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/DisplayCompat$ModeCompat;->mPhysicalDisplaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method public getPhysicalWidth()I
    .locals 0

    iget-object p0, p0, Lorg/chromium/media/DisplayCompat$ModeCompat;->mPhysicalDisplaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->x:I

    return p0
.end method

.method public isNative()Z
    .locals 0

    iget-boolean p0, p0, Lorg/chromium/media/DisplayCompat$ModeCompat;->mIsNative:Z

    return p0
.end method
