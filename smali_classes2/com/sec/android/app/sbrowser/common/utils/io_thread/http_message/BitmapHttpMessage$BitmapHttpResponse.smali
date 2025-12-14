.class public Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/BitmapHttpMessage$BitmapHttpResponse;
.super Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/BitmapHttpMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapHttpResponse"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/HttpResponse;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/BitmapHttpMessage$BitmapHttpResponse;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/sbrowser/common/utils/io_thread/http_message/BitmapHttpMessage$BitmapHttpResponse;-><init>(Landroid/graphics/Bitmap;)V

    return-void
.end method
