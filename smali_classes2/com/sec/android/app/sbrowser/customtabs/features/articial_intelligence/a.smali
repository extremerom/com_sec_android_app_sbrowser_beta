.class public final synthetic Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/android/app/sbrowser/artificial_intelligence/common/SummaryPageController$Callback;
.implements Lcom/sec/android/app/sbrowser/authentication/Authenticator$Callback;
.implements LR5/d;
.implements Lorg/chromium/ui/permissions/PermissionCallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;ZI)V
    .locals 0

    iput p4, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->d:Ljava/lang/Object;

    iput-boolean p3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZLjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->b:Z

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->d:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/components/webauthn/Fido2GetCredentialsComparator;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->c:Ljava/lang/Object;

    check-cast v1, Lorg/chromium/components/webauthn/Fido2CredentialRequest;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->b:Z

    invoke-static {v1, p0, v0, p1}, Lorg/chromium/components/webauthn/Fido2CredentialRequest;->f(Lorg/chromium/components/webauthn/Fido2CredentialRequest;ZLorg/chromium/components/webauthn/Fido2GetCredentialsComparator;Ljava/lang/Exception;)V

    return-void
.end method

.method public onRequestPermissionsResult([Ljava/lang/String;[I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->c:Ljava/lang/Object;

    check-cast v0, Lorg/chromium/ui/base/SelectFileDialog;

    iget-boolean v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->b:Z

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->d:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/String;

    invoke-static {v0, v1, p0, p1, p2}, Lorg/chromium/ui/base/SelectFileDialog;->a(Lorg/chromium/ui/base/SelectFileDialog;Z[Ljava/lang/String;[Ljava/lang/String;[I)V

    return-void
.end method

.method public onResult(Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAutoSignin_Response;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->b:Z

    invoke-static {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->c(Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAutoSignin_Response;ZLjava/lang/String;Lcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V

    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->b:Z

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->d:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAccountChooser_Response;

    invoke-static {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;->a(Lcom/sec/android/app/sbrowser/password_manager/CredentialManager;Lcom/sec/terrace/services/credential_manager/mojom/TerraceCredentialManager$AuthenticateForAccountChooser_Response;ZLcom/sec/android/app/sbrowser/authentication/Authenticator$Result;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->d:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;

    iget-boolean p0, p0, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/a;->b:Z

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;->b(Lcom/sec/android/app/sbrowser/customtabs/features/articial_intelligence/CustomTabArticleDetector;Lcom/sec/android/app/sbrowser/artificial_intelligence/common/model/DetectArticleCallback;ZLjava/lang/Boolean;)V

    return-void
.end method
