.class Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivityJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivityJni;

    invoke-direct {v0}, Lcom/sec/terrace/content/browser/pip/TinPictureInPictureActivityJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public compositorViewCreated(JLorg/chromium/components/thinwebview/CompositorView;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MRnaege7(JLjava/lang/Object;)V

    return-void
.end method

.method public destroyStartedByJava(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MgKtbmp8(J)V

    return-void
.end method

.method public nextSlide(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MazOxWbv(J)V

    return-void
.end method

.method public nextTrack(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MsA9$kl3(J)V

    return-void
.end method

.method public onActivityStart(JLcom/sec/terrace/content/browser/pip/TinPictureInPictureActivity;Lorg/chromium/ui/base/WindowAndroid;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M78AmSaq(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onBackToTab(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MOgl5_tG(J)V

    return-void
.end method

.method public onViewSizeChanged(JII)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->M7gYUgmX(JII)V

    return-void
.end method

.method public previousSlide(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MIjov9RU(J)V

    return-void
.end method

.method public previousTrack(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MC_8X7Yx(J)V

    return-void
.end method

.method public togglePlayPause(JZ)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MRxiMK8Y(JZ)V

    return-void
.end method
