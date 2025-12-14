.class interface abstract Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;)V
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public fillMatchingLogins(Ljava/lang/String;Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;)V
    .locals 0
    .param p2    # Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public abstract removeLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;)V
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$RemoveLogin_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract updateLogin(Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;)V
    .param p1    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$UpdateLogin_Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
