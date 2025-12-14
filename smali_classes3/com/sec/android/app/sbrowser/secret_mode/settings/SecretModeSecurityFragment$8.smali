.class Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/AuthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->createPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$8;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthResult(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$8;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    iget-object v0, p1, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mPasswordSwitch:Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;

    invoke-static {p1, v0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->w(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;Lcom/sec/android/app/sbrowser/common/settings/SwitchPreferenceCustom;)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$8;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    iget-object p1, p1, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->mSettings:Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/app/sbrowser/common/secret_mode/SecretModeSettings;->setPasswordAuthEnabled(Z)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$8;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    invoke-static {p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->A(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$8;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->B(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V

    :cond_0
    return-void
.end method
