.class public final synthetic Lcom/sec/android/app/sbrowser/media/player/video/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/video/e;->a:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/video/e;->a:Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;->c(Lcom/sec/android/app/sbrowser/media/player/video/MPStandaloneVideoView;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method
