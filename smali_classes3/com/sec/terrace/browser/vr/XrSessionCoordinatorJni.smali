.class Lcom/sec/terrace/browser/vr/XrSessionCoordinatorJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/browser/vr/XrSessionCoordinator$Natives;


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

.method public static get()Lcom/sec/terrace/browser/vr/XrSessionCoordinator$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lcom/sec/terrace/browser/vr/XrSessionCoordinatorJni;

    invoke-direct {v0}, Lcom/sec/terrace/browser/vr/XrSessionCoordinatorJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onDrawingSurfaceReady(JLcom/sec/terrace/browser/vr/XrSessionCoordinator;Landroid/view/Surface;Lorg/chromium/ui/base/WindowAndroid;III)V
    .locals 0

    invoke-static/range {p1 .. p8}, LJ/N;->MULwDqNE(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;III)V

    return-void
.end method

.method public onDrawingSurfaceTouch(JLcom/sec/terrace/browser/vr/XrSessionCoordinator;ZZIFF)V
    .locals 0

    invoke-static/range {p1 .. p8}, LJ/N;->MQtC$IGe(JLjava/lang/Object;ZZIFF)V

    return-void
.end method

.method public onJavaShutdown(JLcom/sec/terrace/browser/vr/XrSessionCoordinator;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MnlVL9ys(JLjava/lang/Object;)V

    return-void
.end method

.method public onXrHostActivityReady(JLcom/sec/terrace/browser/vr/XrSessionCoordinator;Landroid/app/Activity;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MYcLNixb(JLjava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onXrSessionButtonTouched(JLcom/sec/terrace/browser/vr/XrSessionCoordinator;)V
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MMm$Osgv(JLjava/lang/Object;)V

    return-void
.end method
