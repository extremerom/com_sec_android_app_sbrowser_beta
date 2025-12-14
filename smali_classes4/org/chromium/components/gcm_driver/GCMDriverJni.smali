.class Lorg/chromium/components/gcm_driver/GCMDriverJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/components/gcm_driver/GCMDriver$Natives;


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

.method public static get()Lorg/chromium/components/gcm_driver/GCMDriver$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/components/gcm_driver/GCMDriverJni;

    invoke-direct {v0}, Lorg/chromium/components/gcm_driver/GCMDriverJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onMessageReceived(JLorg/chromium/components/gcm_driver/GCMDriver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[Ljava/lang/String;)V
    .locals 0

    invoke-static/range {p1 .. p9}, LJ/N;->M6eL4wmM(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public onRegisterFinished(JLorg/chromium/components/gcm_driver/GCMDriver;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-static/range {p1 .. p6}, LJ/N;->MOEO6cdX(JLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method

.method public onUnregisterFinished(JLorg/chromium/components/gcm_driver/GCMDriver;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p5}, LJ/N;->MDziew73(JLjava/lang/Object;Ljava/lang/Object;Z)V

    return-void
.end method
