.class public final synthetic Lcom/sec/android/app/sbrowser/autofill/password/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/sbrowser/autofill/password/d;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/password/d;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/d;->a:I

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/d;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/sec/android/app/sbrowser/autofill/password/MemoryBasedPasswordStore;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/MemoryBasedPasswordStore;->a(Lcom/sec/android/app/sbrowser/autofill/password/MemoryBasedPasswordStore;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p0, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;

    check-cast p1, Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;

    invoke-static {p0, p1}, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->b(Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;Lcom/sec/terrace/services/autofill/password/mojom/TerracePasswordForm;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
