.class Lorg/chromium/base/JavaHandlerThreadJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/base/JavaHandlerThread$Natives;


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

.method public static get()Lorg/chromium/base/JavaHandlerThread$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/base/JavaHandlerThreadJni;

    invoke-direct {v0}, Lorg/chromium/base/JavaHandlerThreadJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public initializeThread(JJ)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, LJ/N;->MJcct7gJ(JJ)V

    return-void
.end method

.method public onLooperStopped(J)V
    .locals 0

    invoke-static {p1, p2}, LJ/N;->MYwg$x8E(J)V

    return-void
.end method
