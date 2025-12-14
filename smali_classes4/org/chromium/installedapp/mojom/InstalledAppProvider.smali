.class public interface abstract Lorg/chromium/installedapp/mojom/InstalledAppProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/installedapp/mojom/InstalledAppProvider$FilterInstalledApps_Response;,
        Lorg/chromium/installedapp/mojom/InstalledAppProvider$Proxy;
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

    sget-object v0, Lorg/chromium/installedapp/mojom/InstalledAppProvider_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/installedapp/mojom/InstalledAppProvider;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract filterInstalledApps([Lorg/chromium/installedapp/mojom/RelatedApplication;Lorg/chromium/url/mojom/Url;ZLorg/chromium/installedapp/mojom/InstalledAppProvider$FilterInstalledApps_Response;)V
.end method
