.class public final synthetic Lcom/sec/android/app/sbrowser/autofill/password/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$AddLogin_Response;
.implements Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$FillMatchingLogins_Response;
.implements Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/password/g;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/password/g;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/autofill/password/g;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/g;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/password/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    invoke-static {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->d(Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Ljava/util/concurrent/CompletableFuture;Z)V

    return-void
.end method

.method public call([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/g;->c:Ljava/lang/Object;

    check-cast v0, [Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/password/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;

    invoke-static {v1, p0, v0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->a(Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)V

    return-void
.end method

.method public call([Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/g;->c:Ljava/lang/Object;

    check-cast v0, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/password/g;->a:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;

    invoke-static {v1, p0, v0, p1, p2}, Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;->b(Lcom/sec/android/app/sbrowser/autofill/password/PasswordStoreImpl;Lcom/sec/terrace/services/autofill/password/mojom/TerraceFormDigest;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordStore$FillMatchingLogins_Response;[Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;Ljava/lang/String;)V

    return-void
.end method
