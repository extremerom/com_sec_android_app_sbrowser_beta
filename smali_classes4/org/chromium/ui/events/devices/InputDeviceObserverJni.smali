.class Lorg/chromium/ui/events/devices/InputDeviceObserverJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/ui/events/devices/InputDeviceObserver$Natives;


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

.method public static get()Lorg/chromium/ui/events/devices/InputDeviceObserver$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/ui/events/devices/InputDeviceObserverJni;

    invoke-direct {v0}, Lorg/chromium/ui/events/devices/InputDeviceObserverJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public inputConfigurationChanged(Lorg/chromium/ui/events/devices/InputDeviceObserver;)V
    .locals 0

    invoke-static {p1}, LJ/N;->MGCvz8lp(Ljava/lang/Object;)V

    return-void
.end method
