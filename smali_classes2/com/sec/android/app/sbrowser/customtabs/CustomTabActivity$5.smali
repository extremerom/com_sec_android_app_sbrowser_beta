.class Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getCustomTabContentHandler()Lcom/sec/android/app/sbrowser/customtabs/CustomTabContentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$5;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSession()LH/y;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$5;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mIntentDataProvider:Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;

    invoke-virtual {p0}, Lcom/sec/terrace/browser/browserservices/intents/TerraceBrowserServicesIntentDataProvider;->getSession()LH/y;

    move-result-object p0

    return-object p0
.end method

.method public updateCustomButton(ILandroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$5;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->updateCustomButton(ILandroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public updateRemoteViews(Landroid/widget/RemoteViews;[ILandroid/app/PendingIntent;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$5;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->updateRemoteView(Landroid/widget/RemoteViews;[ILandroid/app/PendingIntent;)Z

    move-result p0

    return p0
.end method
