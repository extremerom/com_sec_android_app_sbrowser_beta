.class Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->showTurnOffDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

.field final synthetic val$offAuthType:I

.field final synthetic val$onAuthType:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$5;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    iput p2, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$5;->val$onAuthType:I

    iput p3, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$5;->val$offAuthType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$5;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    iget p2, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$5;->val$onAuthType:I

    invoke-static {p1, p2}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->z(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;I)V

    iget-object p1, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$5;->this$0:Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;

    iget p0, p0, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment$5;->val$offAuthType:I

    invoke-static {p1, p0}, Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;->y(Lcom/sec/android/app/sbrowser/secret_mode/settings/SecretModeSecurityFragment;I)V

    return-void
.end method
