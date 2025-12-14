.class Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/auth/AuthCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->enableBiometrics(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

.field final synthetic val$authType:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$12;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    iput p2, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$12;->val$authType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthResult(Z)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$12;->val$authType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$12;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->t(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$12;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->v(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;Z)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$12;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->s(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;Z)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x10

    if-ne v0, v1, :cond_3

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$12;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->u(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;Z)V

    :cond_3
    :goto_0
    return-void
.end method
