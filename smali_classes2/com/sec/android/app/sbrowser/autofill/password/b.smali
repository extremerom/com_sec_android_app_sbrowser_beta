.class public final synthetic Lcom/sec/android/app/sbrowser/autofill/password/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;

.field public final synthetic c:Ljava/util/concurrent/CompletableFuture;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;I)V
    .locals 0

    iput p4, p0, Lcom/sec/android/app/sbrowser/autofill/password/b;->a:I

    iput-object p1, p0, Lcom/sec/android/app/sbrowser/autofill/password/b;->b:Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/password/b;->c:Ljava/util/concurrent/CompletableFuture;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/autofill/password/b;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/b;->d:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/password/b;->b:Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/b;->c:Ljava/util/concurrent/CompletableFuture;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->a(Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/password/b;->d:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/sec/android/app/sbrowser/autofill/password/b;->b:Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/password/b;->c:Ljava/util/concurrent/CompletableFuture;

    invoke-static {v1, p0, v0}, Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;->f(Lcom/sec/android/app/sbrowser/autofill/password/DataMigrationServiceImpl;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
