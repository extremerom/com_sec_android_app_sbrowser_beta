.class public final synthetic Lcom/sec/android/app/sbrowser/autofill/password/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/autofill/password/a;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/password/a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/autofill/password/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAllLogins_Response;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->b(Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAllLogins_Response;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAutofillableLogins_Response;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;->a(Lcom/sec/android/app/sbrowser/autofill/password/NativePasswordStore;Lcom/sec/terrace/services/autofill/password/mojom/TerraceNativePasswordStore$GetAutofillableLogins_Response;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/a;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration$NameAndPasswordMigrationListener;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;->a(Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration;Lcom/sec/android/app/sbrowser/autofill/password/NameAndPasswordMigration$NameAndPasswordMigrationListener;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/password/DataRemoveServiceImpl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/password/DataRemoveServiceImpl;->c(Lcom/sec/android/app/sbrowser/autofill/password/DataRemoveServiceImpl;Ljava/util/concurrent/CompletableFuture;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->c(Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
