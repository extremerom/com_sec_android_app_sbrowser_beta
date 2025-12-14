.class Lcom/sec/android/app/sbrowser/webapp/WebappLaunchIntentDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static createCustomTabActivityIntent(Landroid/content/Context;Ljava/lang/String;ZZI)Landroid/content/Intent;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-class v1, Lcom/sec/android/app/sbrowser/customtabs/CustomTabActivity;

    const-string v2, "com.sec.android.app.sbrowser.beta.INTENT_ACTION_CUSTOM_TAB_FROM_WEBAPP"

    invoke-direct {v0, v2, p1, p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string p1, "com.android.browser.application_id"

    const-string v1, "com.sec.android.app.sbrowser.beta"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.support.customtabs.extra.SESSION"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string p0, "WebappLaunchIntentDispatcher"

    const-string p1, "This load is initiated by a user gesture."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;

    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;-><init>(ZZ)V

    invoke-static {}, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->getInstance()Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler;->onNewIntentWithRequestMetadata(Landroid/content/Intent;Lcom/sec/android/app/sbrowser/externalnav/IntentWithRequestMetadataHandler$RequestMetadata;)V

    :cond_0
    invoke-static {v0, p4}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->setTabId(Landroid/content/Intent;I)V

    invoke-static {v0}, Lcom/sec/android/app/sbrowser/externalnav/SBrowserIntentHandler;->addTrustedIntentExtras(Landroid/content/Intent;)V

    return-object v0
.end method
