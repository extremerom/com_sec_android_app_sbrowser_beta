.class public Lorg/chromium/ui/resources/dynamics/DynamicResourceSnapshot;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/resources/Resource;


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# instance fields
.field private final mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapSize:Landroid/graphics/Rect;

.field private final mNativeResourceId:J


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/chromium/ui/resources/dynamics/DynamicResourceSnapshot;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lorg/chromium/ui/resources/dynamics/DynamicResourceSnapshot;->mBitmapSize:Landroid/graphics/Rect;

    iput-wide p3, p0, Lorg/chromium/ui/resources/dynamics/DynamicResourceSnapshot;->mNativeResourceId:J

    return-void
.end method


# virtual methods
.method public createNativeResource()J
    .locals 2

    iget-wide v0, p0, Lorg/chromium/ui/resources/dynamics/DynamicResourceSnapshot;->mNativeResourceId:J

    return-wide v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/resources/dynamics/DynamicResourceSnapshot;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getBitmapSize()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lorg/chromium/ui/resources/dynamics/DynamicResourceSnapshot;->mBitmapSize:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getNinePatchData()Lorg/chromium/ui/resources/statics/NinePatchData;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
