.class public Lcom/sec/android/app/sbrowser/instantapps/SBrowserInstantAppsHandler;
.super Lcom/sec/terrace/browser/instantapps/TerraceInstantAppsHandler;
.source "SourceFile"


# static fields
.field private static final SUPERVISOR_START_ACTIONS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.google.android.instantapps.nmr1.INSTALL"

    const-string v1, "com.google.android.instantapps.nmr1.VIEW"

    const-string v2, "com.google.android.instantapps.START"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/sbrowser/instantapps/SBrowserInstantAppsHandler;->SUPERVISOR_START_ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public static isIntentToInstantApp(Landroid/content/Intent;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.instantapps.supervisor"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/sec/android/app/sbrowser/instantapps/SBrowserInstantAppsHandler;->SUPERVISOR_START_ACTIONS:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v0, v4

    invoke-static {v5, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method
