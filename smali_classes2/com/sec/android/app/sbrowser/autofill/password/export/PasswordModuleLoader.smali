.class public interface abstract Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static get(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "com.sec.android.app.sbrowser.autofill.password.PasswordModuleLoaderImpl"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/modules/ModuleLoader;->getImpl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordModuleLoader;

    return-object p0
.end method


# virtual methods
.method public abstract getDataMigrationService()Lcom/sec/android/app/sbrowser/autofill/password/export/DataMigrationService;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getDataRemoveService()Lcom/sec/android/app/sbrowser/autofill/password/export/DataRemoveService;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getPasswordAutofillHook()Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordAutofillHook;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getPasswordDifferenceChecker()Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordDifferenceChecker;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getPasswordStore()Lcom/sec/android/app/sbrowser/autofill/password/export/PasswordStore;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
