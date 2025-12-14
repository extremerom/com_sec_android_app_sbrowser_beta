.class public final synthetic Lcom/sec/android/app/sbrowser/autofill/personal_data/c;
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

    iput p1, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/c;->a:I

    iput-object p2, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/c;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/c;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/c;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/c;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CompletableFuture;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;->e(Ljava/util/concurrent/CompletableFuture;Ljava/util/concurrent/CompletableFuture;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/c;->b:Ljava/lang/Object;

    check-cast v0, Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/c;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;->c(Lcom/sec/android/app/sbrowser/autofill/personal_data/DataMigrationService;Ljava/lang/Runnable;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/c;->b:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/J;

    iget-object p0, p0, Lcom/sec/android/app/sbrowser/autofill/personal_data/c;->c:Ljava/lang/Object;

    check-cast p0, Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;

    invoke-static {v0, p0}, Lcom/sec/android/app/sbrowser/autofill/personal_data/CardUnmaskDialogFragment;->k(Landroidx/fragment/app/J;Lcom/sec/android/app/sbrowser/tab_manager/TabManagerEventListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
