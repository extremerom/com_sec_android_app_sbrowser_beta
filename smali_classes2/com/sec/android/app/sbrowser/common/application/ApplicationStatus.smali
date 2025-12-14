.class public Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sApplication:Landroid/app/Application;

.field private static sContext:Landroid/content/Context;


# direct methods
.method public static getApplication()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->sApplication:Landroid/app/Application;

    return-object v0
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/sec/terrace/TerraceApplicationStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->sContext:Landroid/content/Context;

    :cond_0
    return-object v0
.end method

.method public static setApplication(Landroid/app/Application;)V
    .locals 0
    .param p0    # Landroid/app/Application;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sput-object p0, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->sApplication:Landroid/app/Application;

    return-void
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/sec/android/app/sbrowser/common/application/ApplicationStatus;->sContext:Landroid/content/Context;

    return-void
.end method
