.class Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessUrlMigrator$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->migrateUrlsIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$4;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$4;->lambda$onUrlUpdated$0(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$onUrlUpdated$0(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-static {p0, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->l(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;Landroid/graphics/Bitmap;)[B

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->updateUrl(ILjava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public onAborted()V
    .locals 0

    return-void
.end method

.method public onUrlUpdated(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$4;->this$0:Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;

    invoke-virtual {v0}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository;->getClient()Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/sbrowser/quickaccess/model/B;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/quickaccess/model/B;-><init>(Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessRepository$4;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3, v1}, Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessClient;->fetchIcon(Ljava/lang/String;Lcom/sec/android/app/sbrowser/quickaccess/model/QuickAccessDefaultIconUpdater$Listener;)V

    return-void
.end method
