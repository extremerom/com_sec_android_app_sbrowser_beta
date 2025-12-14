.class Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImplJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl$Natives;


# annotations
.annotation build Lorg/jni_zero/CheckDiscard;
.end annotation

.annotation build Lorg/jni_zero/internal/NullUnmarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImplJni;

    invoke-direct {v0}, Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImplJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public cancelAllBitmapRequests(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->M$$iPM7t(J)V

    return-void
.end method

.method public cancelBitmapRequest(JI)Z
    .locals 0

    invoke-static {p1, p2, p3}, LJ/N;->MNwIEnLr(JI)Z

    move-result p0

    return p0
.end method

.method public destroy(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MIRVkfIx(J)V

    return-void
.end method

.method public initialize(Lorg/chromium/components/paintpreview/player/PlayerCompositorDelegateImpl;JJLjava/lang/String;Ljava/lang/String;ZLorg/chromium/base/Callback;Z)J
    .locals 0

    invoke-static/range {p1 .. p10}, LJ/N;->MP_1CaX6(Ljava/lang/Object;JJLjava/lang/Object;Ljava/lang/Object;ZLjava/lang/Object;Z)J

    move-result-wide p0

    return-wide p0
.end method

.method public onClick(JLorg/chromium/base/UnguessableToken;II)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MqJDIMXF(JLjava/lang/Object;II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public requestBitmap(JLorg/chromium/base/UnguessableToken;Lorg/chromium/base/Callback;Ljava/lang/Runnable;FIIII)I
    .locals 0

    invoke-static/range {p1 .. p10}, LJ/N;->MiIDqW7F(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;FIIII)I

    move-result p0

    return p0
.end method
