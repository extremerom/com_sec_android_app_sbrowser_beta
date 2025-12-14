.class Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->createTrustedWebActivityUi()Lcom/sec/android/app/sbrowser/customtabs/TrustedWebActivityCoordinator;
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientPackageName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->getInstance()Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->C(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;)LH/y;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabsConnection;->getClientPackageNameForSession(LH/y;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTwaDisplayMode()LI/f;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->getIntentDataProvider()Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabIntentDataProvider;->getTwaDisplayMode()LI/f;

    move-result-object p0

    return-object p0
.end method

.method public hideBrowserControls()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->hideBrowserControls()V

    return-void
.end method

.method public showBrowserControls()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity$2;->this$0:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/BaseCustomTabActivity;->mRootUiCoordinator:Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabRootUiCoordinator;->showBrowserControls()V

    return-void
.end method
