.class Lorg/chromium/installedapp/mojom/InstalledAppProvider_Internal;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/installedapp/mojom/InstalledAppProvider_Internal$InstalledAppProviderFilterInstalledAppsResponseParamsProxyToResponder;,
        Lorg/chromium/installedapp/mojom/InstalledAppProvider_Internal$InstalledAppProviderFilterInstalledAppsResponseParamsForwardToCallback;,
        Lorg/chromium/installedapp/mojom/InstalledAppProvider_Internal$InstalledAppProviderFilterInstalledAppsResponseParams;,
        Lorg/chromium/installedapp/mojom/InstalledAppProvider_Internal$InstalledAppProviderFilterInstalledAppsParams;,
        Lorg/chromium/installedapp/mojom/InstalledAppProvider_Internal$Stub;,
        Lorg/chromium/installedapp/mojom/InstalledAppProvider_Internal$Proxy;
    }
.end annotation


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/chromium/mojo/bindings/Interface$Manager<",
            "Lorg/chromium/installedapp/mojom/InstalledAppProvider;",
            "Lorg/chromium/installedapp/mojom/InstalledAppProvider$Proxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/chromium/installedapp/mojom/InstalledAppProvider_Internal$1;

    invoke-direct {v0}, Lorg/chromium/installedapp/mojom/InstalledAppProvider_Internal$1;-><init>()V

    sput-object v0, Lorg/chromium/installedapp/mojom/InstalledAppProvider_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method
