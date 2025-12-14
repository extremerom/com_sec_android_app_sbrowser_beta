.class Lorg/chromium/device/geolocation/LocationProviderAdapterJni;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/device/geolocation/LocationProviderAdapter$Natives;


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

.method public static get()Lorg/chromium/device/geolocation/LocationProviderAdapter$Natives;
    .locals 1

    invoke-static {}, LG5/m;->a()V

    new-instance v0, Lorg/chromium/device/geolocation/LocationProviderAdapterJni;

    invoke-direct {v0}, Lorg/chromium/device/geolocation/LocationProviderAdapterJni;-><init>()V

    return-object v0
.end method


# virtual methods
.method public newErrorAvailable(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, LJ/N;->M8Iz7Ptw(Ljava/lang/Object;)V

    return-void
.end method

.method public newLocationAvailable(DDDZDZDZDZD)V
    .locals 0

    invoke-static/range {p1 .. p18}, LJ/N;->MvJnRjJi(DDDZDZDZDZD)V

    return-void
.end method
