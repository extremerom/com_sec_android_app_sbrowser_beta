.class public final synthetic Lcom/sec/android/app/sbrowser/media/player/video/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/content/browser/media/TerraceMediaPlayerManagerClient$CaptureResultCallback;


# instance fields
.field public final synthetic a:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/h;->a:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final handleResult(Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/h;->a:Ljava/util/function/Consumer;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/video/MPTerraceVideoView;->c(Ljava/util/function/Consumer;Landroid/graphics/Bitmap;)V

    return-void
.end method
