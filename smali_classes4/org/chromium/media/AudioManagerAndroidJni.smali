.class Lorg/chromium/media/AudioManagerAndroidJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/media/AudioManagerAndroid$Natives;


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

.method public static get()Lorg/chromium/media/AudioManagerAndroid$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/media/AudioManagerAndroidJni;

    invoke-direct {v0}, Lorg/chromium/media/AudioManagerAndroidJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public setMute(JLorg/chromium/media/AudioManagerAndroid;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MCgftn_d(JLjava/lang/Object;Z)V

    return-void
.end method
