.class Lorg/chromium/device/geolocation/LocationProviderGmsCore$1;
.super LL5/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/device/geolocation/LocationProviderGmsCore;->start(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/device/geolocation/LocationProviderGmsCore;


# direct methods
.method public constructor <init>(Lorg/chromium/device/geolocation/LocationProviderGmsCore;)V
    .locals 0

    iput-object p1, p0, Lorg/chromium/device/geolocation/LocationProviderGmsCore$1;->this$0:Lorg/chromium/device/geolocation/LocationProviderGmsCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationResult(Lcom/google/android/gms/location/LocationResult;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p1, Lcom/google/android/gms/location/LocationResult;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/Location;

    :goto_0
    if-eqz p0, :cond_2

    invoke-static {p0}, Lorg/chromium/device/geolocation/LocationProviderAdapter;->onNewLocationAvailable(Landroid/location/Location;)V

    :cond_2
    return-void
.end method
