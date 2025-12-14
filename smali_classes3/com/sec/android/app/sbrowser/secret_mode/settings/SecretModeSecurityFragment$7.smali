.class Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->showSecretModeInfoDialog()V
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

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$7;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {}, Lcom/sec/android/app/sbrowser/common/secret_mode/RecordUserAction;->recordDisableUsePasswordClickFromSettings()V

    iget-object p2, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$7;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    invoke-static {p2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->p(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$7;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    invoke-static {p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->o(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;)V

    return-void
.end method
