.class public final synthetic Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/extract_text/VideoLiveTextController$TextRecognizerListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/e;->a:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    return-void
.end method


# virtual methods
.method public final onTextRecognizerResultReceived(Ljava/lang/Boolean;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/e;->a:Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;->b(Lcom/sec/android/app/sbrowser/media/player/fullscreen/controller/MPFullscreenLiveTextController;Ljava/lang/Boolean;)V

    return-void
.end method
