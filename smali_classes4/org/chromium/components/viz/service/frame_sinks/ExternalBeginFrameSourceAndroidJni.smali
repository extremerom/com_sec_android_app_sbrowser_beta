.class Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroidJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid$Natives;


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

.method public static get()Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroidJni;

    invoke-direct {v0}, Lorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroidJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onVSync(JLorg/chromium/components/viz/service/frame_sinks/ExternalBeginFrameSourceAndroid;JJ)V
    .locals 0

    invoke-static/range {p1 .. p7}, LJ/N;->Mhc_M_H$(JLjava/lang/Object;JJ)V

    return-void
.end method
