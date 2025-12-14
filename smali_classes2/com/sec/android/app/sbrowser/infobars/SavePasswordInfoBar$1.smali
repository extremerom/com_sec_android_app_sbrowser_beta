.class Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBarLayout$Delegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public is3pEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->is3pEnabled()Z

    move-result p0

    return p0
.end method

.method public isBlocklistSupported()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isBlocklistSupported()Z

    move-result p0

    return p0
.end method

.method public isEasySigninActivated()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isActivated()Z

    move-result p0

    return p0
.end method

.method public isEasySigninMRTarget()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;->getInstance()Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/autofill/password/MRTargetChecker;->isEasySigninMRTarget()Z

    move-result p0

    return p0
.end method

.method public isEasySigninPackageEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isAppPackageEnabled()Z

    move-result p0

    return p0
.end method

.method public isEasySigninSupported()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isEasySigninSupported()Z

    move-result p0

    return p0
.end method

.method public isFPWebLoginEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->isFingerprintWebLoginEnabled()Z

    move-result p0

    return p0
.end method

.method public isFaceRegistered()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFaceRegistered()Z

    move-result p0

    return p0
.end method

.method public isFingerprintRegistered()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isFingerprintRegistered()Z

    move-result p0

    return p0
.end method

.method public isIntelligentWebLoginEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->isIntelligentWebLoginEnabled()Z

    move-result p0

    return p0
.end method

.method public isIrisRegistered()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisRegistered()Z

    move-result p0

    return p0
.end method

.method public isIrisSupported()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/utils/BioUtil;->isIrisSupported()Z

    move-result p0

    return p0
.end method

.method public isIrisWebLoginEnabled()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/autofill/password/WebLoginAuthenticator;->isIrisWebLoginEnabled()Z

    move-result p0

    return p0
.end method

.method public isPersonalDataSyncSet()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSet()Z

    move-result p0

    return p0
.end method

.method public isPersonalDataSyncSupported()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->isPersonalDataSyncSupported()Z

    move-result p0

    return p0
.end method

.method public isReplaceSecBrandAsGalaxy()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/device/DeviceSettings;->isReplaceSecBrandAsGalaxy()Z

    move-result p0

    return p0
.end method

.method public setPasswordAutofillType(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar$1;->this$0:Lcom/sec/android/app/sbrowser/infobars/SavePasswordInfoBar;

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/infobars/InfoBar;->getDelegate()Lcom/sec/terrace/browser/infobars/TerraceInfoBarDelegate;

    move-result-object p0

    check-cast p0, Lcom/sec/terrace/browser/infobars/password_manager/TerraceSavePasswordInfobarDelegate;

    invoke-virtual {p0, p1}, Lcom/sec/terrace/browser/infobars/password_manager/TerraceSavePasswordInfobarDelegate;->setPasswordAutofillType(I)V

    return-void
.end method

.method public shouldCompleteSignupToSamsungPass()Z
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->getInstance()Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/sbrowser/samsungpass/SamsungPass;->shouldCompleteSignup()Z

    move-result p0

    return p0
.end method
