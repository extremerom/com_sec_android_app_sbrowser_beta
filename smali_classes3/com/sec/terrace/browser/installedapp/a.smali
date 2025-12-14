.class public final synthetic Lcom/sec/terrace/browser/installedapp/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lorg/chromium/installedapp/mojom/InstalledAppProvider$FilterInstalledApps_Response;

.field public final synthetic b:[Lorg/chromium/installedapp/mojom/RelatedApplication;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/installedapp/mojom/InstalledAppProvider$FilterInstalledApps_Response;[Lorg/chromium/installedapp/mojom/RelatedApplication;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/terrace/browser/installedapp/a;->a:Lorg/chromium/installedapp/mojom/InstalledAppProvider$FilterInstalledApps_Response;

    iput-object p2, p0, Lcom/sec/terrace/browser/installedapp/a;->b:[Lorg/chromium/installedapp/mojom/RelatedApplication;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/terrace/browser/installedapp/a;->a:Lorg/chromium/installedapp/mojom/InstalledAppProvider$FilterInstalledApps_Response;

    iget-object p0, p0, Lcom/sec/terrace/browser/installedapp/a;->b:[Lorg/chromium/installedapp/mojom/RelatedApplication;

    invoke-static {v0, p0}, Lcom/sec/terrace/browser/installedapp/TinInstalledAppProviderImpl$1;->f(Lorg/chromium/installedapp/mojom/InstalledAppProvider$FilterInstalledApps_Response;[Lorg/chromium/installedapp/mojom/RelatedApplication;)V

    return-void
.end method
