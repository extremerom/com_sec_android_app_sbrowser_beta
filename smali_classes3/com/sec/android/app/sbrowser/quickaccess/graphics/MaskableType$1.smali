.class final enum Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType$1;
.super Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4011
    name = null
.end annotation


# direct methods
.method public synthetic constructor <init>()V
    .locals 2

    const-string v0, "FULL_MASKABLE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType$1;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableType;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/graphics/Bitmap;Z)Lcom/sec/android/app/sbrowser/quickaccess/graphics/MaskableDrawable;
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    new-instance p0, Lcom/sec/android/app/sbrowser/quickaccess/graphics/FullMaskDrawable;

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/graphics/FullMaskDrawable;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V

    return-object p0
.end method
