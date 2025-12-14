.class Lorg/chromium/device/geolocation/LocationProviderAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/device/geolocation/LocationProviderAdapter;->start(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/device/geolocation/LocationProviderAdapter;

.field final synthetic val$enableHighAccuracy:Z


# direct methods
.method public constructor <init>(Lorg/chromium/device/geolocation/LocationProviderAdapter;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/chromium/device/geolocation/LocationProviderAdapter$1;->this$0:Lorg/chromium/device/geolocation/LocationProviderAdapter;

    iput-boolean p2, p0, Lorg/chromium/device/geolocation/LocationProviderAdapter$1;->val$enableHighAccuracy:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/chromium/device/geolocation/LocationProviderAdapter$1;->this$0:Lorg/chromium/device/geolocation/LocationProviderAdapter;

    invoke-static {v0}, Lorg/chromium/device/geolocation/LocationProviderAdapter;->a(Lorg/chromium/device/geolocation/LocationProviderAdapter;)Lorg/chromium/device/geolocation/LocationProvider;

    move-result-object v0

    iget-boolean p0, p0, Lorg/chromium/device/geolocation/LocationProviderAdapter$1;->val$enableHighAccuracy:Z

    invoke-interface {v0, p0}, Lorg/chromium/device/geolocation/LocationProvider;->start(Z)V

    return-void
.end method
