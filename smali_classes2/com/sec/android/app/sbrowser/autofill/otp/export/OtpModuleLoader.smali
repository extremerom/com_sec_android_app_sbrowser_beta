.class public interface abstract Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpModuleLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static get(Landroid/content/Context;)Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpModuleLoader;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "com.sec.android.app.sbrowser.autofill.otp.OtpModuleLoaderImpl"

    invoke-static {p0, v0}, Lcom/sec/android/app/sbrowser/common/modules/ModuleLoader;->getImpl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpModuleLoader;

    return-object p0
.end method


# virtual methods
.method public abstract getOtpAutofillHook()Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpAutofillHook;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getOtpStore()Lcom/sec/android/app/sbrowser/autofill/otp/export/OtpStore;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
