.class public Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lorg/chromium/build/annotations/NullMarked;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sBindToCallerCheck:Z

.field private static sIgnoreVisibilityForImportance:Z

.field private static sInitialized:Z

.field private static sIsSandboxedServiceExternal:Z

.field private static sLibraryProcessType:I

.field private static sPackageNameForPrivilegedService:Ljava/lang/String;

.field private static sPackageNameForSandboxedService:Ljava/lang/String;

.field private static sPrivilegedServicesName:Ljava/lang/String;

.field private static sSandboxedServicesName:Ljava/lang/String;


# direct methods
.method public static addIntentExtras(Landroid/os/Bundle;)V
    .locals 2

    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->sInitialized:Z

    if-eqz v0, :cond_0

    const-string v0, "org.chromium.content.common.child_service_params.library_process_type"

    sget v1, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->sLibraryProcessType:I

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static getBindToCallerCheck()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->sInitialized:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->sBindToCallerCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getIgnoreVisibilityForImportance()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->sInitialized:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->sIgnoreVisibilityForImportance:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getIsSandboxedServiceExternal()Z
    .locals 1

    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->sInitialized:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->sIsSandboxedServiceExternal:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getLibraryProcessType(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "org.chromium.content.common.child_service_params.library_process_type"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getPackageNameForPrivilegedService()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->sPackageNameForPrivilegedService:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getPackageNameForSandboxedService()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->sPackageNameForSandboxedService:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getPrivilegedServicesName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->sPrivilegedServicesName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "org.chromium.content.app.PrivilegedProcessService"

    :goto_0
    return-object v0
.end method

.method public static getSandboxedServicesName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/chromium/content/browser/ChildProcessCreationParamsImpl;->sSandboxedServicesName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "org.chromium.content.app.SandboxedProcessService"

    :goto_0
    return-object v0
.end method
