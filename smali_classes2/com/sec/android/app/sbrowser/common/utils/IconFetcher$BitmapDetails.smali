.class Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$BitmapDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/IconFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapDetails"
.end annotation


# instance fields
.field private mDominantColor:J

.field private mImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$BitmapDetails;->mImage:Landroid/graphics/Bitmap;

    iput-wide p2, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$BitmapDetails;->mDominantColor:J

    return-void
.end method


# virtual methods
.method public getDominantColor()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$BitmapDetails;->mDominantColor:J

    return-wide v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/common/utils/IconFetcher$BitmapDetails;->mImage:Landroid/graphics/Bitmap;

    return-object p0
.end method
