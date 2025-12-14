.class public Lcom/sec/android/app/sbrowser/customtabs/SCustomTabExternalNavigationDelegateImpl;
.super Lcom/sec/android/app/sbrowser/externalnav/ExternalNavigationDelegateImpl;
.source "SourceFile"


# instance fields
.field private final mClientPackageName:Ljava/lang/String;

.field private mCustomActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;Lcom/sec/terrace/Terrace;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/sbrowser/externalnav/ExternalNavigationDelegateImpl;-><init>(Landroid/app/Activity;Lcom/sec/terrace/Terrace;)V

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabExternalNavigationDelegateImpl;->mCustomActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabExternalNavigationDelegateImpl;->mClientPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isIntentForTrustedCallingApp(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/sec/android/app/sbrowser/common/function/Supplier<",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;>;)Z"
        }
    .end annotation

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabExternalNavigationDelegateImpl;->mClientPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabExternalNavigationDelegateImpl;->mClientPackageName:Ljava/lang/String;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->isPackageSpecializedHandler(Ljava/lang/String;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public maybeSetTargetPackage(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/common/function/Supplier;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/sec/android/app/sbrowser/common/function/Supplier<",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabExternalNavigationDelegateImpl;->mClientPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabExternalNavigationDelegateImpl;->mClientPackageName:Ljava/lang/String;

    invoke-interface {p2}, Lcom/sec/android/app/sbrowser/common/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-static {v0, p2}, Lcom/sec/android/app/sbrowser/externalnav/external_intents/ExternalNavigationHandler;->isPackageSpecializedHandler(Ljava/lang/String;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabExternalNavigationDelegateImpl;->mClientPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public shouldAvoidDisambiguationDialog(Landroid/content/Intent;)Z
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/common/utils/UrlUtils;->isAcceptedScheme(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public shouldDisableExternalIntentRequestsForUrl(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/SCustomTabExternalNavigationDelegateImpl;->mCustomActivity:Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;->shouldIgnoreExternalIntentHandlers(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
