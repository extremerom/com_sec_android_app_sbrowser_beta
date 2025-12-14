.class public Lcom/samsung/android/qrengine/QRBarcodeEncoder;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "QREngine.camera.samsung"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private static native generateAppQR(Ljava/lang/String;II[I)Landroid/graphics/Bitmap;
.end method

.method private static native generateQR(Ljava/lang/String;II)Landroid/graphics/Bitmap;
.end method

.method private static native generateQRlogo(Ljava/lang/String;IIILandroid/graphics/Bitmap;II[I)Landroid/graphics/Bitmap;
.end method
